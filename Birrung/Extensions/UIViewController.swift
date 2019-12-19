import UIKit

extension UIViewController {
	@objc open func embed(controller: UIViewController, in container: UIView) {
		addChild(controller)
		controller.view.frame = container.bounds
		container.addSubview(controller.view)
		controller.didMove(toParent: self)
	}
}
