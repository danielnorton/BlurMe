//
//  ViewController.swift
//  BlurMe
//
//  Created by Daniel Norton on 1/3/16.
//  Copyright © 2016 brimstead. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for case let button as UIButton in view.subviews {
            
            if let label = button.titleLabel {
                
                label.adjustsFontSizeToFitWidth = true
                label.minimumScaleFactor = 0.5
            }
        }
    }
    
    
    // MARK: - ViewController
    // MARK: IBActions
    @IBAction func didTapCode(sender: UIButton) {
        
        presentViaCode()
    }
    
    
    // MARK: public methods
    func didTapDone(sender: UIGestureRecognizer) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    // MARK: private methods
    private func presentViaCode() {
        
        let controller = UIViewController()
        controller.modalPresentationStyle = .OverCurrentContext
        let superview = controller.view
        
        let subview = UIVisualEffectView(effect: UIBlurEffect(style: .Light))
        subview.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(subview)
        
        superview.addConstraint(NSLayoutConstraint(item: subview
            , attribute: NSLayoutAttribute.Baseline
            , relatedBy: .Equal
            , toItem: superview
            , attribute: .Baseline
            , multiplier: 1.0
            , constant: 0.0))
        
        superview.addConstraint(NSLayoutConstraint(item: subview
            , attribute: NSLayoutAttribute.Leading
            , relatedBy: .Equal
            , toItem: superview
            , attribute: .Leading
            , multiplier: 1.0
            , constant: 0.0))

        superview.addConstraint(NSLayoutConstraint(item: subview
            , attribute: NSLayoutAttribute.Trailing
            , relatedBy: .Equal
            , toItem: superview
            , attribute: .Trailing
            , multiplier: 1.0
            , constant: 0.0))

        superview.addConstraint(NSLayoutConstraint(item: subview
            , attribute: NSLayoutAttribute.Top
            , relatedBy: .Equal
            , toItem: superview
            , attribute: .CenterY
            , multiplier: 1.0
            , constant: -55.0))
        
        
        let labelView = UIVisualEffectView(effect: UIVibrancyEffect(forBlurEffect: UIBlurEffect(style: .Light)))
        labelView.translatesAutoresizingMaskIntoConstraints = false
        subview.contentView.addSubview(labelView)
        
        subview.addConstraint(NSLayoutConstraint(item: labelView
            , attribute: NSLayoutAttribute.Baseline
            , relatedBy: .Equal
            , toItem: subview
            , attribute: .Baseline
            , multiplier: 1.0
            , constant: 0.0))
        
        subview.addConstraint(NSLayoutConstraint(item: labelView
            , attribute: NSLayoutAttribute.Leading
            , relatedBy: .Equal
            , toItem: subview
            , attribute: .Leading
            , multiplier: 1.0
            , constant: 0.0))
        
        subview.addConstraint(NSLayoutConstraint(item: labelView
            , attribute: NSLayoutAttribute.Trailing
            , relatedBy: .Equal
            , toItem: subview
            , attribute: .Trailing
            , multiplier: 1.0
            , constant: 0.0))
        
        labelView.addConstraint(NSLayoutConstraint(item: labelView
            , attribute: NSLayoutAttribute.Height
            , relatedBy: .Equal
            , toItem: nil
            , attribute: .Height
            , multiplier: 1.0
            , constant: 100.0))
        
        
        let label = UILabel()
        label.text = "Done"
        label.font = UIFont.systemFontOfSize(70.0)
        label.textAlignment = .Center
        label.translatesAutoresizingMaskIntoConstraints = false
        labelView.contentView.addSubview(label)
        
        labelView.addConstraint(NSLayoutConstraint(item: label
            , attribute: NSLayoutAttribute.Baseline
            , relatedBy: .Equal
            , toItem: labelView
            , attribute: .Baseline
            , multiplier: 1.0
            , constant: 0.0))
        
        labelView.addConstraint(NSLayoutConstraint(item: label
            , attribute: NSLayoutAttribute.Leading
            , relatedBy: .Equal
            , toItem: labelView
            , attribute: .Leading
            , multiplier: 1.0
            , constant: 0.0))
        
        labelView.addConstraint(NSLayoutConstraint(item: label
            , attribute: NSLayoutAttribute.Trailing
            , relatedBy: .Equal
            , toItem: labelView
            , attribute: .Trailing
            , multiplier: 1.0
            , constant: 0.0))
        
        labelView.addConstraint(NSLayoutConstraint(item: label
            , attribute: NSLayoutAttribute.Top
            , relatedBy: .Equal
            , toItem: labelView
            , attribute: .Top
            , multiplier: 1.0
            , constant: 0.0))
        
        labelView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "didTapDone:"))
        self.presentViewController(controller, animated: true, completion: nil)
    }
}

