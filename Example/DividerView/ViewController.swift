//
//  ViewController.swift
//  DividerView
//
//  Created by Craig Siemens on 05/27/2016.
//  Copyright (c) 2016 Craig Siemens. All rights reserved.
//

import DividerView
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var programmaticView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHorizontalDivider()
        setupVerticalDivider()
    }
    
    func setupHorizontalDivider() {
        let horizontalDivider = DividerView(axis: .horizontal)
        horizontalDivider.translatesAutoresizingMaskIntoConstraints = false
        horizontalDivider.backgroundColor = UIColor.blueColor()
        
        programmaticView.addSubview(horizontalDivider)
        
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[horizontalDivider]",
                                                                         options: [],
                                                                         metrics: nil,
                                                                         views: ["horizontalDivider": horizontalDivider])

        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[horizontalDivider]-|",
                                                                         options: [],
                                                                         metrics: nil,
                                                                         views: ["horizontalDivider": horizontalDivider])
        
        programmaticView.addConstraints(verticalConstraints + horizontalConstraints)
    }
    
    func setupVerticalDivider() {
        let verticalDivider = DividerView(axis: .vertical)
        verticalDivider.translatesAutoresizingMaskIntoConstraints = false
        verticalDivider.backgroundColor = UIColor.magentaColor()
        
        programmaticView.addSubview(verticalDivider)
        
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[verticalDivider]-|",
                                                                                 options: [],
                                                                                 metrics: nil,
                                                                                 views: ["verticalDivider": verticalDivider])
        
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[verticalDivider]",
                                                                                   options: [],
                                                                                   metrics: nil,
                                                                                   views: ["verticalDivider": verticalDivider])
        
        programmaticView.addConstraints(verticalConstraints + horizontalConstraints)
    }
}

