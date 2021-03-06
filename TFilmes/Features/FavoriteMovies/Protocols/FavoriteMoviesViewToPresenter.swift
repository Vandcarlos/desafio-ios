//
//  FavoriteMoviesViewToPresenter.swift
//  TFilmes
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 07/05/20.
//  Copyright © 2020 Vandcarlos Mouzinho Sandes Junior. All rights reserved.
//

protocol FavoriteMoviesViewToPresenter: class {

    func updateMovies(with movies: [Movie])

    func setRemoveFilterIsVisible()
    func setRemoveFilterIsHiden()

}
