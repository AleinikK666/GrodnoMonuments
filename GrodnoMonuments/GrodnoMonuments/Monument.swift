//
//  Monument.swift
//  GrodnoMonuments
//
//  Created by Екатерина Алейник on 11.05.25.
//
import Foundation

struct Monument: Codable, Identifiable {
    let id: UUID
    let name: String
    let description: String
    let location: String
    let sculptor: String
    let imageName: String
}
