//
//  SecondViewController.swift
//  CALayerDemo
//
//  Created by Ivan Akulov on 07/12/2016.
//  Copyright © 2016 Ivan Akulov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    

    
    var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 1, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0, y: 1)
            let firstColor = UIColor.orange.cgColor
            let secondColor = UIColor.black.cgColor
            gradientLayer.colors = [firstColor, secondColor]
            //gradientLayer.locations = [0.2 , 0, 0.8]
        }
    }
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.size.width / 2
            imageView.layer.masksToBounds = true
            imageView.layer.shadowOpacity = 0.7
            imageView.layer.shadowRadius = 9
            let borderColor = UIColor.lightGray
            imageView.layer.borderColor = borderColor.cgColor
            imageView.layer.borderWidth = 17
            
            
        }
    }
    
    @IBOutlet weak var button: UIButton!{
        didSet {
            button.layer.shadowOffset = CGSize(width: 0.2, height: 9.0)
            button.layer.shadowRadius = 9
            button.layer.shadowOpacity = 0.9
        }
    }
    
    override func viewDidLayoutSubviews() {
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
