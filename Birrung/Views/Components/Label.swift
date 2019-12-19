import UIKit

open class Label: UILabel {
	public weak var navigator: Navigator?
}

extension Label: Component {
	
	@objc open func construct() {}
	@objc open func associate() {}
	@objc open func arrange() {}
	@objc open func craft() { numberOfLines = 0 }
	@objc open func show() {}
	@objc open func navigate() {}

	public var components: [Component] { return [] }
}
 
