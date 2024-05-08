//
//  GreenThreeView.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/6/24.
//

import SwiftUI

struct GreenThreeView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.green)
            Text("\(3)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

#Preview {
    GreenThreeView()
}
