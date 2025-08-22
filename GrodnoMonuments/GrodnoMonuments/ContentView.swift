//
//  ContentView.swift
//  GrodnoMonuments
//
//  Created by Екатерина Алейник on 11.05.25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("username") var username: String = ""
    @State private var inputName: String = ""

    var body: some View {
        if username.isEmpty {
            VStack {
                Text("Введите имя").font(.title)
                TextField("Имя", text: $inputName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button("Войти") {
                    username = inputName
                }
            }.padding()
        } else {
            MainView()
        }
    }
}
