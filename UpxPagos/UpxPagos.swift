//
//  UpxPagos.swift
//  UpxPagos
//
//  Created by David on 11/05/20.
//  Copyright © 2020 Upax. All rights reserved.
//

import Foundation
import UIKit

public class UpxPagos {
    public static let shared = UpxPagos()
    weak var rootVC: UIViewController?
    public var currentStep: AceptaPagoBazStep? = AceptaPagoBazStep(rawValue: 0)
    var navigationVC: UINavigationController?
    weak var delegate: UpxPagosDelegate?
    
    private init() {}
    
    public func setConfiguration(rootViewController: UIViewController, enviroment: AceptaPagosEnviroment, apiKey: String, delegate: UpxPagosDelegate) {
        rootVC = rootViewController
        self.delegate = delegate
    }
    
    public func initialModule() {
        
        if let navigation = navigationVC {
            if navigation.viewControllers.count > 1 {
                navigation.popToRootViewController(animated: false)
            }
        } else {
            let intialModule = InicioRouter.createModule()
            navigationVC = UINavigationController(rootViewController: intialModule)
        }
        
        guard let firstVC = navigationVC?.viewControllers.first else {
            print("Error al presentar el modulo")
            return
        }
        
        rootVC?.nextVC(navigationVC!, animated: true)
        
    }
    
    public func finalizeProcess() {
        navigationVC?.dismiss(animated: true, completion: nil)
        print("Se finalizo proceso ...")
        delegate?.didEnd()
    }
    
}

public enum AceptaPagosEnviroment {
    case development
    case qa
    case release
}

public enum AceptaPagoBazStep: Int {
    case login
    case requirement
    case register
    case privacyPolicy
}

public protocol UpxPagosDelegate: NSObject {
    func didEnd()
}
