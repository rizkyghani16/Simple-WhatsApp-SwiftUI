//
//  ContentView.swift
//  Form
//
//  Created by Tricha Dwinasty on 08/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Status()
                .tabItem {
                    Image(systemName: "network")
                    Text("Status")
                }
            Calls()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Calls")
                }
            Camera()
                .tabItem {
                    Image(systemName: "camera")
                    Text("Camera")
                }
            Chats()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("Chats")
                }
            Settings()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct Profile: View {
        var body: some View{
            Text("Contoh doang")
        }
    }
    
    struct Status: View {
        var body: some View{
            Text("Status ini teh")
        }
    }
    
    struct Calls: View {
        var body: some View{
            Text("Call ini teh")
        }
    }
    
    struct Camera: View {
        var body: some View{
            Text("Camera ini teh")
        }
    }
    
    struct Edit: View {
        var body: some View{
            Text("Contoh edit")
        }
    }
    
    struct Chats: View {
        var body: some View{
            NavigationView{
                Chat()
                    .navigationTitle("Chats")
                    .navigationBarItems(
                        leading:
                            HStack{
                                NavigationLink(
                                    destination: Edit(),
                                    label: {
                                        Text("Edit")
                                    })
                            },
                        trailing:
                            HStack{
                                NavigationLink(
                                    destination: Edit(),
                                    label: {
                                        Image(systemName: "square.and.pencil")
                                    })
                            }
                    )
            }
        }
    }
    
    struct Settings: View {
        var body: some View {
            NavigationView{
                Form{
                    // Section Foto
                    NavigationLink(destination: Profile()){
                        Section(){
                            HStack{
                                Image("foto")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                //Nama & status
                                VStack(alignment:.leading){
                                    Text("Tricha Dwinasty").font(.headline)
                                    Text("Busy").font(.subheadline)
                                }
                            }
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                        }
                    }
                    //Setting 1
                    Section{
                        NavigationLink(destination: Profile()){
                            HStack(spacing: 20){
                                Image(systemName: "star.fill")
                                    .frame(width: 35, height: 35)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                VStack{
                                    Text("Starred Messages").font(.callout)
                                }
                            }
                        }
                        NavigationLink(destination: Profile()){
                            HStack(spacing: 20){
                                Image(systemName: "tv")
                                    .frame(width: 35, height: 35)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                VStack{
                                    Text("WhatsApp Web/Desktop").font(.callout)
                                }
                            }
                        }
                    }
                    //Setting 2
                    Section{
                        NavigationLink(destination: Profile()){
                            HStack(spacing: 20){
                                Image(systemName: "key.fill")
                                    .frame(width: 35, height: 35)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                VStack{
                                    Text("Account").font(.callout)
                                }
                            }
                        }
                        NavigationLink(destination: Profile()){
                            HStack(spacing: 20){
                                Image(systemName: "phone.circle")
                                    .frame(width: 35, height: 35)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                VStack{
                                    Text("Chats").font(.callout)
                                }
                            }
                        }
                        NavigationLink(destination: Profile()){
                            HStack(spacing: 20){
                                Image(systemName: "bell.badge")
                                    .frame(width: 35, height: 35)
                                    .background(Color.red)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                VStack{
                                    Text("Notifications").font(.callout)
                                }
                            }
                        }
                        NavigationLink(destination: Profile()){
                            HStack(spacing: 20){
                                Image(systemName: "arrow.up.arrow.down")
                                    .frame(width: 35, height: 35)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                VStack{
                                    Text("Data and Storage Usage").font(.callout)
                                }
                            }
                        }
                    }
                    //Setting 3
                    Section{
                        NavigationLink(destination: Profile()){
                            HStack(spacing: 20){
                                Image(systemName: "info")
                                    .frame(width: 35, height: 35)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                VStack{
                                    Text("Help").font(.callout)
                                }
                            }
                        }
                        NavigationLink(destination: Profile()){
                            HStack(spacing: 20){
                                Image(systemName: "heart.fill")
                                    .frame(width: 35, height: 35)
                                    .background(Color.red)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                VStack{
                                    Text("Tell a Friend").font(.callout)
                                }
                            }
                        }
                    }
                }.navigationTitle("Settings")
            }
        }
    }
}

struct Chat: View {
    var body: some View{
        List{
            // Chat 1
            VStack{
                HStack(spacing: 20){
                    Image("foto")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.all, 5)
                    VStack(alignment: .leading){
                        Text("Tricha Dwinasty").font(.headline)
                        HStack{
                            Text("maneh dimana dul?").font(.subheadline)
                        }
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("23:00")
                            .foregroundColor(.blue)
                            .font(.subheadline)
                            .padding(.trailing, 5)
                        ZStack {
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 25, height: 25)
                                .cornerRadius(25)
                                .padding(.trailing, 5)
                            
                            Text("2")
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                                .font(.subheadline)
                        }
                    }
                }
            }
            
            // Chat 2
            VStack{
                HStack(spacing: 20){
                    Image("jokowi")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.all, 5)
                    VStack(alignment: .leading){
                        Text("Jokowi").font(.headline)
                        HStack{
                            Text("Mabar moal? Aing geus di lobby").font(.subheadline)
                        }
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("21:14")
                            .foregroundColor(.blue)
                            .font(.subheadline)
                            .padding(.trailing, 5)
                            .padding(.bottom, 53)
                        //                        ZStack {
                        //                            Rectangle()
                        //                                .fill(Color.blue)
                        //                                .frame(width: 25, height: 25)
                        //                                .cornerRadius(25)
                        //                                .padding(.trailing, 5)
                        //
                        //                                Text("2")
                        //                                    .foregroundColor(.white)
                        //                                    .padding(.trailing, 5)
                        //                                    .font(.subheadline)
                        //                                }
                    }
                }
            }
        }
    }
}
