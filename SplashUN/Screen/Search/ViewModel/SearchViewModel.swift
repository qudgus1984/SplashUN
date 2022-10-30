//
//  SearchViewModel.swift
//  SplashUN
//
//  Created by 이병현 on 2022/10/27.
//

import Foundation
import RxSwift

enum SearchError: Error {
    case nophoto
    case serverError
}

class DiffableViewModel {
    
//    var photoList: CObservable<SearchPhoto> = CObservable(SearchPhoto(total: 0, totalPages: 0, results: []))
    var photoList = PublishSubject<SearchPhoto>()
    
    func requestSearchPhoto(query: String) {
        APIService.searchPhoto(query: query) { [weak self] photo, statusCode, error in
            
            guard let statusCode = statusCode, statusCode == 200 else {
                self?.photoList.onError(SearchError.serverError)
                return
            }
            
            guard let photo = photo else {
                self?.photoList.onError(SearchError.nophoto)
                return
            }
//            self.photoList.value = photo
            self?.photoList.onNext(photo)
        }
    }
}
