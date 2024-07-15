//
//  PhotoAssambly.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import Foundation


protocol PhotoAssamblyProtocol: AnyObject {
    
    func configure(viewController: PhotoView)
    
}

class PhotoAssambly: PhotoAssamblyProtocol {
    
    func configure(viewController: PhotoView) {
        let presenter = PhotoPresenter(viewController)
        let interactor = PhotoInteractor(presenter)
        let router = PhotoRouter(viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
}
