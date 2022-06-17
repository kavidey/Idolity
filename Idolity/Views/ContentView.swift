//
//  ContentView.swift
//  Idolity
//
//  Created by Kavi Dey on 6/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Sidebar()
            Text("App List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Sidebar: View {
    var body: some View {
        List() {
            Label("Browse", systemImage: "network")
            Label("Applications", systemImage: "square.dashed.inset.filled")
        }
        Button("Send Feedback", action: sendFeedback)
            .padding(.bottom)
    }
}

func sendFeedback() {
    
}
