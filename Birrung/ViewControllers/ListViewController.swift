import UIKit

open class ListViewController: ViewController, UITableViewDelegate {
	public var tableView = TableView()
	
	open override func construct() {
		view.addSubview(tableView)
		super.construct()
	}
	
	open override func associate() {
		super.associate()
		tableView.delegate = self
	}
	
	open override func arrange() {
		super.arrange()
		tableView.fit(in: safeGuide)
	}

	open override func craft() {
		super.craft()
		tableView.separatorStyle = .none
	}

	open override func show() {
		super.show()
		if let ip = tableView.indexPathForSelectedRow {
			tableView.deselectRow(at: ip, animated: true)
			tableView.scrollToRow(at: ip, at: .none, animated: true)
			tableView.reloadRows(at: [ip], with: .automatic)
		}
	}
}
