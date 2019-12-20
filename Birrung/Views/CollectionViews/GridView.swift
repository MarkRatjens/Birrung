import UIKit

open class GridView: UICollectionView {
	public weak var navigator: Navigator?
}

extension GridView: Component {

	@objc open func constructing() {}
	@objc open func associating() {}
	@objc open func arranging() {}
	@objc open func crafting() { backgroundColor = .clear }
	@objc open func navigating() {}
	open func showing() {}
		
	public var components: [Component] { return [] }
}
