import UIKit

open class GridViewController: ViewController, UICollectionViewDelegateFlowLayout {
	public var collectionView: GridView!

	open override func construct() {
		super.construct()
		collectionView = GridView(frame: view.frame, collectionViewLayout: layout)
		view.addSubview(collectionView)
	}
	
	open override func delegate() {
		super.delegate()
		collectionView.delegate = self
	}

	open override func arrange() {
		super.arrange()
		collectionView.fit(in: view)
	}

	open override func style() {
		super.style()
		collectionView.backgroundColor = .clear
	}

	open override func refill() {
		super.refill()
		if let ips = collectionView.indexPathsForSelectedItems {
			for ip in ips { collectionView.deselectItem(at: ip, animated: true) }
			collectionView.reloadItems(at: ips)
		}
	}

	open lazy var layout = UICollectionViewFlowLayout()
}
