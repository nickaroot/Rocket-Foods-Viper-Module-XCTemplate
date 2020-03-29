// ___FILEHEADER___

import Swinject
import RFExtensions

protocol ___VARIABLE_modulePrefix___ConfiguratorProtocol: AnyObject {
    static func configure(with view: ___VARIABLE_modulePrefix___View, modules: Container)
}

class ___VARIABLE_modulePrefix___Configurator: ___VARIABLE_modulePrefix___ConfiguratorProtocol {
    static func configure(with view: ___VARIABLE_modulePrefix___View, modules: Container) {
        guard let presenter = modules.resolve(___VARIABLE_modulePrefix___Presenter.self),
            let interactor = modules.resolve(___VARIABLE_modulePrefix___Interactor.self),
            let router = modules.resolve(___VARIABLE_modulePrefix___Router.self),
            let signOutDelegate = view.tabBarController as? SignOutDelegate else { return }

        view.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        interactor.presenter = presenter
        interactor.signOutDelegate = signOutDelegate
    }
}
