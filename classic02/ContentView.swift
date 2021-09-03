//
//  ContentView.swift
//  classic02
//
//  Created by kai wen chen on 2021/9/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("學習如何Git版控")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.top,40)
            Spacer()//填充空白
            Text("好好學會版控日後方便很多")
                .padding(.bottom,40)
        }
        .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .frame(maxWidth:.infinity)
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
        .cornerRadius(16)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
