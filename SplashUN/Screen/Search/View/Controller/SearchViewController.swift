//
//  SearchViewController.swift
//  SplashUN
//
//  Created by 이병현 on 2022/10/27.
//

import UIKit

import UIKit

class SearchViewController: BaseViewController  {

    var list = ["1", "2", "3", "4" ,"5", "6", "7", "8", "9", "10"]

    
    
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SearchFirstTableCell else { return UITableViewCell() }
        cell.containCollectionView.delegate = self
        cell.containCollectionView.dataSource = self
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 300
        case 1:
            return 300
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Browse by Category"
        case 1:
            return "Discover"
        default:
            return ""
        }
    }
}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SearchFirstCollectionViewCell else { return UICollectionViewCell() }

        return cell
    }
}
