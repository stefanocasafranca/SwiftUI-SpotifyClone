//
//  HomeView.swift
//  SwiftUI-SpotifyClone
//
//  Created by Stefano Casafranca Laos on 6/15/24.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        // Layer 0
        LinearGradient(gradient: Gradient(colors: [Color(red: 61/255, green: 189/255, blue: 115/255), Color.black]),
                       startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        
        ScrollView {
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {            }

        }
        Text("This is the Home Page")
        .font(.largeTitle)
    }
}

#Preview {
    HomePageView()
}
