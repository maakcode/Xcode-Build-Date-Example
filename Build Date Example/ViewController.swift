//
//  ViewController.swift
//  Build Date Example
//
//  Created by Makeeyaf on 2021/12/24.
//

import UIKit

class ViewController: UIViewController {

    let versionLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(versionLabel)
        versionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            versionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            versionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

        let text = Bundle.main.object(forInfoDictionaryKey: "BUILD_DATE") as? String ?? "nil"

        versionLabel.text = text.isEmpty ? "empty" : text
    }
}

