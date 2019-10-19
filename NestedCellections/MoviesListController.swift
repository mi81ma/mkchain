//
//  ViewController.swift
//  NestedCellections
//
//  Created by masato on 11/5/2019.
//  Copyright © 2019 masato. All rights reserved.
//

import UIKit

class MoviesListController: UICollectionViewController {

    private let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.backgroundColor = .white
        collectionView.register(MovieGroupCell.self, forCellWithReuseIdentifier: cellId)
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = .init(width: view.frame.width, height: 250)
        }

    }


    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MovieGroupCell
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }


}

