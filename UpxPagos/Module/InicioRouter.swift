//
//  InicioRouter.swift
//  UpxPagos
//
//  Created David on 11/05/20.
//  Copyright © 2020 Upax. All rights reserved.
//

import UIKit

class InicioRouter: InicioWireframeProtocol {
    
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = InicioViewController(nibName: "InicioViewController", bundle: SDKConfiguration.bundle)
        let interactor = InicioInteractor()
        let router = InicioRouter()
        let presenter = InicioPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
