import UIKit

open class GridViewController: ViewController, UICollectionViewDelegateFlowLayout {
	public var collectionView: GridView!

	open override func construct() {
		collectionView = GridView(frame: view.frame, collectionViewLayout: layout)
		view.addSubview(collectionView)
		super.construct()
	}
	
	open override func associate() {
		super.associate()
		collectionView.delegate = self
	}

	open override func arrange() {
		super.arrange()
		collectionView.fit(in: view)
	}

	open override func craft() {
		super.craft()
		collectionView.backgroundColor = .clear
	}

	open override func reshow() {
		super.reshow()
		if let ips = collectionView.indexPathsForSelectedItems {
			for ip in ips { collectionView.deselectItem(at: ip, animated: true) }
			collectionView.reloadItems(at: ips)
		}
	}

	open lazy var layout = UICollectionViewFlowLayout()
}
