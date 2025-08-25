//
//  UserInfoView.swift
//  TinderClone
//
//  Created by Shushant  on 25/08/25.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text("Kavya")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("20")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("DEBUG: show profile here...")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }

            }
            
            Text("Student")
                .font(.subheadline)
                .lineLimit(2)
        }
        .padding()
        .foregroundStyle(.white)
        .background(
            LinearGradient(colors: [.black, .clear], startPoint: .bottom, endPoint: .top)
        )
    }
}

#Preview {
    UserInfoView()
}
