import UIKit

open class GridViewCell: UICollectionViewCell {
	open func assembling() {
		constructing()
		associating()
		arranging()
		crafting()
	}
	
	public weak var navigator: Navigator?
}

extension GridViewCell: Component {
	
	@objc open func constructing() { for c in components { c.constructing() } }
	@objc open func associating() { for c in components { c.associating() } }
	@objc open func arranging() { for c in components { c.arranging() } }
	@objc open func crafting() { for c in components { c.crafting() } }
	@objc open func showing() { assembling() }
	@objc open func navigating() { for c in components { c.navigator = navigator } }

	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}


extension GridViewCell: Bed {
	@objc open func embedding() { for b in beds { b.embedding() } }
	public var beds: [Bed] { return subviews.compactMap { $0 as? Bed } }
}
