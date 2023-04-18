//
//  CartaoRocha.swift
//  Novo
//
//  Created by Tarik Villalobos on 11/04/23.
//

import SwiftUI

struct CartaoRocha: View {
    var body: some View {
        ZStack {
            Image("rocha")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("MEMBERSHIP")
                        .foregroundColor(Color.white)
                        .font(.title2)
                
                    Spacer()
                    
                    Image(systemName: "bitcoinsign.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35)
                        .foregroundColor(Color.white)
                }.padding()
                Spacer()
                HStack{
                    VStack(alignment: .leading) {
                        Text("JAMES APPLESEED")
                            .foregroundColor(Color.white)
                            .font(.title)
                        Text("UXMISFT.TOOLS")
                            .foregroundColor(Color.white)
                            .font(.title2)
                    }
                    Spacer()
                    
                }.padding()
            }
            .frame(width: 350, height: 200)
            .background(Color.white.opacity(0.5))
            .cornerRadius(20)
            
            
        }
    }
}

struct CartaoRocha_Previews: PreviewProvider {
    static var previews: some View {
        CartaoRocha()
    }
}
