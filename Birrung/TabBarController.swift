import UIKit

open class TabBarController: UITabBarController {
	open override func viewDidLoad() {
		super.viewDidLoad()
		construct()
		show()
		arrange()
		craft()
	}
	
	open func construct() {}
	open func show() {}
	open func arrange() {}
	open func craft() {}

	open override var shouldAutorotate: Bool {
		if let vc = viewControllers?[selectedIndex] { return vc.shouldAutorotate }
		return super.shouldAutorotate
	}
	
	open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
		if let vc = viewControllers?[selectedIndex] { return vc.supportedInterfaceOrientations }
		return super.supportedInterfaceOrientations
	}
	
	open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
		if let vc = viewControllers?[selectedIndex] { return vc.preferredInterfaceOrientationForPresentation }
		return super.preferredInterfaceOrientationForPresentation
	}
}
