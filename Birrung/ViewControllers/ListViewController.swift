import UIKit

open class ListViewController: ViewController, UITableViewDelegate {
	public var tableView = TableView()
	
	open override func construct() {
		super.construct()
		view.addSubview(tableView)
	}
	
	open override func delegate() {
		super.delegate()
		tableView.delegate = self
	}
	
	open override func arrange() {
		super.arrange()
		tableView.fit(in: view)
	}

	open override func style() {
		super.style()
		tableView.separatorStyle = .none
	}

	open override func restyle() {
		super.restyle()
		if let ip = tableView.indexPathForSelectedRow {
			tableView.deselectRow(at: ip, animated: true)
			tableView.scrollToRow(at: ip, at: .none, animated: true)
			tableView.reloadRows(at: [ip], with: .automatic)
		}
	}
}
