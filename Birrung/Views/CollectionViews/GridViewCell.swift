import UIKit

open class GridViewCell: UICollectionViewCell {
	open func assemble() {
		construct()
		associate()
		arrange()
		craft()
	}
	
	public weak var navigator: Navigator?
}

extension GridViewCell: Component {
	
	@objc open func construct() { for c in components { c.construct() } }
	@objc open func associate() { for c in components { c.associate() } }
	@objc open func arrange() { for c in components { c.arrange() } }
	@objc open func craft() { for c in components { c.craft() } }
	@objc open func show() { assemble() }
	@objc open func navigate() { for c in components { c.navigator = navigator } }

	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}
