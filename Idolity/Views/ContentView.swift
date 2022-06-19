//
//  ContentView.swift
//  Idolity
//
//  Created by Kavi Dey on 6/16/22.
//

import SwiftUI

private enum DisplayMode: Int {
  case list
  case grid
}

struct ContentView: View {
    @SceneStorage("sidebar") var selection: String?
    
    var body: some View {
        NavigationView {
            Sidebar(selection: $selection)
            if (selection == "browse") {
                Text("browse")
            } else {
                ApplicationsView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
