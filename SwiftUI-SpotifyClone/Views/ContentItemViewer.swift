//
//  ContentItemViewer.swift
//  SwiftUI-SpotifyClone
//
//  Created by Stefano Casafranca Laos on 6/15/24.
//

import SwiftUI

struct ContentItemViewer: View {
    var body: some View {
        ZStack{
            VStack {
            Spacer ()
                . frame(height: 50)
            Image (systemName: "music.note")
            Text ("Title")
            Text ("SubTitle")
            Spacer ()
            
        }
            VStack {
                Spacer ()
                    .frame(width:50, height:200)
                    .background(Color.red.opacity(0.3))
                
                Spacer ()
                    .frame(width: 200)
                    .background(Color.blue)
                
                
            }
            
        }
    }
}

#Preview {
    ContentItemViewer()
}
