//
//  ContentView.swift
//  SwiftUIDatePicker
//
//  Created by Ramill Ibragimov on 21.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var time = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, hh:mm:ss a"
        return formatter
    }
    
    var body: some View {
        VStack {
            DatePicker(selection: $time,
               label: { Text("")
            }).frame(width: UIScreen.main.bounds.width / 2)
            
            Text("\(time, formatter: dateFormatter)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
