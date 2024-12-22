//
//  ContentView.swift
//  SwiftUI-SpotifyClone
//
//  Created by Stefano Casafranca Laos on 6/15/24.
//
import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomePageView()
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }

            NavigationView {
                SearchView()
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }

            NavigationView {
                ContentItemViewer()
            }
            .tabItem {
                Label("Playlist", systemImage: "rectangle.stack.badge.play.fill")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}*/
