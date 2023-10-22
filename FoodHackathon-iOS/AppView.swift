//
//  AppView.swift
//  FoodHackathon-iOS
//
//  Created by Steven Yu on 10/21/23.
//

import SwiftUI
import Resolver

struct AppView: View {
    @InjectedObject var authManager: FirebaseAuthenticationManager
    
    var body: some View {
        VStack {
            Text("Hello, World...!")
            
            Button {
                Task {
                    await authManager.signOut()
                }
            } label: {
                Text("Sign Out")
            }
        }
    }
}

#Preview {
    AppView()
}
