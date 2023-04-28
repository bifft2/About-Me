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
            Color(.systemPurple)
                            .ignoresSafeArea()
            VStack {
                Image("cat")
                Text("Brianna")
                Button("Learn More!") {
                    showingAlert = true
                }
                .alert("Brianna's cat's name is Forrest!", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
