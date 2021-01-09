//
//  ViewOne.swift
//  ResponderTest
//
//  Created by Legolas on 2021-01-08.
//

import SwiftUI
import ResponderChain

struct ViewOne: View {
    @EnvironmentObject var chain: ResponderChain
    @State var textOne = ""
    @State var showModal = false
    @State var showTextfield = false

    var body: some View {
        VStack(spacing: 40) {
            if showTextfield {
                TextField("Placeholder", text: $textOne)
                    .responderTag("1")
                    .onAppear {
                        chain.firstResponder = "1"
                    }
                    .onDisappear() {
                        chain.firstResponder = nil
                    }
            }
            
            Button("ShowTextfield: it should popup keyboard") {
                showTextfield.toggle()
            }

            
            Button("ShowModal: it should show modal and popup keyboard") {
                showModal.toggle()
            }.sheet(isPresented: $showModal) {
                ViewTwo(showModal: $showModal)
            }        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewOne()
    }
}
