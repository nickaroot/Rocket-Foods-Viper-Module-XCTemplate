// ___FILEHEADER___

import AsyncDisplayKit

protocol ___VARIABLE_modulePrefix___ViewInput: RFViewInputProtocol {
    var presenter: ___VARIABLE_modulePrefix___ViewOutput! { get set }

    var navigationController: UINavigationController? { get }
    var tabBarController: UITabBarController? { get }

    var node: ___VARIABLE_modulePrefix___MainNode! { get }

    var title: String? { get set }

    var statusBarStyle: UIStatusBarStyle { get set }

    var isNavigationBarShowing: Bool? { get set }
    
    var navigationBackButton: UIBarButtonItem? { get set }
}

extension ___VARIABLE_modulePrefix___View: ___VARIABLE_modulePrefix___ViewInput { }
