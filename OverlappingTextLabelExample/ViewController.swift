//
//  ViewController.swift
//  OverlappingTextLabelExample
//
//  Created by Josh Lay on 21/03/2016.
//  Copyright © 2016 Agworld. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var dataSource: [(String, String)] {
        get {
            return [
                ("I am a long text label value that's far too long I believe of course!", "Yes you are a long text label value"),
                ("I am a short text label!", "But I am a fairly long description about the fact that I'm a description?"),
                ("I am a medium length text label!", "But I am a fairly long description about the fact that I'm a description?")
            ]
        }
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        if let aCell = tableView.dequeueReusableCellWithIdentifier("TableViewCell") {
            cell = aCell
        } else {
            cell = UITableViewCell(style: .Value1, reuseIdentifier: "TableViewCell")
        }

        let data = dataSource[indexPath.row]
        cell.textLabel?.text = data.0
        cell.detailTextLabel?.text = data.1

        return cell
    }
}

