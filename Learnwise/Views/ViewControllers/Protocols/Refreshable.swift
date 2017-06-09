//
//  Refreshable.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 01/05/17.
//  Copyright © 2017 Nineleaps. All rights reserved.
//

import UIKit

@objc protocol Refreshable {
    // refresh control
    var refreshControl: UIRefreshControl? { get set }

    // table view
    @objc optional var tableViewReference: UITableView! { get set }

    // handler method called when the user pulls down to refresh
    @objc optional func handleRefresh(_ sender: Any)
}

extension Refreshable where Self: UIViewController {
    /**
     Install the refresh control on the table view
     */
    func installRefreshControl() {

        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(handleRefresh(_:)), for: .valueChanged)
        self.refreshControl = refreshControl
        tableViewReference?.backgroundView = refreshControl
        if #available(iOS 10.0, *) {
            tableViewReference?.backgroundView = nil
            tableViewReference?.refreshControl = refreshControl
        }
    }

    /**
     End Refreshing for pull to refresh view
     */
    func endRefreshing() {
        if (refreshControl?.isRefreshing)! {
            refreshControl?.endRefreshing()
        }
    }
}
