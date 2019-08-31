//
//  ContentView.swift
//  SwiftUIList WatchKit Extension
//
//  Created by Patrick Stevens on 8/28/19.
//  Copyright © 2019 Patrick Stevens. All rights reserved.
//

import SwiftUI

struct AnimalModel: Identifiable {
    var id = UUID()
    var Name: String
}

struct ContentView: View {
    
    @State var animals: [AnimalModel] = [AnimalModel(Name: "Dog"),
                                         AnimalModel(Name: "Cat"),
                                         AnimalModel(Name: "Bird"),
                                         AnimalModel(Name: "Fish"),
                                         AnimalModel(Name: "Monkey")]
    
    
    var body: some View {
        List {
            ForEach(animals) { animal in
                Text("\(animal.Name)")
            }.onMove{ self.animals.move(fromOffsets: $0, toOffset: $1)}
                .onDelete{ self.animals.remove(atOffsets: $0) }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
