//
//  HomeView.swift
//  Viper
//
//  Created by Левиафан on 2024-07-09.
//

import UIKit


protocol HomeViewProtocol: AnyObject {
    
    func setLogOutImage(image: UIImage)
    func setShowPhoto(image: UIImage)
    
}

class HomeView: UIViewController {
    
    var presenter: HomePresenterProtocol?
    var assambly: HomeAssamblyProtocol = HomeAssambly() as HomeAssamblyProtocol
    
    let segueIdentifire = "HomeToPhoto"
    
    @IBOutlet weak var logOutBtn: UIButton!
    @IBOutlet weak var showPhotoBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assambly.configure(viewController: self)
        presenter?.configureView()

     
    }
    
    @IBAction func logOutBtnPressed(_ sender: Any) {
        presenter?.logOutPressed()
    }
    
    @IBAction func showPhotoBtnPressed(_ sender: Any) {
        presenter?.showPhotoPressed()
    }
    
}

extension HomeView: HomeViewProtocol {
    func setLogOutImage(image: UIImage) {
        logOutBtn.setBackgroundImage(image, for: .normal)
    }
    
    func setShowPhoto(image: UIImage) {
        showPhotoBtn.setBackgroundImage(image, for: .normal)
    }
}
