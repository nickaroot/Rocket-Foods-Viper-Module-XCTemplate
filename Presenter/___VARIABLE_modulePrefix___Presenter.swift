// ___FILEHEADER___

import AsyncDisplayKit
import RFUI

class ___VARIABLE_modulePrefix___Presenter<ViewInput: ___VARIABLE_modulePrefix___ViewInput>: ___VARIABLE_modulePrefix___PresenterInput, RFPresenterProtocol {
    typealias Constants = ___VARIABLE_modulePrefix___Constants

    weak var view: ViewInput!
    var router: ___VARIABLE_modulePrefix___RouterInput!
    var interactor: ___VARIABLE_modulePrefix___InteractorInput!

    func configureView() {
        setDelegates()

        addActions()
    }

    func showView() {
        router.navigationController = view.navigationController
        router.tabBarController = view.tabBarController

        view.title = Constants.title
        view.tabBarController?.tabBar.removeItemsText()
        view.statusBarStyle = Constants.statusBarStyle
        view.isNavigationBarShowing = Constants.isNavbarShowing
        view.navigationBackButton = Constants.navbarBackButton
    }

    func hideView() { }
}
