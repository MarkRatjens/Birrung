import UIKit

open class CollectionViewController: ViewController, UICollectionViewDelegateFlowLayout {
	public var collectionView: CollectionView!

	open override func construct() {
		super.construct()
		collectionView = CollectionView(frame: view.frame, collectionViewLayout: layout)
		view.addSubview(collectionView)
	}
	
	open override func delegate() {
		super.delegate()
		collectionView.delegate = self
	}

	open override func style() {
		super.style()
		collectionView.backgroundColor = .clear
	}

	open override func arrange() {
		super.arrange()
		collectionView.fit(in: view)
	}

	open lazy var layout = UICollectionViewFlowLayout()
}
