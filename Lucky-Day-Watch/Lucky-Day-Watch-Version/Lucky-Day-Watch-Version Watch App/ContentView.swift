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
        
        VStack(spacing: 10) {
            Text("今天运气如何？")
                .font(.title3)
                .foregroundColor(.blue)
            
            if (select_yunqi ?? "") == "凶" && select_yunqi != .none {
                Text(select_yunqi ?? "")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                Text("宜:学习|忌:摆烂")
                    .foregroundColor(.white)
                    .bold()
            }
            if (select_yunqi ?? "") == "大吉" && select_yunqi != .none {
                Text(select_yunqi ?? "")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.red)
                Text("宜:编程|忌:学算法")
                    .foregroundColor(.red)
                    .bold()
            }
            if (select_yunqi ?? "") == "小吉" && select_yunqi != .none {
                Text(select_yunqi ?? "")
                    .font(.title3)
                    .foregroundColor(.orange)
                    .bold()
                Text("宜:打竞赛|忌:打游戏")
                    .foregroundColor(.orange)
                    .bold()
            }
            if (select_yunqi ?? "") == "中平" && select_yunqi != .none {
                Text(select_yunqi ?? "")
                    .font(.title3)
                    .foregroundColor(.green)
                    .bold()
                Text("宜:睡觉|忌:熬夜")
                    .foregroundColor(.green)
                    .bold()
            }
            Button("告诉我!") {
                select_yunqi = yunqi.shuffled().filter {
                    $0 != select_yunqi
                }.first
                
            }
            .font(.title)
            .buttonStyle(.automatic)
            .foregroundColor(.green)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}



