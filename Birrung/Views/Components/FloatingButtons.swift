import UIKit

open class FloatingAddButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.floatingAdd.rawValue
		theme = Theme.floatingAddButton
	}
}


open class FloatingDownloadButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.download.rawValue
		theme = Theme.floatingAddButton
	}
}


open class FloatingRefreshButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.refresh.rawValue
		theme = Theme.floatingAddButton
	}
}


open class FloatingRequestButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.request.rawValue
		theme = Theme.floatingAddButton
	}
}


open class ShutterButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.scanner.rawValue
		theme = Theme.shutterButton
	}
}


open class CameraSwitchButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.switchCamera.rawValue
		theme = Theme.shutterButton
	}
}

open class HomeButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.home.rawValue
		theme = Theme.homeButton
	}
}
