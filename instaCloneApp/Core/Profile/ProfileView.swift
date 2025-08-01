//
//  ProfileView.swift
//  instaCloneApp
//
//  Created by Efe on 24.07.2025.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    //HEADER
                    VStack(spacing:10){
                        // Profil Karti
                        HStack{
                            Image("ben")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            HStack(spacing: 8){
                                UserStatView(value: 10, title: "Posts")
                                UserStatView(value: 10, title: "Followers")
                                UserStatView(value: 10, title: "Following")
                                
                            }
                            .padding(.horizontal)
                            
                            
                        }
                        // Isim ve aciklama kismi
                        VStack(alignment: .leading, spacing: 4){
                            Text("Efe Okumus")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Merhaba selamlar selamlar.")
                                .font(.footnote)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        // Edit Profil Butonu
                        Button{
                            
                        }label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .frame(width: 360, height: 32)
                                .foregroundStyle(Color("buttonTextColor"))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(.gray, lineWidth: 1)
                                )
                        }
                        Divider()
                    }
                    
                    // POSTS
                    LazyVGrid(columns: gridItems, spacing: 1 ){
                        ForEach(0...20, id: \.self){ index in
                            Image("ben")
                                .resizable()
                                .scaledToFill()
                        }
                    }
                    
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{} label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(Color("buttonTextColor"))
                    }
                }
            }
        }
            
            
    }
}

#Preview {
    ProfileView()
}
