import UIKit

open class GridViewCell: UICollectionViewCell {
	public override init(frame: CGRect) {
		super.init(frame: frame)
		construct()
		arrange()
	}

	open func arrange() { for s in nySubviews() { s.arrange() } }
	open func fill() { style() }
	open func style() {}

	open func construct() {}
	
	func nySubviews() -> [View] { return contentView.subviews.compactMap { $0 as? View } }

	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
