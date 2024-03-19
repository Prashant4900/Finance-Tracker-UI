//
//  ContentView.swift
//  Finance Tracker UI
//
//  Created by Prashant Nigam on 18/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("white")
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Total balance")
                        .font(.body)
                    Spacer()
                }
                
                HStack {
                    Text("$24,124")
                        .fontWeight(.black)
                        .font(.largeTitle)
                    Spacer()
                    CircularButton(icon: "bell")
                    CircularButton(icon: "ellipsis")
                }
                
                HStack(spacing: 10) {
                    Text("My Cards")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title2)
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ZStack {
                            Color("pink")
                                .cornerRadius(24)
                                .frame(width: 100, height: 160)
                            
                            Image(systemName: "plus")
                                .font(.system(size: 24, weight: .bold))
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                        
                        ZStack {
                            Color("black")
                                .frame(width: 180, height: 160)
                                .cornerRadius(24)
                            
                            VStack {
                                Spacer()
                                    .frame(height: 20)
                                HStack {
                                    Image("mastercard")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                    Spacer()
                                    Text("**** 9841")
                                        .font(.callout)
                                        .foregroundColor(Color("lightGrey"))
                                }.padding(.horizontal)
                                Spacer()
                                HStack {
                                    Spacer()
                                        .frame(width: 10)
                                    Text("$17,452")
                                        .font(.title)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }.padding(.bottom)
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                        
                        ZStack {
                            Color("lightGrey")
                                .frame(width: 180, height: 160)
                                .cornerRadius(24)
                            
                            VStack {
                                Spacer()
                                    .frame(height: 20)
                                HStack {
                                    Image("visa")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                    Spacer()
                                    Text("**** 9841")
                                        .font(.callout)
                                        .foregroundColor(Color("black"))
                                }.padding(.horizontal)
                                Spacer()
                                HStack {
                                    Spacer()
                                        .frame(width: 10)
                                    Text("$6,672")
                                        .font(.title)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.black)
                                    Spacer()
                                }
                            }.padding(.bottom)
                        }
                    }
                }
                
                HStack {
                    LargeTextButton(
                        icon: "arrow.down.right",
                        label: "Add income"
                    )
                    LargeTextButton(
                        icon: "arrow.up.forward",
                        label: "Add expense"
                    )
                }
                
                HStack {
                    SmallCard(
                        amount: "$5,154",
                        label: "Depts"
                    )
                    
                    Spacer()
                    
                    SmallCard(
                        amount: "$15,000",
                        label: "Savings"
                    )
                }
                
                ZStack {
                    Color("pink")
                        .frame(height: 80)
                        .cornerRadius(20)
                    
                    HStack {
                        Text("Control your finances")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 19))
                        
                        Spacer()
                        
                        ZStack {
                            Color("black")
                                .frame(width: 110, height: 45)
                                .cornerRadius(20)
                            
                            Text("Statistics")
                                .foregroundColor(.white)
                        }
                    }.padding()
                }
                
                ZStack {
                    Color("lightGrey")
                        .frame(height: 150)
                        .cornerRadius(20)
                    
                    VStack {
                        HStack {
                            Text("Expences")
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Image(systemName: "plus")
                        }
                        
                        HStack {
                            IconButton(
                                icon: "wineglass",
                                amount: "$250"
                            )
                            Spacer()
                            IconButton(
                                icon: "cart",
                                amount: "$850"
                            )
                            Spacer()
                            IconButton(
                                icon: "graduationcap",
                                amount: "$1250"
                            )
                            Spacer()
                            IconButton(
                                icon: "house",
                                amount: "$2780"
                            )
                            Spacer()
                            IconButton(
                                icon: "heart",
                                amount: "$790"
                            )
                        }
                    }.padding()
                }
                
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}


struct CircularButton<T> : View where T: StringProtocol {
    
    var backgroundColor: T
    var icon: T
       
    init(backgroundColor: T = "lightGrey", icon: T) {
           self.backgroundColor = backgroundColor
           self.icon = icon
       }
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color("\(backgroundColor)"))
                .frame(width: 50)
            Image(systemName: "\(icon)")
        }
    }
}

struct LargeTextButton<T> : View where T: StringProtocol {
    
    var icon: T
    var label: T
    
    init(icon: T, label: T) {
        self.icon = icon
        self.label = label
    }
    
    var body: some View {
        ZStack {
            Color("lightGrey")
                .frame(height: 75)
                .cornerRadius(16)
            
            HStack {
                Text(label)
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                CircularButton(
                    backgroundColor: "grey",
                    icon: icon
                )
            }
        }
    }
}

struct SmallCard<T> : View where T: StringProtocol {
    
    var amount: T
    var label: T
    
    init(amount: T, label: T) {
        self.amount = amount
        self.label = label
    }
    
    var body: some View {
        ZStack {
            Color("black")
                .frame(height: 85)
                .cornerRadius(20)
            
            VStack() {
                
                HStack {
                    Text(amount)
                        .foregroundColor(Color("white"))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                }.padding(.leading)
                
                HStack {
                    Text(label)
                        .foregroundColor(Color("white"))
                    Spacer()
                }.padding(.leading)
                
                
            }
        }
    }
}

struct IconButton<T> : View where T: StringProtocol {
    
    var icon: T
    var amount: T
    
    init(icon: T, amount: T) {
        self.icon = icon
        self.amount = amount
    }
    
    var body: some View {
        VStack {
            CircularButton(
                backgroundColor: "grey",
                icon: icon
            )
            
            Text(amount)
                .fontWeight(.semibold)
        }
    }
}
