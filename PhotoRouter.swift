//
//  PhotoRouter.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import Foundation


protocol PhotoRouterProtocol: AnyObject {
    
    func backToHome()
    
    init (_ viewController: PhotoView)
    
}

class PhotoRouter: PhotoRouterProtocol {
    
    weak var viewController: PhotoView?
    
    required init(_ viewController: PhotoView) {
        self.viewController = viewController
    }
    
    func backToHome() {
        viewController?.dismiss(animated: true, completion: nil)
    }
    
}
