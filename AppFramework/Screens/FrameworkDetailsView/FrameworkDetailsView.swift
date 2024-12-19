//
//  FrameworkDetailsView.swift
//  AppFramework
//
//  Created by Macbook on 05/12/24.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    @State private var isShowingSafariView = false
    var framework: Framework
    
    var body: some View {
       
        VStack {
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundStyle(.white)
                    .clipShape(.buttonBorder)
            }
            .padding()
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.imageURL) ?? URL(string: "www.apple.com")!)
        }
        
        
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework)
}

