//
//  GetStartedVC.swift
//  OnBoardingApp
//
//  Created by Navnit Baldha on 31/05/20.
//  Copyright © 2020 Navneet Baldha. All rights reserved.
//

import Foundation
import UIKit
import Photos

class GetStartedVC: UIViewController{
    
    @IBOutlet weak var sliderContainerView: UIView!
    @IBOutlet weak var getingStartedButton: UIButton!
    
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden = true
        initializer()
    }
    
    func initializer(){
        
        let mGettingStartedSliderVC = GettingStartedSliderVC(nibName: "GettingStartedSliderVC", bundle: nil)
        
        mGettingStartedSliderVC.view.frame = CGRect(x: 0, y: 0, width: sliderContainerView.frame.width, height: sliderContainerView.frame.height)
        
        addChild(mGettingStartedSliderVC)
        mGettingStartedSliderVC.didMove(toParent: self)
        sliderContainerView.addSubview(mGettingStartedSliderVC.view)
        
    }
    
    @IBAction func getingStartedAction(_ sender: AnyObject) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        // rootViewController
        let rootViewController = mainStoryboard.instantiateViewController(withIdentifier: "CardTabBarController")
        // navigationController
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.navigationBar.isHidden = true

        if #available(iOS 13.0, *) {
            let sceneDelegate = UIApplication.shared.connectedScenes
                .first!.delegate as! SceneDelegate
            sceneDelegate.window!.rootViewController = navigationController/* ViewController Instance */
            // iOS12 or earlier
        } else {
            // UIApplication.shared.keyWindow?.rootViewController
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window!.rootViewController = navigationController /* ViewController Instance */
            
        }
        
    }
}

