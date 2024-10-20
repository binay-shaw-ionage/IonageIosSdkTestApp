//
//  ClientScreen.swift
//  IonageIosSdkTestApp
//
//  Created by Binay Shaw on 20/10/24.
//

import SwiftUI
import IonageSDKLibraryTest

struct ClientScreen: View {
    @State private var showScreenB = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Go to Screen B") {
                    showScreenB = true
                }
                .padding()
                
                NavigationLink(
                    destination: SDKView(), // Using ScreenBView from the package
                    isActive: $showScreenB,
                    label: {
                        EmptyView()
                    }
                )
            }
            .navigationTitle("Screen A")
        }
    }
}

#Preview {
    ClientScreen()
}
