import UIKit

open class SegmentedControl: UISegmentedControl {

	@objc open func respond(_ sender: UISegmentedControl) {}

	public func setDefault() { selectedSegmentIndex = 0 }

	public weak var navigator: Navigator?
}


extension SegmentedControl: Component {
	
	@objc open func construct() { addTarget(self, action: #selector(respond(_:)), for: .valueChanged) }
	
	@objc open func associate() {}
	@objc open func arrange() {}
	
	@objc open func craft() {
		layer.cornerRadius = 2
		layer.borderWidth = 1
	}

	@objc open func navigate() {}
	@objc open func show() {}
		
	public var components: [Component] { return [] }
}
