//
//  FilterFavoriteMoviesByGenderPresenter.swift
//  TFilmes
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/05/20.
//  Copyright © 2020 Vandcarlos Mouzinho Sandes Junior. All rights reserved.
//

import Foundation

final class FilterFavoriteMoviesByGenrePresenter {

    unowned private let view: FilterFavoriteMoviesByGenreViewToPresenter

    private lazy var interactor: FilterFavoriteMoviesByGenreInteractorToPresenter = {
        return FilterFavoriteMoviesByGenreInteractor(presenter: self)
    }()

    init (view: FilterFavoriteMoviesByGenreViewToPresenter) {
        self.view = view
    }

}

// MARK: - FilterFavoriteMoviesByGenderPresenterToView

extension FilterFavoriteMoviesByGenrePresenter: FilterFavoriteMoviesByGenrePresenterToView {

    func viewDidLoad() {
        self.interactor.fetchAllGenreInFavorite()
    }

}

// MARK: - FilterFavoriteMoviesByGenderPresenterToInteractor

extension FilterFavoriteMoviesByGenrePresenter: FilterFavoriteMoviesByGenrePresenterToInteractor {

}
