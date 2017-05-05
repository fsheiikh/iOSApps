//
//  CancelDelegate.swift
//  15_BucketListDelegation
//
//  Created by User on 5/4/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

protocol CancelSaveDelegate : class {
    func cancelButtonPressed(by controller: UITableViewController)
    func saveButtonPressed(by controller: UITableViewController, with text: String, at itemIndex: NSIndexPath?)
}
