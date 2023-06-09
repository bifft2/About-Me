//
//  ContentView.swift
//  About Me
//
//  Created by Brianna Ifft on 4/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        ZStack {
            Color(.systemMint)
                            .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20.0) {
                Image("cat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                Text("Brianna")
                    .font(.title)
                Button("Learn More!") {
                    showingAlert = true
                }
                .padding(.all, 5.0)
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("More About Me"), message: Text("My cat's name is Forrest, and I love being cozy! Reading or playing a board game by a fireplace is one of my favorite things to do :)"), dismissButton: .default(Text("Got it!")))
                }
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
