//
//  SearchView.swift
//  SplashUN
//
//  Created by 이병현 on 2022/10/27.
//

import UIKit
import SnapKit
import Then

class SearchView: BaseView {
    
    //MARK: - 아이템 설정
    let tableView: UITableView = {
        let view = UITableView()
        return view
    }()
    
    //MARK: - 아이템 넣어주기
    override func configure() {
        [tableView].forEach {
            self.addSubview($0)
        }
    }
    //MARK: - 제약 설정
    override func setConstants() {
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(0)
        }
    }
}

