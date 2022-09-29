//
//  ContentView.swift
//  SplashScreen
//
//  Created by Sai Lakshmi on 9/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Text("Home screen of LCO app")
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 30))
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
