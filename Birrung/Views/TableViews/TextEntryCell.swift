import UIKit

open class TextEntryCell: TableViewCell {
	public var title = Label()
	public var detail = TextField()

	open override func construct() {
		contentView.addSubview(stack)
		stack.addArrangedSubview(title)
		stack.addArrangedSubview(detail)
		detail.delegate = self
		super.construct()
	}
	
	open override func arrange() {
		super.arrange()
		stack.spacing = 4
		stack.fit(in: contentView, pad: [12, 8])
	}

	open func committing(_ text: String?) {}
	open func cancelling(_ text: String?) {}

	var stack = VerticalStack()
}


extension TextEntryCell: UITextFieldDelegate {
	open func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	open func textFieldDidEndEditing(_ textField: UITextField) {
		cancelling(textField.text)
	}
	
	open func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
		switch reason {
			case .committed: committing(textField.text)
			case .cancelled: cancelling(textField.text)
			default: break
		}
	}
}
