import UIKit

open class TableViewCell: UITableViewCell {
	
	open func assembling() {
		constructing()
		associating()
		arranging()
		crafting()
		embedding()
	}

	public func embed(controller: ViewController, in container: View) {
		controller.navigator = navigator
		controller.view.frame = container.bounds
		container.addSubview(controller.view)
	}

	open func segue(from navigator: Navigator) {}

	open var viewController: UIViewController? { return ((superview as? UITableView)?.delegate as? UIViewController) }	
	
	open func present(_ controller: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
		viewController?.present(controller, animated: true, completion: completion)
	}
	
	public weak var navigator: Navigator?
}

extension TableViewCell: Component {
	
	@objc open func constructing() { for c in components { c.constructing() } }
	@objc open func associating() { for c in components { c.associating() } }
	@objc open func arranging() { for c in components { c.arranging() } }

	@objc open func crafting() {
		for c in components { c.arranging() }
		selectionStyle = .none
	}
		
	@objc open func navigating() { for c in components { c.navigator = navigator } }
	@objc open func showing() { assembling() }
	
	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}


extension TableViewCell: Bed {
	@objc open func embedding() { for b in beds { b.embedding() } }
	public var beds: [Bed] { return subviews.compactMap { $0 as? Bed } }
}
