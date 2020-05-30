// ___FILEHEADER___

import Swinject
import AsyncDisplayKit
import RFUI

public class ___VARIABLE_modulePrefix___View: ASViewController<___VARIABLE_modulePrefix___MainNode>, RFViewProtocol {
    typealias Constants = ___VARIABLE_modulePrefix___Constants

    var presenter: ___VARIABLE_modulePrefix___ViewOutput!

    public let modules: Container
    
    public var statusBarStyle: UIStatusBarStyle = .default {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    public override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }

    public init(modules: Container) {
        self.modules = modules

        modules.register(___VARIABLE_modulePrefix___Presenter<___VARIABLE_modulePrefix___View>.self) { _ in ___VARIABLE_modulePrefix___Presenter() }
        modules.register(___VARIABLE_modulePrefix___Interactor.self) { _ in ___VARIABLE_modulePrefix___Interactor() }
        modules.register(___VARIABLE_modulePrefix___Router.self) { _ in ___VARIABLE_modulePrefix___Router() }

        super.init(node: ___VARIABLE_modulePrefix___MainNode())
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) not implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        ___VARIABLE_modulePrefix___Configurator.configure(with: self, modules: modules)

        presenter.didLoad()
    }

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        presenter.willAppear(animated)
    }

    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        presenter.willDisappear(animated)
    }
}
