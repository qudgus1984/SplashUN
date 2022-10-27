//
//  SearchViewController.swift
//  SplashUN
//
//  Created by 이병현 on 2022/10/27.
//

import UIKit

import UIKit

class SearchViewController: BaseViewController {
    
    let mainview = SearchView()
    
    override func loadView() {
        super.view = mainview
    }
    
    let searchController = UISearchController(searchResultsController: nil)
    
//MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainview.tableView.delegate = self
        mainview.tableView.dataSource = self
    }

}

//MARK: - TableView - Delegate / DataSource
extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

