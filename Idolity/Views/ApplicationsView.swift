//
//  SwiftUIView.swift
//  Idolity
//
//  Created by Kavi Dey on 6/17/22.
//

import SwiftUI

let grideItemSize: CGFloat = 75

struct ApplicationsView: View {
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]

    private var colors: [Color] = [.yellow, .purple, .green]

    private var gridItemLayout = [GridItem(.adaptive(minimum: grideItemSize))]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach((0...100), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                        .frame(width: grideItemSize, height: grideItemSize)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .frame(minWidth: 100, idealWidth: 600, minHeight: 100, idealHeight: 800)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationsView()
    }
}
