//
//  ContentView.swift
//  test2
//
//  Created by Faxin Xu on 2024/1/18.
//

import SwiftUI


struct ContentView: View {
    let yunqi = ["大吉","小吉","凶","中平"]
    @State var select_yunqi:String?
    
    var body: some View {
        
        VStack(spacing: 30) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("今天运气如何？")
                .font(.title)
                .bold()
            if (select_yunqi ?? "") == "凶" {
                Text(select_yunqi ?? "")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                Text("宜：学习｜忌：摆烂")
                    .foregroundColor(.black)
            }
            if (select_yunqi ?? "") == "大吉" {
                Text(select_yunqi ?? "")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.red)
                Text("宜：编程｜忌：学算法")
                    .foregroundColor(.red)
            }
            if (select_yunqi ?? "") == "小吉" {
                Text(select_yunqi ?? "")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.red)
                Text("宜：学文化课｜忌：打游戏")
                    .foregroundColor(.red)
            }
            if (select_yunqi ?? "") == "中平" {
                Text(select_yunqi ?? "")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.green)
                Text("宜：睡觉｜忌：熬夜")
                    .foregroundColor(.green)
            }
            Button("告诉我！") {
                select_yunqi = yunqi.shuffled().filter {
                    $0 != select_yunqi
                }.first
                
            }.font(.title)
                .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}



