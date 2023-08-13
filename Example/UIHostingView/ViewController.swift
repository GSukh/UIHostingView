//
//  ViewController.swift
//  UIHostingView
//
//  Created by Grigoriy Sukhorukov on 08/12/2023.
//  Copyright (c) 2023 Grigoriy Sukhorukov. All rights reserved.
//

import UIKit
import UIHostingView
import SwiftUI

class ViewController: UIViewController {
    
    private let firstView = UIHostingView(view: FirstExampleView())
    private let secondView = UIHostingView(view: SecondExampleView())
    private let thirdView = UIHostingView {
        ZStack {
            AnyView(
                Rectangle()
                    .fill(Color.blue)
            )
            
            Text("Third Example View")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)

        firstView.translatesAutoresizingMaskIntoConstraints = false
        secondView.translatesAutoresizingMaskIntoConstraints = false
        thirdView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            firstView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            firstView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            firstView.topAnchor.constraint(equalTo: view.topAnchor),
            firstView.bottomAnchor.constraint(equalTo: secondView.topAnchor),

            secondView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            secondView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            secondView.bottomAnchor.constraint(equalTo: thirdView.topAnchor),
            secondView.heightAnchor.constraint(equalTo: firstView.heightAnchor),

            thirdView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            thirdView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            thirdView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            thirdView.heightAnchor.constraint(equalTo: secondView.heightAnchor)
        ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

