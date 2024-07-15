//
//  HomeEntity.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import Foundation
import UIKit

protocol HomeEntityProtocol {
    var logoutImage: UIImage { get }
    var showPhotoImage: UIImage { get }
    
}

struct HomeEntity: HomeEntityProtocol {
    var logoutImage: UIImage { get { return UIImage(imageLiteralResourceName: "logout")}}
    var showPhotoImage: UIImage { get { return UIImage(imageLiteralResourceName: "showImage")}}
   
}
