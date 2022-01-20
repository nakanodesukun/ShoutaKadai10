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
        // これはViewに関する知識なので Model には持たせないようが良さそうです
        let identifiers = ["CellRed", "CellGreen", "CellBlue"]
        // identifier 決定の処理をシンプルにしました
        let identifier = identifiers[indexPath.row % identifiers.count]

        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = model.prefectures[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"
        return cell
    }
}
