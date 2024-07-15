//
//  PhotoInteractor.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import Foundation
import UIKit


protocol PhotoInteractorProtocol: AnyObject {
    
    init(_ presenter: PhotoPresenter)
    
    var photoImage: UIImage { get }
    
}

class PhotoInteractor: PhotoInteractorProtocol {
    
    weak var presenter: PhotoInteractorProtocol?
    
    let entityProtocol: PhotoEntityProtocol = PhotoEntity() as PhotoEntityProtocol
    
    required init(_ presenter: PhotoPresenter) {
        self.presenter = presenter as? any PhotoInteractorProtocol
    }
    
    var photoImage: UIImage {
        get { return entityProtocol.photo }
    }
}



