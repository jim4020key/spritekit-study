//
//  ContentView.swift
//  spritekit-study
//
//  Created by kimjimin on 2022/07/01.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 216, height: 216)
        scene.scaleMode = .fill
        return scene
    }
    
    var body: some View {
        SpriteView(scene: self.scene)
            .frame(width: 256, height: 256)
            .ignoresSafeArea()
    }
}
