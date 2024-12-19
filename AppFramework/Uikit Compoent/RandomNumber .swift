//
//  RandomNumber .swift
//  AppFramework
//
//  Created by Macbook on 09/12/24.
//

import SwiftUI

struct RandomNumber_: View {
    
    @State var array = [2, 5, 7, 8, 9]
    var body: some View {
        VStack {
            List(array, id: \.self) { numbers in
                Text("\(numbers)")
                    .font(.headline)
                }
            
            Button {
                let randomNumber = Int.random(in: 0...1000)
                array.append(randomNumber)
            } label: {
                Text("Genrate random number")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 90)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.buttonBorder)
            }
            .padding()
        }
    }
}

#Preview {
    RandomNumber_()
}
