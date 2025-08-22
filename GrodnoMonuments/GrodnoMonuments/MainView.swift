//
//  MainView.swift
//  GrodnoMonuments
//
//  Created by Екатерина Алейник on 11.05.25.
//
import SwiftUI

struct MainView: View {
    @State private var monuments: [Monument] = []

    let columns = [GridItem(.adaptive(minimum: 150))]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(monuments) { monument in
                        NavigationLink(destination: DetailView(monument: monument)) {
                            VStack {
                                Image(monument.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 120)
                                Text(monument.name)
                            }
                        }
                    }
                }.padding()
            }
            .navigationTitle("Памятники Гродно")
        }
        .onAppear {
            if let url = Bundle.main.url(forResource: "Monuments", withExtension: "plist"),
               let data = try? Data(contentsOf: url) {
                let decoder = PropertyListDecoder()
                monuments = (try? decoder.decode([Monument].self, from: data)) ?? []
            }
        }
    }
}
