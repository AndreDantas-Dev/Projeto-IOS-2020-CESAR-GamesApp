//
//  GameCollectionView.swift
//  MyGames
//
//  Created by aluno on 11/07/20.
//  Copyright © 2020 aluno. All rights reserved.
//

import UIKit

class GameCollectionView: UIView {


    lazy var collectionView: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .clear
        collection.showsHorizontalScrollIndicator = false
        collection.showsVerticalScrollIndicator = true
        return collection
    }()

    init() {
        super.init(frame: .zero)
        backgroundColor = .systemBackground

        configureCollectionView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension GameCollectionView {


    func configureCollectionView() {
        addSubview(collectionView)
        //collectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        collectionView.widthAnchor.constraint(equalTo: widthAnchor, constant: 0.9).isActive = true
        collectionView.heightAnchor.constraint(equalTo: heightAnchor,constant: 0.9).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        collectionView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }


}
