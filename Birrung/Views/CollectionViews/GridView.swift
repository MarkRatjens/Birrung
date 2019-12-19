import UIKit

open class GridView: UICollectionView {
	public weak var navigator: Navigator?
}

extension GridView: Component {

	@objc open func construct() {}
	@objc open func associate() {}
	@objc open func arrange() {}
	@objc open func craft() { backgroundColor = .clear }
	@objc open func navigate() {}
	open func show() {}
		
	public var components: [Component] { return [] }
}
