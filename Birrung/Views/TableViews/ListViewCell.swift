import UIKit

open class ListViewCell: TableViewCell {
	open override func style() {
		super.style()
		textLabel?.numberOfLines = 0
	}
}
