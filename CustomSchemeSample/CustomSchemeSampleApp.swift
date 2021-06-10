//
//  CustomSchemeSampleApp.swift
//  CustomSchemeSample
//
//  Created by Yusuke Hasegawa on 2021/06/10.
//

import SwiftUI

@main
struct CustomSchemeSampleApp: App {
    
    @State var index: Int = 0
    
    var body: some Scene {
        WindowGroup {
            if self.index == 0 {
                ContentView()
                    .onOpenURL(perform: { url in
                        debugPrint(url)
                        self.index = 1
                    })
            } else {
                SecondView()
            }
        }
    }
}
