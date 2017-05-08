//
//  PeopleProtocol.swift
//  01_BucketListCrud
//
//  Created by User on 5/8/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

protocol PeopleDelegate : class {
    func SavePressed(by controller: UITableViewController, with text: String, at indexPath: NSIndexPath?)
}
