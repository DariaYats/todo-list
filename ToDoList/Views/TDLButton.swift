//
//  TDLButtom.swift
//  ToDoList
//
//  Created by Дарья Яцынюк on 22.02.2024.
//

import SwiftUI

struct TDLButtom: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TDLButtom(title: "Value", background: .blue) {
        //
    }
}
