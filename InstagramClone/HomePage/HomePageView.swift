//
//  HomePageView.swift
//  InstagramClone
//
//  Created by shubham sharma on 22/11/23.
//

import SwiftUI

struct HomePageView: View {
    @State private var dragOffset: CGFloat = 0.0
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    let profilePictureArray = ["alluarjun","akshaykumar","amitabhbacchan","shahrukhkhan","sahidkapoor","varundhawan"]
    var body: some View {
        VStack{
            HStack{
                Menu {
                    Button("opt 1") {
                        print("first")
                    }
                    Button("opt 1") {
                        print("first")
                    }
                } label: {
                    Text("Instagram")
                        .font(.custom("Billabong", size: 30))
                        .foregroundColor(.black)
                    Image(systemName: "chevron.down")
                        .foregroundColor(.black)
                }
                .menuStyle(.borderlessButton)
                .padding(.leading)
                Spacer()
                NavigationLink {
                    Text("hello")
                } label: {
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                }
                NavigationLink {
                    Text("hello")
                } label: {
                    Image(systemName: "arrow.up.message")
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                
                
            }
            .background(Color(.lightGray))
//MARK: HOME PAGE BODY
            ScrollView(.vertical){
            StoriesScrollView(profilePictures: profilePictureArray)
                
            
                HomePagePostsView()
            }
        
                
                
              
                
            
Spacer()
        }
        
        
       
    }
}

#Preview {
    HomePageView()
}
//                .gesture(
//
//                    DragGesture(minimumDistance: 5)
//                        .onChanged { value in
//                            // Detect the drag direction
//                            print("location \(value.translation.width)")
//                            let translation = value.translation.height
//                            self.dragOffset = translation
//                            print(dragOffset)
//                        }
//                        .onEnded { value in
//                            // Reset the offset when the drag ends
//                            self.dragOffset = 0.0
//                        }
//                )

struct HomePagePostsView: View {
    let width = UIScreen.main.bounds.width

    var body: some View {
        VStack{
            HStack{
                Image("alluarjun")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundStyle(Color.pink)
                    }
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                    .padding(.leading,5)
                
                Text("allu.arjun")
                    .bold()
                    .font(.system(size: 20))
                
                Spacer()
                
                Button(action: {}, label: {
                    Text(":")
                }).padding(.trailing,5)
            }
            
            Image("alluarjun")
                .resizable()
                .frame(width: width)
                .aspectRatio(contentMode: .fit)
            
            HStack{
                
                Button {
                    print("like")
                } label: {
                    Image(systemName: "heart")
                }
                .font(.largeTitle)
                .padding(.horizontal,5)
                
                
                Button {
                    print("like")
                } label: {
                    Image(systemName: "heart")
                }
                .font(.largeTitle)
                
                
                
                Button {
                    print("like")
                } label: {
                    Image(systemName: "heart")
                }.font(.largeTitle)
                    .padding(.horizontal,5)
                
                
                Spacer()
                
                
                Button {
                    print("like")
                } label: {
                    Image(systemName: "heart")
                }.font(.largeTitle)
                    .padding(.horizontal,5)
                
            }
        }
    }
}

struct StoriesScrollView: View {
    var profilePictures : [String]
    var body: some View {
        ScrollView(.horizontal){
            
            HStack(spacing: 10){
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                ForEach(profilePictures, id: \.self){ profile in
                    Image("\(profile)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(lineWidth: 3)
                                .foregroundStyle(Color.pink)
                        }
                    
                    
                }
            }
        }.scrollIndicators(.hidden)
    }
}
