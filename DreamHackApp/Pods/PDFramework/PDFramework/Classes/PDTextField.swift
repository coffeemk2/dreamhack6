//
//  PDTextField.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

import UIKit

public class PDTextField: UITextField {
    @IBInspectable public var placeholderColor: UIColor = .blackColor() {
        willSet {
            attributedPlaceholder = NSAttributedString(
                string: placeholder ?? "",
                attributes: [NSForegroundColorAttributeName : newValue]
            )
        }
    }

    @IBInspectable public var textInset: CGFloat {
        get {
            switch textAlignment {
            case .Right : return rightView?.frame.width ?? 0
            default : return leftView?.frame.width ?? 0
            }
        }
        set {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: frame.height))
            switch textAlignment {
            case .Right :
                rightView = view
                rightViewMode = .Always
            default :
                leftView = view
                leftViewMode = .Always
            }
        }
    }

}
