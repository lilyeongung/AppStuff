//
//  BlueTwoView.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/6/24.
//

import SwiftUI

struct BlueTwoView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            Text("\(2)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }    }
}

#Preview {
    BlueTwoView()
}
