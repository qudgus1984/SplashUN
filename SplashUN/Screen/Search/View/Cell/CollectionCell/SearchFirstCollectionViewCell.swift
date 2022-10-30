//
//  SearchCollectionViewCell.swift
//  SplashUN
//
//  Created by 이병현 on 2022/10/28.
//

import UIKit
import Then

final class SearchFirstCollectionViewCell: UICollectionViewCell {
  
  private let ImgView: UIImageView = {
    let view = UIImageView()
    return view
  }()
    
    private let textLabel = UILabel().then {
        $0.textColor = .white
    }
   
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        configure()
        setConstraints()
    }
    
    override func configure() {
        [ImgView, textLabel].forEach {
            contentView.addSubview($0)
        }
    }
    
    override func setConstraints() {
        containCollectionView.snp.makeConstraints { make in
            make.edges.equalTo(safeAreaLayoutGuide).inset(4)
        }
    }
}
