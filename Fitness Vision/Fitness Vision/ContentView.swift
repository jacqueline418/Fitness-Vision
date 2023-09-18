//
//  ContentView.swift
//  Fitness Vision
//
//  Created by Emma Fu on 2023-09-18.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        NavigationView {
            ZStack{
                // Arbitrary color - feel free to design 
                Color(red: 0.4627, green: 0.8392, blue: 1.0)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Welcome _____ to Fitness Vision!")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                }.padding()
            }
        }
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
