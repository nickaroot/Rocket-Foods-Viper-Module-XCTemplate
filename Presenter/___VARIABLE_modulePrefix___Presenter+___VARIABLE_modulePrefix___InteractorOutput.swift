// ___FILEHEADER___

import RFExtensions

extension ___VARIABLE_modulePrefix___Presenter: ___VARIABLE_modulePrefix___InteractorOutput {
    func signOut() {
        router.signOut()
    }
    
    func updateCartItemCount() {
        if let delegate = view.tabBarController as? CartItemCounterDelegate {
            interactor.setCartItemCount(delegate: delegate)
        }
    }
}
