import UIKit

open class Label: UILabel {
	public weak var navigator: Navigator?
}

extension Label: Component {
	
	@objc open func constructing() {}
	@objc open func associating() {}
	@objc open func arranging() {}
	@objc open func crafting() { numberOfLines = 0 }
	@objc open func showing() {}
	@objc open func navigating() {}

	public var components: [Component] { return [] }
}
 
