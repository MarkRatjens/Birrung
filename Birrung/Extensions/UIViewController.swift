import UIKit

extension UIViewController {
	open func push(_ controller: UIViewController) {
		if let nc = navigationController { nc.pushViewController(controller, animated: true) }
	}
	
	open func pop() {
		if let nc = navigationController { nc.popViewController(animated: true) }
	}
}
