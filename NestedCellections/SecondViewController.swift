//
//  secondViewController.swift
//  mkchain
//
//  Created by masato on 19/10/2019.
//  Copyright © 2019 masato. All rights reserved.
//


import UIKit

class SecondViewController: UIViewController {

    let backImage: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "background_img"))
        return imageView
    }()





        let imageButton: UIButton = {
            let uiButton: UIButton = UIButton(frame: CGRect(x: 17, y: 550, width: 220, height: 190))

//            uiButton.setImage(#imageLiteral(resourceName: "recording_group"), for: .normal)
            uiButton.setImage(#imageLiteral(resourceName: "recording1_3x"), for: .normal)
//            uiButton.imageEdgeInsets = UIEdgeInsets(top: 0,left: 0,bottom: 0,right: 0)


            return uiButton
        }()


    override func viewDidLoad() {
        super.viewDidLoad()


        self.view.addSubview(backImage)
        imageButton.imageEdgeInsets = UIEdgeInsets(top: 0,left: 0,bottom: 0,right: 0)
        imageButton.imageView?.contentMode = .center
        imageButton.imageView?.contentMode = .scaleAspectFill
        backImage.addSubview(imageButton)

//        imageButton.addSubview(buttonImageView)
    }



    override func viewDidLayoutSubviews() {

        backImage.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: view.frame.width, height: view.frame.height))

//        imageButton.imageView?.anchor(top: 0, leading: 0, bottom: 0, trailing: 0, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: view.frame.width, height: view.frame.height) )


    }



}



