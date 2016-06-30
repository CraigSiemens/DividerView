//
//  DividerView.swift
//  DividerView
//
//  Created by Craig Siemens on 2016-05-27.
//
//

import UIKit

public enum DividerAxis {
    case horizontal
    case vertical
}

@IBDesignable
public class DividerView: UIView {
    
    // MARK: - Properties
    
    public var axis = DividerAxis.horizontal {
        didSet {
            if axis != oldValue {
                invalidateIntrinsicContentSize()
            }
        }
    }
    
    @IBInspectable var vertical: Bool = false {
        didSet {
            axis = (vertical ? .vertical : .horizontal)
        }
    }
    
    private var thickness: CGFloat = 1 {
        didSet {
            if thickness != oldValue {
                invalidateIntrinsicContentSize()
            }
        }
    }
    
    // MARK: - Methods
    
    public convenience init(axis: DividerAxis) {
        self.init(frame: .zero)
        self.axis = axis
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupRequiredContentHuggingPriority()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupRequiredContentHuggingPriority()
    }
    
    private func setupRequiredContentHuggingPriority() {
        setContentHuggingPriority(UILayoutPriorityRequired, forAxis: .Vertical)
        setContentHuggingPriority(UILayoutPriorityRequired, forAxis: .Horizontal)
    }
    
    private func updateThicknessForWindow(window: UIWindow?) {
        #if !TARGET_INTERFACE_BUILDER
            let screen = window?.screen ?? UIScreen.mainScreen()
            thickness = 1 / screen.scale
        #else
            thickness = 1
        #endif
    }
    
    override public func willMoveToWindow(newWindow: UIWindow?) {
        super.willMoveToWindow(newWindow)
        updateThicknessForWindow(newWindow)
    }
    
    override public func intrinsicContentSize() -> CGSize {
        var size = CGSize(width: UIViewNoIntrinsicMetric, height: UIViewNoIntrinsicMetric)
        
        switch axis {
        case .horizontal:
            size.height = thickness
        case .vertical:
            size.width = thickness
        }
        
        return size
    }
}
