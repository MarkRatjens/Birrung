import UIKit

open class Button: UIButton {
	public override init(frame: CGRect) {
		super.init(frame: frame)
		construct()
		arrange()
		style()
		fill()
	}
	
	open func style() {}
	open func construct() {}
	open func arrange() {}
	open func fill() {}
	
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
