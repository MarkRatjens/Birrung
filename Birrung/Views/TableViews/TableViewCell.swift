import UIKit

open class TableViewCell: UITableViewCell {
	
	open func assemble() {
		construct()
		associate()
		arrange()
		craft()
		embed()
	}

	public func embed(controller: ViewController, in container: View) {
		controller.navigator = navigator
		controller.view.frame = container.bounds
		container.addSubview(controller.view)
	}

	open func embed() {}
	open func segue(from navigator: Navigator) {}

	open var viewController: UIViewController? { return ((superview as? UITableView)?.delegate as? UIViewController) }	
	
	open func present(_ controller: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
		viewController?.present(controller, animated: true, completion: completion)
	}
	
	public weak var navigator: Navigator?
}

extension TableViewCell: Component {
	
	@objc open func construct() { for c in components { c.construct() } }
	@objc open func associate() { for c in components { c.associate() } }
	@objc open func arrange() { for c in components { c.arrange() } }

	@objc open func craft() {
		for c in components { c.arrange() }
		selectionStyle = .none
	}
		
	@objc open func navigate() { for c in components { c.navigator = navigator } }
	@objc open func show() { assemble() }
	
	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}
