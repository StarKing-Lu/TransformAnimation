//
//  BlackViewController.swift
//  TransformAnimation
//
//  Created by lmh on 2018/1/15.
//  Copyright © 2018年 SK. All rights reserved.
//

import UIKit

class BlackViewController: ColoredViewController {
    init() {
        super.init(color: .black)
    }
    override func buttonWasTapped() {
        navigationController?.popViewController(animated: true)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
