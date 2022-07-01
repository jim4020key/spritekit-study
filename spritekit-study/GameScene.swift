//
//  GameScene.swift
//  spritekit-study
//
//  Created by kimjimin on 2022/07/01.
//

import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        print("You are in the game scene!")
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let box = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
        box.position = location
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        addChild(box)
    }
}
