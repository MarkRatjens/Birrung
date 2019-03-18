import UIKit

open class TextField: UITextField {
	public override init(frame: CGRect) {
		super.init(frame: frame)
		style()
	}
	
	open func style() {
		borderStyle = .roundedRect
	}

	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
