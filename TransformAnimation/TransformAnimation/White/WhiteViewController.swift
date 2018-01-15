//
//  WhiteViewController.swift
//  TransformAnimation
//
//  Created by lmh on 2018/1/15.
//  Copyright © 2018年 SK. All rights reserved.
//

import UIKit

class WhiteViewController: ColoredViewController {
    init() {
        super.init(color: .white)
    }
    override func buttonWasTapped() {
        let vc = BlackViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

