//
//  PhotoEntity.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import Foundation
import UIKit


protocol PhotoEntityProtocol {
    
    var photo: UIImage { get }
    
}

struct PhotoEntity: PhotoEntityProtocol {
    
    var photo: UIImage {
        get { return UIImage(imageLiteralResourceName: "female")}
    }
    
}
