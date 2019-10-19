// ___FILEHEADER___

import AsyncDisplayKit
import RFUI

class ___VARIABLE_modulePrefix___Presenter: ___VARIABLE_modulePrefix___PresenterInput {
    typealias Constants = ___VARIABLE_modulePrefix___Constants

    weak var view: ___VARIABLE_modulePrefix___ViewInput!
    var router: ___VARIABLE_modulePrefix___RouterInput!
    var interactor: ___VARIABLE_modulePrefix___InteractorInput!

    func configureView() {}

    func showView() {
        router.navigation = view.navigation

        view.title = Constants.title

        view.isNavbarShowing = Constants.isNavbarShowing

        let window = UIApplication.shared.keyWindow

        var topPadding = UIApplication.shared.statusBarFrame.height +
            (view.navigation?.navigationBar.frame.size.height ?? 0)

        var bottomPadding = (view.tabBarController?.tabBar.frame.height ?? 49) - 4

        if #available(iOS 11.0, *), let safeAreaInsets = window?.safeAreaInsets {
            topPadding = safeAreaInsets.top > topPadding ? safeAreaInsets.top : topPadding
            bottomPadding = safeAreaInsets.bottom > bottomPadding ? safeAreaInsets.bottom - 10 : bottomPadding
        }

        view.node.insets = UIEdgeInsets(
            top: topPadding,
            left: 0,
            bottom: bottomPadding,
            right: 0
        )

        view.node.setNeedsLayout()
    }

    func hideView() {
        view.title = " "
    }
}
