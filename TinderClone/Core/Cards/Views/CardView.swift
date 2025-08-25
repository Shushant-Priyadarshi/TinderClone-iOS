//
//  CardView.swift
//  TinderClone
//
//  Created by Shushant  on 24/08/25.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset:CGFloat = 0
    @State private var degress:Double = 0
    
    var body: some View {
        ZStack(alignment: .bottom){
            ZStack (alignment: .top){
                Image(.w1)
                    .resizable()
                    .scaledToFill()
                
                SwipeActionIndicatorView(xOffset: $xOffset, screenCutOff: screenCutOff)
            }

            
            UserInfoView()
                .padding(.horizontal)
      
        }
        .frame(width: CardWidth, height: CardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x:xOffset)
        .rotationEffect(.degrees(degress))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView{
    
    func onDragChanged(_ value:_ChangedGesture<DragGesture>.Value){
        xOffset = value.translation.width
        degress = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value:_ChangedGesture<DragGesture>.Value){
        let width = value.translation.width
        
        if abs(width) <= abs(screenCutOff){
            xOffset = 0
            degress = 0
        }
        
    }
}

 private extension CardView{
    
     var screenCutOff:CGFloat{
         (UIScreen.main.bounds.width / 2) * 1.5
     }
     
    var CardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
     }
     
     var CardHeight: CGFloat {
         UIScreen.main.bounds.height / 1.45
      }
}

#Preview {
    CardView()
}
