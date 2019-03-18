import UIKit

open class CollectionViewCell: UICollectionViewCell {
	public override init(frame: CGRect) {
		super.init(frame: frame)
		construct()
		arrange()
		style()
	}

	open func arrange() { for s in nySubviews() { s.arrange() } }
	open func style() { for s in nySubviews() { s.style() } }

	open func construct() {}
	open func fill() {}
	
	func nySubviews() -> [View] { return contentView.subviews.compactMap { $0 as? View } }

	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
