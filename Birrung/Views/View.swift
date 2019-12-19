import UIKit

open class View: UIView {

	public func doNothingOnTap() {
		let gr = UITapGestureRecognizer(target: self, action: #selector(self.doNothing(_:)))
		addGestureRecognizer(gr)
	}

	@objc public func doNothing(_ sender: Any? = nil) {}

	public func embed(controller: ViewController, in container: View) {
		controller.navigator = navigator
		controller.view.frame = container.bounds
		container.addSubview(controller.view)
	}
	
	public weak var navigator: Navigator? { didSet { navigate() } }
}


extension View: Component {

	@objc open func construct() { for c in components { c.construct() } }
	@objc open func associate() { for c in components { c.associate() } }
	@objc open func arrange() { for c in components { c.arrange() } }
	@objc open func craft() { for c in components { c.craft() } }
	@objc open func navigate() { for c in components { c.navigator = navigator } }

	@objc open func show() {}

	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}
