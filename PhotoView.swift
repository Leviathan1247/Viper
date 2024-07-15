//
//  PhotoView.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//


import UIKit


protocol PhotoViewProtocol: AnyObject {
    
    func setPhoto(image: UIImage)
    
}


class PhotoView: UIViewController {
    
    @IBOutlet weak var photoImage: UIImageView!
    
    var presenter: PhotoPresenterProtocol?
    var assambly: PhotoAssambly = PhotoAssambly()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        assambly.configure(viewController: self)
        presenter?.configureView()

      
    }
    
    @IBAction func backToHome(_ sender: Any) {
        presenter?.backToHomePressed()
    }
    
}

extension PhotoView: PhotoViewProtocol {
    func setPhoto(image: UIImage) {
        photoImage.image = image
    }
}
