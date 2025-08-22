//
//  DetailView.swift
//  GrodnoMonuments
//
//  Created by Екатерина Алейник on 11.05.25.
//
import SwiftUI

struct DetailView: View {
    let monument: Monument

    var body: some View {
        VStack(spacing: 16) {
            Image(monument.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text(monument.description)
            Text("Расположение: \(monument.location)")
            Text("Скульптор: \(monument.sculptor)")
        }
        .padding()
        .navigationTitle(monument.name)
    }
}
