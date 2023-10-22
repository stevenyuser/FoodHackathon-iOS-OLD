//
//  AuthenticationView.swift
//  FoodHackathon-iOS
//
//  Created by Steven Yu on 10/21/23.
//

import SwiftUI
import Resolver

struct AuthenticationView: View {
    @InjectedObject var authManager: FirebaseAuthenticationManager
    
    @State private var showSignUp: Bool = false
    @State private var showSignIn: Bool = false
    
    var body: some View {
        VStack {
            Image("LogoColor")
                .frame(width: 300, height: 300)
                .padding(30)
            
            Button {
                showSignUp.toggle()
            } label: {
                Text("Sign Up")
            }
            .font(.title3)
            .fontWeight(.semibold)
            .padding(.vertical, 20)
            .padding(.horizontal, 60)
            .padding()
            
            Button {
                showSignIn.toggle()
            } label: {
                Text("Sign In")
            }
            .font(.title3)
            .fontWeight(.semibold)
            .padding(.vertical, 20)
            .padding(.horizontal, 60)
            .padding()
        }
        .sheet(isPresented: $showSignUp) {
            SignUpView()
        }
        .sheet(isPresented: $showSignIn) {
            SignInView()
        }
    }
}
