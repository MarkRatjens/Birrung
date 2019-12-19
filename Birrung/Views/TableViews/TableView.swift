import UIKit

open class TableView: UITableView {
	public weak var navigator: Navigator?
}

extension TableView: Component {
	@objc open func construct() {}
	@objc open func associate() {}
	@objc open func arrange() {}
	@objc open func craft() { backgroundColor = .clear }
	@objc open func navigate() {}
	@objc open func show() {}
		
	public var components: [Component] { return [] }
}
