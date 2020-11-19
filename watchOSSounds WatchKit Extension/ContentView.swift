//
//  ContentView.swift
//  watchOSSounds WatchKit Extension
//
//  Created by Cloutier, Vincent on 2020-11-19.
//

import SwiftUI

struct ContentView: View {
    @State var timer:Timer?
    var body: some View {
        VStack {
            HStack{
                Text(.foregroundColor(timer==nil ? "Sound On" : "Sound Off")
                Image(systemName:"speaker")
            }.foregroundColor(timer==nil ? .red : .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
