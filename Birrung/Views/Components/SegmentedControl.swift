import UIKit

open class SegmentedControl: UISegmentedControl {

	@objc open func respond(_ sender: UISegmentedControl) {}

	public func setDefault() { selectedSegmentIndex = 0 }

	public weak var navigator: Navigator?
}


extension SegmentedControl: Component {
	
	@objc open func constructing() { addTarget(self, action: #selector(respond(_:)), for: .valueChanged) }
	
	@objc open func associating() {}
	@objc open func arranging() {}
	
	@objc open func crafting() {
		layer.cornerRadius = 2
		layer.borderWidth = 1
	}

	@objc open func navigating() {}
	@objc open func showing() {}
		
	public var components: [Component] { return [] }
}
