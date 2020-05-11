//
//  InicioProtocols.swift
//  UpxPagos
//
//  Created David on 11/05/20.
//  Copyright © 2020 Upax. All rights reserved.
//

import Foundation

//MARK: Wireframe -
protocol InicioWireframeProtocol: class {

}
//MARK: Presenter -
protocol InicioPresenterProtocol: class {

}

//MARK: Interactor -
protocol InicioInteractorProtocol: class {

  var presenter: InicioPresenterProtocol?  { get set }
}

//MARK: View -
protocol InicioViewProtocol: class {

  var presenter: InicioPresenterProtocol?  { get set }
}
