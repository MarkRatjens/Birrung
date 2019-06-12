import UIKit

open class ListViewCell: TableViewCell {
	open override func style() {
		super.style()
		contentView.backgroundColor = .clear
		textLabel?.numberOfLines = 0
	}
}
