import UIKit

open class ScrollView: UIScrollView {
	public weak var navigator: Navigator? { didSet { navigating() } }
}

extension ScrollView: Component {
	
	@objc open func constructing() { for c in components { c.constructing() } }
	@objc open func associating() { for c in components { c.associating() } }
	@objc open func arranging() { for c in components { c.arranging() } }
	@objc open func crafting() { for c in components { c.crafting() } }
	@objc open func navigating() { for c in components { c.navigator = navigator } }

	@objc open func showing() {}

	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}


extension ScrollView: Bed {
	@objc open func embedding() { for b in beds { b.embedding() } }
	public var beds: [Bed] { return subviews.compactMap { $0 as? Bed } }
}
