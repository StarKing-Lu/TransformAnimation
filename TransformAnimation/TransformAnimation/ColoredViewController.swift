//
//  ColoredViewController.swift
//  TransformAnimation
//
//  Created by lmh on 2018/1/15.
//  Copyright © 2018年 SK. All rights reserved.
//

import UIKit

enum Color {
    case white
    case black
}

class ColoredViewController: UIViewController, CircleTransitionable {

    
    let triggerButton = UIButton()
    let contentTextView = UITextView()
    var mainView: UIView {
        return view
    }
    
    let color: Color
    
    init(color: Color) {
        
        self.color = color
        super.init(nibName: nil, bundle: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color(for: color)
        contentTextView.isUserInteractionEnabled = false
        
        triggerButton.addTarget(self, action: #selector(buttonWasTapped), for: .touchUpInside)
        self.view.addSubview(contentTextView)
        self.view.addSubview(triggerButton)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        view.setNeedsLayout()
        
    }
    
    func color(for color: Color) -> UIColor {
        
        switch color {
        case .white:
            return .white
        case .black:
            return .black
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func buttonWasTapped() {
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
