import UIKit

open class StackView: UIStackView {
	public weak var navigator: Navigator? { didSet { navigate() } }
}
	
extension StackView: Component {
	@objc open func construct() { for c in components { c.construct() } }
	@objc open func associate() { for c in components { c.associate() } }
	@objc open func craft() { for c in components { c.craft() } }
	@objc open func navigate() { for c in components { c.navigator = navigator } }

	@objc open func arrange() {
		for c in components { c.arrange() }
		alignment = .fill
		spacing = 0
	}

	@objc open func show() {}

	public var components: [Component] { return subviews.compactMap { $0 as? Component } }
}




open class HorizontalStack: StackView {
	open override func arrange() {
		super.arrange()
		axis = .horizontal
		distribution = .equalCentering
	}
}




open class VerticalStack: StackView {
	open override func arrange() {
		super.arrange()
		axis = .vertical
		distribution = .fill
	}
}
