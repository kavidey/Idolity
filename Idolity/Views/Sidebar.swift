//
//  Sidebar.swift
//  Idolity
//
//  Created by Kavi Dey on 6/19/22.
//

import SwiftUI

struct Sidebar: View {
    @Binding var selection: String?
    
    var body: some View {
        VStack {
            List(selection: $selection) {
                Label("Browse", systemImage: "network")
                    .tag("browse")
                Label("Applications", systemImage: "square.dashed.inset.filled")
                    .tag("applications")
            }
            .listStyle(.sidebar)
            Button("Send Feedback", action: sendFeedback)
                .padding(.bottom)
        }
        .frame(minWidth: 100)
    }
}

func sendFeedback() {
    
}


struct Sidebar_Previews: PreviewProvider {
    
    static var previews: some View {
        Sidebar(selection: .constant(""))
    }
}
