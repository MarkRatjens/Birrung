import UIKit

open class StackView: UIStackView {
	public weak var navigator: Navigator? { didSet { navigating() } }
}
	
extension StackView: Component {
	@objc open func constructing() { for c in components { c.constructing() } }
	@objc open func associating() { for c in components { c.associating() } }
	@objc open func crafting() { for c in components { c.crafting() } }
	@objc open func navigating() { for c in components { c.navigator = navigator } }

	@objc open func arranging() {
		for c in components { c.arranging() }
		alignment = .fill
		spacing = 0
	}

	@objc open func showing() {}

	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}


extension StackView: Bed {
	@objc open func embedding() { for b in beds { b.embedding() } }
	public var beds: [Bed] { return subviews.compactMap { $0 as? Bed } }
}




open class HorizontalStack: StackView {
	open override func arranging() {
		super.arranging()
		axis = .horizontal
		distribution = .equalCentering
	}
}




open class VerticalStack: StackView {
	open override func arranging() {
		super.arranging()
		axis = .vertical
		distribution = .fill
	}
}
