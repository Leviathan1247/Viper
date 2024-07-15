//
//  HomeRouter.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import Foundation


protocol HomeRouterProtocol: AnyObject {
    
    func closerCurrentController()
    func showSecondController()
    
    init (_ viewController: HomeView)
    
    
}

class HomeRouter: HomeRouterProtocol {
    
    weak var viewController: HomeView?
    
    required init (_ viewController: HomeView) {
        self.viewController = viewController
    }
    
    func closerCurrentController() {
        viewController?.dismiss(animated: true, completion: nil)
    }
    
    func showSecondController() {
        viewController?.performSegue(withIdentifier: viewController!.segueIdentifire, sender: nil)
    }
    
}
