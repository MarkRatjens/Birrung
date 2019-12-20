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
	
	@objc open func constructing() {
		addTarget(self, action: #selector(respondToTouch(_:)), for: .touchUpInside)
	}
	
	@objc open func crafting() {
		if let t = theme {
			titleLabel?.textColor = t.text
			setTitleColor(t.text, for: .normal)
		}
		titleLabel?.font =  UIFont.systemFont(ofSize: 12)
	}

	@objc open func associating() {}
	@objc open func arranging() {}
	@objc open func navigating() {}
	@objc open func showing() {}
	
	public var components: [Component] { return [] }
}
