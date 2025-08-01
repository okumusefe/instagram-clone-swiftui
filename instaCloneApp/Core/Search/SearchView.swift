//
//  SearchView.swift
//  instaCloneApp
//
//  Created by Efe on 1.08.2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{
                    ForEach(0...20, id: \.self) { user in
                        HStack{
                            Image("ben")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(alignment: .leading){
                                Text("efeokumus")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color("buttonTextColor"))
                                Text("Efe Okumuş")
                                    .foregroundStyle(Color("buttonTextColor"))
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
