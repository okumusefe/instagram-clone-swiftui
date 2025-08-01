//
//  FeedView.swift
//  instaCloneApp
//
//  Created by Efe on 30.07.2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{
                    ForEach(0...10, id: \.self) { post in FeedCell()
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image("instalogo1")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                
            }
        }
    }
}

#Preview {
    FeedView()
}
