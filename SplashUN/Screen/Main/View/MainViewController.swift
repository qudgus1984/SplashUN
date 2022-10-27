//
//  MainViewController.swift
//  SplashUN
//
//  Created by 이병현 on 2022/10/27.
//

import UIKit

class MainViewController: BaseViewController {

    let mainview = SearchView()
    
    override func loadView() {
        super.view = mainview
    }
    
    let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
