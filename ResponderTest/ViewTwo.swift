//
//  ViewTwo.swift
//  ResponderTest
//
//  Created by Legolas on 2021-01-08.
//

import SwiftUI
import ResponderChain

struct ViewTwo: View {
    @EnvironmentObject var chain: ResponderChain
    @State var textTwo = ""
    @Binding var showModal: Bool
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $textTwo)
                .responderTag("2")
            
            Button("Dismiss") {
                showModal.toggle()
                chain.firstResponder = nil
            }
        }
        .onAppear {
            DispatchQueue.main.async {
                chain.firstResponder = "2"
            }
        }
    }
}
