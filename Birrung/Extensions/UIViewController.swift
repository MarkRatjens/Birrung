import UIKit

extension UIViewController {
	open func push(_ controller: UIViewController) {
		if let nc = navigationController {
			nc.pushViewController(controller, animated: true)			
		}
	}
	
	open func pop() {
		if let nc = navigationController { nc.popViewController(animated: true) }
	}
	
	public func embed(controller: UIViewController, in container: UIView) {
		addChild(controller)
		controller.view.frame = container.bounds
		container.addSubview(controller.view)
		controller.didMove(toParent: self)
	}
}
