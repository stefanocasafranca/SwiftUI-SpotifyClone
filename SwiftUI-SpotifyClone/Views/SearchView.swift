//
//  SearchView.swift
//  SwiftUI-SpotifyClone
//
//  Created by Stefano Casafranca Laos on 6/15/24.
//

import SwiftUI

struct SearchView: View {
    
    
@State private var isVisible = true // Declares isVisible as a state variable.
    
    var body: some View {
        
        if isVisible == true {
            Text("You've Turn your Bitch On") // Only renders when isVisible is true.
        }
        Toggle("Visible Bitch", isOn: $isVisible) // The toggle can update the stored value.
            .padding(100)

        Text("Search for Music Yo")
            .font(.largeTitle)

    }
}

#Preview {
    SearchView()
}
