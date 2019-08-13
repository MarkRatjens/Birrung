import UIKit

open class Button: UIButton {
	public override init(frame: CGRect) {
		super.init(frame: frame)
		construct()
		arrange()
		style()
		fill()
	}
	
	open  func construct() {
		addTarget(self, action: #selector(respondToTouch(_:)), for: .touchUpInside)
	}
	
	@objc func respondToTouch(_ sender: CheckBox) {
		isSelected = !isSelected
		if let c = completeTouch { c(isSelected) }
	}
	
	public var completeTouch: ((Bool) -> Void)?

	open func style() {}
	open func arrange() {}
	open func fill() {}
	
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
