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
		if let c = completeTouch { c(self) }
	}
	
	public var completeTouch: ((Button) -> Void)?
	
	open func style() {
		if let t = theme {
			titleLabel?.textColor = t.text
			setTitleColor(t.text, for: .normal)
		}
		titleLabel?.font =  UIFont.systemFont(ofSize: 12)
	}

	open func arrange() {}
	open func fill() {}
	
	public var theme: Theme?

	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
