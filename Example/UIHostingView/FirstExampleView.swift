//
//  FirstExampleView.swift
//  UIHostingView_Example
//
//  Created by Grigoriy Sukhorukov on 13.08.2023.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import SwiftUI

struct FirstExampleView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.green)
            
            Text("First Example View")
        }
    }
}
