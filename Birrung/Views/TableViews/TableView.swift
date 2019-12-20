import UIKit

open class TableView: UITableView {
	public weak var navigator: Navigator?
}

extension TableView: Component {
	@objc open func constructing() {}
	@objc open func associating() {}
	@objc open func arranging() {}
	@objc open func crafting() { backgroundColor = .clear }
	@objc open func navigating() {}
	@objc open func showing() {}
		
	public var components: [Component] { return [] }
}
