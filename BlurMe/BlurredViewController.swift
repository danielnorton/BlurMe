//
//  BlurredViewController.swift
//  BlurMe
//
//  Created by Daniel Norton on 1/3/16.
//  Copyright © 2016 brimstead. All rights reserved.
//

import Foundation
import UIKit

class BlurredViewController : UIViewController {
    
    @IBAction func didTapDone(sender: UIGestureRecognizer) {
        
        presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}