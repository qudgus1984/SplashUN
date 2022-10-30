//
//  SearchFirstTableViewCell.swift
//  SplashUN
//
//  Created by 이병현 on 2022/10/30.
//


import UIKit
import SnapKit

final class SearchFirstTableCell: BaseTableViewCell {
    let containCollectionView: UICollectionView = {
        let view = UICollectionView()
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configure() {
        [containCollectionView].forEach {
            contentView.addSubview($0)
        }
    }
    
    override func setConstraints() {
        containCollectionView.snp.makeConstraints { make in
            make.edges.equalTo(safeAreaLayoutGuide).inset(4)
        }
    }
    
}
