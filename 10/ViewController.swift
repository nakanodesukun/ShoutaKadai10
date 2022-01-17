//
//  ViewController.swift
//  10
//
//  Created by 中野翔太 on 2022/01/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    private let model = Model()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.prefectures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var identifier = ""

        switch indexPath.row % 3 {
        case 0: identifier = model.backgroundColor[0]
        case 1: identifier = model.backgroundColor[1]
        case 2: identifier = model.backgroundColor[2]
        default:
            break
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = model.prefectures[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"
        return cell
    }
}
