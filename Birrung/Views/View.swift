import UIKit

open class View: UIView {
	public typealias X = View
	
	public override init(frame: CGRect) {
		super.init(frame: frame)
		construct()
		arrange()
	}

	open func arrange() { for s in nySubviews() { s.arrange() } }
	open func fill() { style() }
	open func style() {}

	public func nySubviews() -> [X] { return subviews.compactMap { $0 as? X } }
	
	open func construct() {}
	
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
