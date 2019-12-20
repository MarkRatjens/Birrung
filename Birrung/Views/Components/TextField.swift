import UIKit

open class TextField: UITextField {

	open func committing() { if let t = text, let c = completeComit { c(t) } }
	open func cancelling() { if let t = text, let c = completeCancel { c(t) } }
	
	public var completeComit: ((String) -> Void)?
	public var completeCancel: ((String) -> Void)?
	
	public func addKeyboardBar(){
		let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
		doneToolbar.barStyle = .blackTranslucent
		
		let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
		let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
		
		let items = [flexSpace, done]
		doneToolbar.items = items
		doneToolbar.sizeToFit()
		
		inputAccessoryView = doneToolbar
	}
	
	@objc func doneButtonAction(){ resignFirstResponder() }

	public weak var navigator: Navigator?
}


extension TextField: Component {

	@objc open func constructing() {}
	@objc open func associating() { delegate = self }
	@objc open func arranging() {}
	@objc open func crafting() { borderStyle = .roundedRect }
	@objc open func showing() {}
	@objc open func navigating() {}

	public var components: [Component] { return [] }
}


extension TextField: UITextFieldDelegate {
	@objc open func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	@objc open func textFieldDidEndEditing(_ textField: UITextField) { cancelling() }
	
	@objc open func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
		switch reason {
			case .committed: committing()
			case .cancelled: cancelling()
			default: break
		}
	}
}
