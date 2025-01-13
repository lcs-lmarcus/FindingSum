//
//  SumVIew.swift
//  FindingSum
//
//  Created by Marcus Li on 2025-01-13.
//

import SwiftUI

struct SumView: View {
    
    // MARK: Stored properties
    @State var upper: Int = 1
    @State var lower: Int = 1
    
        
    // MARK: Computed properties
    var sum: Int {
        return upper + lower
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack {
                HStack {
                    Spacer()
                    Text ("\(upper)")
                        .font(.system(size: 48))
                }
                
                Stepper(value: $upper, label: {
                    Text ("select first example")
                    })
                Text ("+")
                    .font(.system(size: 48))
                HStack {
                    Spacer()
                    Text ("\(lower)")
                        .font(.system(size: 48))
                }
                
                Stepper(value: $lower, label: {
                    Text ("select second example")
                            })
                Divider()
                
                HStack {
                    Spacer()
                    Text("\(sum)")
                        .font(.system(size: 70))
                }
            }
            
//            HStack(alignment: .top) {
// 
//
//                Text ("(\(upper))")
//                    .font(.system(size: 96))
//                
// 
//                Text("2")
//                    .font(.system(size: 96))
// 
//                Text("=")
//                    .font(.system(size: 96))
// 
//                Text("\(squared)")
//                    .font(.system(size: 96))
//            }
//            .lineLimit(1)
//            .minimumScaleFactor(0.5)
//            
//            Stepper(value: $upper, label: {
//                Text ("select first example")
//            })

//            
                        
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SumView()
}
