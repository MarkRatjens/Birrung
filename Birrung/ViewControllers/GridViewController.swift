import UIKit

open class GridViewController: ViewController, UICollectionViewDelegateFlowLayout {
	public var collectionView: GridView!

	open override func constructing() {
		collectionView = GridView(frame: view.frame, collectionViewLayout: layout)
		view.addSubview(collectionView)
		super.constructing()
	}
	
	open override func associating() {
		super.associating()
		collectionView.delegate = self
	}

	open override func arranging() {
		super.arranging()
		collectionView.fit(in: view)
	}

	open override func crafting() {
		super.crafting()
		collectionView.backgroundColor = .clear
	}

	open override func reshowing() {
		super.reshowing()
		if let ips = collectionView.indexPathsForSelectedItems {
			for ip in ips { collectionView.deselectItem(at: ip, animated: true) }
			collectionView.reloadItems(at: ips)
		}
	}

	open lazy var layout = UICollectionViewFlowLayout()
}
