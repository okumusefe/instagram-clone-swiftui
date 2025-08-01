//
//  FeedCell.swift
//  instaCloneApp
//
//  Created by Efe on 30.07.2025.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            // Profil fotografi ve kullanici adi
            HStack{
                Image("ben")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("efeokumus")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("buttonTextColor"))
                Spacer()
            }
            .padding(.leading, 8)
            // Post gorseli
            Image("ben")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // Action buttonlari
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")
                }
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(Color("buttonTextColor"))
            // Begeni sayisi ve like
            Text("300 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            // Aciklama kismi
            HStack{
                Text("efeokumus")
                    .fontWeight(.semibold) +
                Text("Merhaba, ben performans pazarlama uzmaniyim.")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("10h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    FeedCell()
}
