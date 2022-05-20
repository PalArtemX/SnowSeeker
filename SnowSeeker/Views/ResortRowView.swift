//
//  ResortRowView.swift
//  SnowSeeker
//
//  Created by Artem Paliutin on 20/05/2022.
//

import SwiftUI

struct ResortRowView: View {
    let resort: Resort
    
    var body: some View {
        HStack {
            Image(resort.country)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 25)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 0.3)
                )
            
            VStack(alignment: .leading) {
                Text(resort.name)
                    .font(.headline)
                Text("\(resort.runs) runs")
                    .foregroundColor(.secondary)
            }
        }
    }
}










struct ResortRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ResortRowView(resort: previewResort)
                .previewLayout(.sizeThatFits)
            ResortRowView(resort: previewResort)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
