//
//  BaseView.swift
//  SplashUN
//
//  Created by 이병현 on 2022/10/27.
//

import UIKit

class BaseView: UIView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGray6

        configure()
        setConstants()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure() {}
    func setConstants() {}

}
