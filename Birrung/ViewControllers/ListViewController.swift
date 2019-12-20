import UIKit

open class ListViewController: ViewController, UITableViewDelegate {
	public var tableView = TableView()
	
	open override func constructing() {
		view.addSubview(tableView)
		super.constructing()
	}
	
	open override func associating() {
		super.associating()
		tableView.delegate = self
	}
	
	open override func arranging() {
		super.arranging()
		tableView.fit(in: safeGuide)
	}

	open override func crafting() {
		super.crafting()
		tableView.separatorStyle = .none
	}

	open override func showing() {
		super.showing()
		if let ip = tableView.indexPathForSelectedRow {
			tableView.deselectRow(at: ip, animated: true)
			tableView.scrollToRow(at: ip, at: .none, animated: true)
			tableView.reloadRows(at: [ip], with: .automatic)
		}
	}
}
