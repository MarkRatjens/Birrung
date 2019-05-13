import UIKit

open class SelectionViewController: ListViewController {	
	@objc func done() {
		if let ip = tableView.indexPathForSelectedRow { setSelection(to: ip.row) }
		pop()
	}

	open override func construct() {
		super.construct()
		navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
	}
	
	open func setSelection(to row: Int) {}
}