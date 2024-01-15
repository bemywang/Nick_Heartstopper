//
//  ContentView.swift
//  Bi-flag
//
//  Created by Minyu Wang on 15/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var comeOut = false
    var body: some View {
        ZStack {
            BackgroundColorView(comeOut: comeOut)
            HStack {
                VStack{
                    MainView(comeOut: comeOut)
                    Button {
                        comeOut.toggle()
                    } label: {
                        RevealButton(title: comeOut ? "Unreveal" : "Reveal", textColor: comeOut ? Color("ColorTextUnreveal") : .black, backgroundColor: comeOut ? Color("ColorToUnreveal") : .gray)
                        
                    }
                    Spacer()
                }
                
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BackgroundColorView: View {
    var comeOut: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [comeOut ? .pink : .gray, comeOut ? .indigo : .black, comeOut ? .blue : .white]),startPoint: .topLeading,endPoint: .bottomTrailing)
    }
}

struct MainView: View {
    var comeOut: Bool
    var body: some View {
        Spacer()
        Image(comeOut ? "Nick1" : "Nick2")
            .symbolRenderingMode(.multicolor)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 200)
            .clipShape(Circle())
            .shadow(radius: 10)
            .padding()
        Text(comeOut ? "Bi proud ❤️" : "Who Am I?")
            .font(.largeTitle)
            .foregroundColor(.white)
            
        Spacer()

    }
}
