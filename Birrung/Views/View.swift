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
	
	open func hide() { animate {
		self.isHidden = true
		self.layoutIfNeeded()
	}}
	
	open func reveal() { animate {
		self.isHidden = false
		self.layoutIfNeeded()
	}}

	open func animate(_ animations: @escaping () -> Void) {
		UIView.animate(
			withDuration: 0.4,
			delay: 0.0,
			options: [.curveEaseOut],
			animations: animations
		)
	}
		
	open func segue(from navigator: Navigator) {}

	public weak var navigator: Navigator? { didSet { navigating() } }
}


extension View: Component {

	@objc open func constructing() { for c in components { c.constructing() } }
	@objc open func associating() { for c in components { c.associating() } }
	@objc open func arranging() { for c in components { c.arranging() } }
	@objc open func crafting() { for c in components { c.crafting() } }
	@objc open func navigating() { for c in components { c.navigator = navigator } }

	@objc open func showing() {}

	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}


extension View: Bed {
	@objc open func embedding() { for b in beds { b.embedding() } }
	public var beds: [Bed] { return subviews.compactMap { $0 as? Bed } }
}
