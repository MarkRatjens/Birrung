import UIKit

open class NavigationController: UINavigationController {
	open override var shouldAutorotate: Bool {
		if let sar = topViewController?.shouldAutorotate { return sar }
		return super.shouldAutorotate
	}
	
	open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
		if let sio = topViewController?.supportedInterfaceOrientations { return sio }
		return super.supportedInterfaceOrientations
	}
	
	open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
		if let piofp = topViewController?.preferredInterfaceOrientationForPresentation { return piofp }
		return super.preferredInterfaceOrientationForPresentation
	}
}
