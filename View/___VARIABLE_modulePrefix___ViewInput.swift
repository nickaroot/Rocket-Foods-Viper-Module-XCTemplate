// ___FILEHEADER___

import AsyncDisplayKit

protocol ___VARIABLE_modulePrefix___ViewInput: AnyObject {
    var presenter: ___VARIABLE_modulePrefix___ViewOutput! { get set }

    var navigation: UINavigationController? { get }
    var navigationItem: UINavigationItem { get }
    var tabBarController: UITabBarController? { get }

    var node: ___VARIABLE_modulePrefix___MainNode! { get }

    var frame: CGRect { get set }

    var title: String? { get set }

    var isNavbarShowing: Bool { get set }
}

extension ___VARIABLE_modulePrefix___View: ___VARIABLE_modulePrefix___ViewInput {
    var navigation: UINavigationController? { return navigationController }

    var frame: CGRect { get { return view.frame } set { view.frame = newValue } }

    var isNavbarShowing: Bool {
        get {
            return Constants.isNavbarShowing
        }

        set {
            navigation?.navigationBar.isHidden = !newValue
        }
    }
}
