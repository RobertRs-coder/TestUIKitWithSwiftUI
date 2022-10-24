//
//  CellRowView.swift
//  TestUIKitWithSwiftUI
//
//  Created by Roberto Rojo Sahuquillo on 24/10/22.
//

import SwiftUI

struct CellRowView: View {
    var numero: Int //Modelo que recibe
    var body: some View {
        VStack{
            Image(systemName: "number.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
                .padding()
            HStack{
                Spacer()
                Text("\(numero)")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
        }
        .background(.orange)
    }
}

struct CellRowView_Previews: PreviewProvider {
    static var previews: some View {
        CellRowView(numero: 1)
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/))
    }
}
