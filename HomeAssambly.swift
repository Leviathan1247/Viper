//
//  HomeAssambly.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import Foundation


protocol HomeAssamblyProtocol: AnyObject {
    
    func configure(viewController: HomeView)
    
}

class HomeAssambly: HomeAssamblyProtocol {
    
    func configure(viewController: HomeView) {
        let presenter = HomePresenter(viewController)
        let interactor = HomeInteractor(presenter)
        let router = HomeRouter(viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router

    }
    
}
