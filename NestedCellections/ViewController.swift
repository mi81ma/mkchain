//
//  ViewController.swift
//  mkchain
//
//  Created by masato on 19/10/2019.
//  Copyright © 2019 masato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {








    override func viewDidLoad() {
        super.viewDidLoad()

        let backImage: UIImageView = {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))

            imageView.image = #imageLiteral(resourceName: "background_img")

            return imageView
        }()


        let imageButton: UIButton = {
            let uiButton: UIButton = UIButton(frame: CGRect(x: 17, y: 550, width: 220, height: 190))

            uiButton.setImage(#imageLiteral(resourceName: "recording1_3x"), for: .normal)
            uiButton.addTarget(self, action: #selector(goForward), for: .touchUpInside)
            return uiButton
        }()

        


        self.view.addSubview(backImage)
        backImage.addSubview(imageButton)

    }



    override func viewDidLayoutSubviews() {


    }

    @objc private func goForward() {

        let nextView: UIViewController = SecondViewController()
        nextView.modalTransitionStyle = .coverVertical
        present(nextView, animated: true, completion: nil)
       }


}

