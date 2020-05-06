//
//  MovieCollectionViewCell.swift
//  TFilmes
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 06/05/20.
//  Copyright © 2020 Vandcarlos Mouzinho Sandes Junior. All rights reserved.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!

    private var mainMovie: MainMovie?

    func updateData(with mainMovie: MainMovie) {
        self.mainMovie = mainMovie

        self.titleLabel.text = mainMovie.originalTitle
        self.image.load(url: mainMovie.imageURL)

        if mainMovie.favorite {
            self.favoriteButton.tintColor = UIColor.yellow
        } else {
            self.favoriteButton.tintColor = UIColor.gray
        }
    }

    @IBAction func favoriteTapped(_ sender: Any) {
        guard var mainMovie = self.mainMovie else { return }
        mainMovie.favorite = !mainMovie.favorite
        self.mainMovie = mainMovie

        if mainMovie.favorite {
            self.favoriteButton.tintColor = UIColor.yellow
        } else {
            self.favoriteButton.tintColor = UIColor.gray
        }
    }


}

extension UIImageView {
    func load(url: URL?) {
        guard let imageURL = url else { return }

        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: imageURL) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
