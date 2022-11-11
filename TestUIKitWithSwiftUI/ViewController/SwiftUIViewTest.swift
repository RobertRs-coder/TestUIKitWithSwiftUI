//
//  SwiftUIViewTest.swift
//  TestUIKitWithSwiftUI
//
//  Created by Roberto Rojo Sahuquillo on 24/10/22.
//

import SwiftUI

struct SwiftUIViewTest: View {
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "person")
                .resizable()
                .frame(width: 200, height: 200)
            HStack{
                Spacer()
                Text("Roberto Rojo")
                Spacer()
            }
            Spacer()
        }
        .padding(10)
        .font(.title)
        .foregroundColor(.white)
        .background(.orange)
        .navigationTitle("This is SwiftUI")
    }
}

struct SwiftUIViewTest_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewTest()
    }
}
