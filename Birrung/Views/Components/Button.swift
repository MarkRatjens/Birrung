import UIKit

open class Button: UIButton {
	
	@objc func respondToTouch(_ sender: CheckBox) {
		isSelected = !isSelected
		if let c = completeTouch { c(self) }
	}
	
	public var completeTouch: ((Button) -> Void)?

	public weak var navigator: Navigator?

	public var theme: Theme?
}

extension Button: Component {
	
	@objc open func construct() {
		addTarget(self, action: #selector(respondToTouch(_:)), for: .touchUpInside)
	}
	
	@objc open func craft() {
		if let t = theme {
			titleLabel?.textColor = t.text
			setTitleColor(t.text, for: .normal)
		}
		titleLabel?.font =  UIFont.systemFont(ofSize: 12)
	}

	@objc open func associate() {}
	@objc open func arrange() {}
	@objc open func navigate() {}
	@objc open func show() {}
	
	public var components: [Component] { return [] }
}
