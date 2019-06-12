import UIKit

open class SegmentedControl: UISegmentedControl {
	public override init(items: [Any]?) {
		super.init(items: items)
		construct()
		arrange()
		style()
	}
	
	open func construct() {
		addTarget(self, action: #selector(respond(_:)), for: .valueChanged)
	}
	
	@objc open func respond(_ sender: UISegmentedControl) {}
	
	public func setDefault() { selectedSegmentIndex = 0 }

	open func style() {
		layer.cornerRadius = 2
		layer.borderWidth = 1
	}

	open func arrange() {}
	open func fill() {}
	
	public override init(frame: CGRect) { super.init(frame: frame) }
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
