// ___FILEHEADER___

import RFUI

protocol ___VARIABLE_modulePrefix___RouterInput: RFRouterInputProtocol {
    var navigationController: UINavigationController? { get set }
}

class ___VARIABLE_modulePrefix___Router: ___VARIABLE_modulePrefix___RouterInput, RFRouterProtocol {
    weak var navigationController: UINavigationController?
}
