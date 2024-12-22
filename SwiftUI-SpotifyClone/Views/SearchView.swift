//
//  SearchView.swift
//  SwiftUI-SpotifyClone
//
//  Created by Stefano Casafranca Laos on 6/15/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = "" // State for the search bar

    // Sample categories for the grid
    let categories: [(String, AnyView)] = [
        ("Podcasts", AnyView(
            Image("EnPuntaH")
                .resizable()
                .scaledToFill()
                .frame(height: 100)
                .cornerRadius(8)
        )),
        ("Made for You", AnyView(
            Color.blue
                .frame(height: 100)
                .cornerRadius(8)
        )),
        ("New Releases", AnyView(
            Color.orange
                .frame(height: 100)
                .cornerRadius(8)
        )),
        ("Charts", AnyView(
            Color.green
                .frame(height: 100)
                .cornerRadius(8)
        )),
        ("Genres", AnyView(
            Color.purple
                .frame(height: 100)
                .cornerRadius(8)
        )),
        ("Discover", AnyView(
            Color.pink
                .frame(height: 100)
                .cornerRadius(8)
        )),
        ("Live Events", AnyView(
            Color.yellow
                .frame(height: 100)
                .cornerRadius(8)
        )),
        ("Fitness", AnyView(
            Color.teal
                .frame(height: 100)
                .cornerRadius(8)
        ))
    ]

       
       

    var body: some View {
        VStack {
            // Search Bar
            HStack {
                TextField("Search", text: $searchText)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .foregroundColor(searchText.isEmpty ? .gray : .black) // Change text color dynamically


                Button(action: {
                    // Action for search button (if needed)
                }) {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.large)
                        .foregroundColor(.gray)
                        .padding(.trailing,20)
                }
            }
            .padding(.top, 10)
            .padding(.bottom, 40)

            // Scrollable Content
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Browse All")
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)

                    // Categories Grid
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(categories, id: \.0) { category in
                            ZStack {
                                category.1 // Background color
                                    .frame(height: 100)
                                    .cornerRadius(8)

                                Text(category.0)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all)) // Spotify-like dark theme
        .foregroundColor(.white) // Set text color to white
    }
}

#Preview {
    SearchView()
}
