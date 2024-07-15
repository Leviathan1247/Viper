//
//  PhotoPresenter.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import Foundation


protocol PhotoPresenterProtocol: AnyObject {
    
    func configureView()
    func backToHomePressed()
    
    init(_ view: PhotoViewProtocol)
    
}

class PhotoPresenter: PhotoPresenterProtocol {
    
    weak var view: PhotoViewProtocol?
    
    var interactor: PhotoInteractorProtocol!
    var router: PhotoRouterProtocol!
    
    required init(_ view: PhotoViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view?.setPhoto(image: interactor.photoImage)
    }
    
    func backToHomePressed() {
        router.backToHome()
    }
}
