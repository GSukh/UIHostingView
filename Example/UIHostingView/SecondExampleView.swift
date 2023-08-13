//
//  SecondExampleView.swift
//  UIHostingView_Example
//
//  Created by Grigoriy Sukhorukov on 13.08.2023.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import SwiftUI

struct SecondExampleView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.yellow)
            
            Text("Second Example View")
        }
    }
}
