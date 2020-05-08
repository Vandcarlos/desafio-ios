//
//  FavoriteMoviesInteractorToPresenter.swift
//  TFilmes
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 07/05/20.
//  Copyright © 2020 Vandcarlos Mouzinho Sandes Junior. All rights reserved.
//

protocol FavoriteMoviesInteractorToPresenter: class {

    func fetchFavoriteMovies(
        withSearchQuery searchQuery: String?,
        inYears years: [Int]?,
        inGenreIds genreIds: [Int]?
    )

    func removeMovieFavorite(_ movie: Movie)

}
