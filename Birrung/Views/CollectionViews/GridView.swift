import UIKit

open class GridView: UICollectionView {
	public override init(frame: CGRect, collectionViewLayout: UICollectionViewLayout) {
		super.init(frame: frame, collectionViewLayout: collectionViewLayout)
		construct()
	}
	
	open func construct() {}
	open func arrange() {}
	open func style() {}
	open func fill() {}
	
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
