//
//  HomePresenter.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import Foundation

protocol HomePresenterProtocol: AnyObject {
    func configureView()
    
    func logOutPressed()
    func showPhotoPressed()
    
    init(_ view: HomeViewProtocol)
    
}

class HomePresenter: HomePresenterProtocol {
    
    weak var view: HomeViewProtocol?
    
    var router: HomeRouterProtocol!
    var interactor: HomeInteractorProtocol!
    
    required init(_ view: HomeViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view?.setLogOutImage(image: interactor.loginImage)
        view?.setShowPhoto(image: interactor.showPhotoImage)
    }
    
    func logOutPressed() {
        router.closerCurrentController()
    }
    
    func showPhotoPressed() {
        router.showSecondController()
    }
    
}
