//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Sai Lakshmi on 9/22/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                Image("mascot")
                Text("Learn Code Online")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .opacity(0.7)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.0)) {
                    self.size = 1.1
                    self.opacity = 1.0
                }
                
            }
            .onAppear {
                //asyncAfter does the work after all the main tasks are done(the one above) and then after 1.5 sec it moves to next screen(the content view)
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
