//
//  InicioPresenter.swift
//  UpxPagos
//
//  Created David on 11/05/20.
//  Copyright © 2020 Upax. All rights reserved.
//

import UIKit

class InicioPresenter: InicioPresenterProtocol {

    weak private var view: InicioViewProtocol?
    var interactor: InicioInteractorProtocol?
    private let router: InicioWireframeProtocol

    init(interface: InicioViewProtocol, interactor: InicioInteractorProtocol?, router: InicioWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
