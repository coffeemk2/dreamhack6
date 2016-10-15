//
//  PDAlert.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

import UIKit

public struct PDAlert {
    public typealias PDAlertFetchHandler = (alert: UIAlertController) -> Void
    public typealias PDAlertActionHandler = (action: UIAlertAction, textFields: [UITextField]?) -> Void
    public typealias PDAlertTextFieldConfigurationHandler = (textField: UITextField) -> Void

    let alert: UIAlertController

    public init(title: String?, message: String?, preferredStyle style: UIAlertControllerStyle) {
        alert = UIAlertController(title: title, message: message, preferredStyle: style)
    }
}


/**
 *  Configure alert action ----------------------
 */
extension PDAlert {
    public func addCancel(title: String="Cancel", handler: PDAlertActionHandler? = nil) -> PDAlert {
        let action = UIAlertAction(title: title, style: .Cancel) {
            handler?(action: $0, textFields: self.alert.textFields)
        }
        alert.addAction(action)
        return self
    }

    public func addDestructive(title: String, handler: PDAlertActionHandler? = nil) -> PDAlert {
        let action = UIAlertAction(title: title, style: .Destructive) {
            handler?(action: $0, textFields: self.alert.textFields)
        }
        alert.addAction(action)
        return self
    }

    public func addAction(title: String, handler: PDAlertActionHandler? = nil) -> PDAlert {
        let action = UIAlertAction(title: title, style: .Default) {
            handler?(action: $0, textFields: self.alert.textFields)
        }
        alert.addAction(action)
        return self
    }

    public func addOK(handler: PDAlertActionHandler? = nil) -> PDAlert {
        let action = UIAlertAction(title: "OK", style: .Default) {
            handler?(action: $0, textFields: self.alert.textFields)
        }
        alert.addAction(action)
        return self
    }

    public func addTextField(configurationHandler: PDAlertTextFieldConfigurationHandler? = nil) -> PDAlert {
        alert.addTextFieldWithConfigurationHandler(configurationHandler)
        return self
    }

    public func fetch(handler: PDAlertFetchHandler) -> PDAlert {
        handler(alert: alert)
        return self
    }
}


/**
 *  Show alert action ----------------------
 */
extension PDAlert {
    public func show(presentingVC: UIViewController? = nil, animated: Bool = true, completion: (() -> ())? = nil) {
        guard let displayedVC = presentingVC ?? UIApplication.topViewController() else {
            print("Displayed view controller wasn't found.")
            return
        }

        displayedVC.presentViewController(alert, animated: animated, completion: completion)
    }
}
