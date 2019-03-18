import UIKit

open class TextEntryCell: TableViewCell {
	public var title = Label()
	public var detail = TextField()

	open override func construct() {
		super.construct()
		contentView.addSubview(stack)
		stack.addArrangedSubview(title)
		stack.addArrangedSubview(detail)
		detail.delegate = self
	}
	
	open override func arrange() {
		super.arrange()
		stack.spacing = 4
		stack.fit(in: contentView, pad: [12, 8])
	}

	open func withdraw(_ text: String?) {}

	var stack = VerticalStack()
}


extension TextEntryCell: UITextFieldDelegate {
	open func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	open func textFieldDidEndEditing(_ textField: UITextField) {
		withdraw(textField.text)
	}
}
