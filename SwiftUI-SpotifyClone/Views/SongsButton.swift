//
//  SongsButton.swift
//  SwiftUI-SpotifyClone
//
//  Created by Stefano Casafranca Laos on 7/2/24.
//

import SwiftUI

struct SongsButton: View {
    var body: some View {
        HStack{
            Image(systemName: "timelapse").padding (.trailing,10)
            Text("Y la Felicidad Que")
            Spacer ()
            Image(systemName: "ellipsis")
        }
        .padding (15)
        .background(Color.black)
        .foregroundColor(.white)
    }
}

#Preview {
    SongsButton()
}
