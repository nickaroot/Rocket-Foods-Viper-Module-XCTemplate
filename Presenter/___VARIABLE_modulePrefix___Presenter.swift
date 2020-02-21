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
        router.navigationController = view.navigationController

        view.title = Constants.title
        view.statusBarStyle = Constants.statusBarStyle
        view.isNavigationBarShowing = Constants.isNavbarShowing
        view.navigationBackButton = Constants.navbarBackButton
    }

    func hideView() {
        view.title = " "
    }
}
