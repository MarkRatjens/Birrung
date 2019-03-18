import UIKit

open class FloatingAddButton: FloatingButton {
	open override func style() {
		super.style()
	}
}


open class FloatingDownloadButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.download.rawValue
	}
}


open class FloatingRefreshButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.refresh.rawValue
	}
}


open class FloatingRequestButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.request.rawValue
	}
}


open class ShutterButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.scanner.rawValue
	}
}


open class CameraSwitchButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.switchCamera.rawValue
	}
}

open class HomeButton: FloatingButton {
	open override func style() {
		super.style()
		icon = Fonts.materialIcons.home.rawValue
	}
}
