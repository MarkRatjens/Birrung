import UIKit

open class TextField: UITextField {
	public override init(frame: CGRect) {
		super.init(frame: frame)
		delegate()
		style()
	}

	open func delegate() { delegate = self }

	open func committing() { if let t = text, let c = completeComit { c(t) } }
	open func cancelling() { if let t = text, let c = completeCancel { c(t) } }
	
	public var completeComit: ((String) -> Void)?
	public var completeCancel: ((String) -> Void)?
	
	open func style() {
		borderStyle = .roundedRect
	}

	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}


extension TextField: UITextFieldDelegate {
	open func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	open func textFieldDidEndEditing(_ textField: UITextField) { cancelling() }
	
	open func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
		print(textField)
		print(self)
		print(self == textField)
		switch reason {
			case .committed: committing()
			case .cancelled: cancelling()
			default: break
		}
	}
}
