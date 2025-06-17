//
//  CustomHeader.swift
//  SampleApp
//
//  Created by Shubhanshu Kumar on 17/06/25.
//

// CustomHeader.swift
import SwiftUI

struct CustomHeader: View {
    var title: String
    var onBack: (() -> Void)?

    var body: some View {
        HStack {
            if let onBack = onBack {
                Button(action: onBack) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Theme.black)
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: 44, height: 44, alignment: .center)
                }
            } else {
                // Reserve space for back button
                Spacer().frame(width: 44)
            }
            Spacer()
            Text(title)
                .font(.headline)
                .foregroundColor(Theme.black)
            Spacer()
            // Reserve space to balance the back button
            Spacer().frame(width: 44)
        }
        .padding(.horizontal)
//        .background(Color.white)
    }
}
