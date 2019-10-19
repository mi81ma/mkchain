//
//  ViewController.swift
//  mkchain
//
//  Created by masato on 19/10/2019.
//  Copyright © 2019 masato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let backImage: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "background_img"))
        return imageView
    }()


//    let buttonImageView: UIImageView = {
//        let imageView2: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 220, height: 190))
////        let imageView2: UIImageView = UIImageView()
//
//        imageView2.image = #imageLiteral(resourceName: "recording_group")
//
//        return imageView2
//    }()




        let imageButton: UIButton = {
            let uiButton: UIButton = UIButton(frame: CGRect(x: 17, y: 550, width: 220, height: 190))

            uiButton.setImage(#imageLiteral(resourceName: "recording_group"), for: .normal)



//            uiButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
            return uiButton
        }()


    override func viewDidLoad() {
        super.viewDidLoad()


        self.view.addSubview(backImage)
        imageButton.imageView?.contentMode = .scaleAspectFit
        backImage.addSubview(imageButton)

//        imageButton.addSubview(buttonImageView)
    }



    override func viewDidLayoutSubviews() {

        backImage.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: view.frame.width, height: view.frame.height))


//        buttonImageView.anchor(top: backImage.topAnchor, leading: backImage.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0.05 * backImage.frame.width, left: 0.6 * backImage.frame.height, bottom: 0, right: 0), size: .init(width: 0.52 * backImage.frame.width, height: 0.21 * backImage.frame.height))
//
//        buttonImageView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 17/340 * view.frame.width, left: 429/705 * view.frame.height, bottom: 0, right: 0), size: .init(width: 187/340 * view.frame.width, height: 153/705 * view.frame.height))


    }






}

