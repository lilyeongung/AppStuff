//
//  RedOneView.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/6/24.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            Text("\(1)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

#Preview {
    RedOneView()
}
