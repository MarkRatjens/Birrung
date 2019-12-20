import UIKit

open class ScrollView: UIScrollView {
	public weak var navigator: Navigator? { didSet { navigate() } }
}

extension ScrollView: Component {
	
	@objc open func construct() { for c in components { c.construct() } }
	@objc open func associate() { for c in components { c.associate() } }
	@objc open func arrange() { for c in components { c.arrange() } }
	@objc open func craft() { for c in components { c.craft() } }
	@objc open func navigate() { for c in components { c.navigator = navigator } }

	@objc open func show() {}

	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}


extension ScrollView: Bed {
	@objc open func embedding() { for b in beds { b.embedding() } }
	public var beds: [Bed] { return subviews.compactMap { $0 as? Bed } }
}
