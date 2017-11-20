//
//  ViewController.swift
//  RainbowRoad
//
//  Created by Danny Moon on 11/6/17.
//  Copyright © 2017 Danny Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "color", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
}
