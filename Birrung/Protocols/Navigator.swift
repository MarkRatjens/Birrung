import UIKit

public protocol Navigator: class {
	func push(_: UIViewController)
	func pop()
	func present(_: UIViewController, animated: Bool)
}
