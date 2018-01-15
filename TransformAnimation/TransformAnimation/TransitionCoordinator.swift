//
//  TransitionCoordinator.swift
//  TransformAnimation
//
//  Created by lmh on 2018/1/15.
//  Copyright © 2018年 SK. All rights reserved.
//

import UIKit

class TransitionCoordinator: NSObject, UINavigationControllerDelegate {
    
    
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        
        return CircularTransition()
        
    }
}

