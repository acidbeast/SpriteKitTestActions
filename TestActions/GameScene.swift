//
//  GameScene.swift
//  TestActions
//
//  Created by acidbeast on 3/3/18.
//  Copyright © 2018 Acid Beast. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    

    override func sceneDidLoad() {
        
        let heroScene = SKScene(fileNamed: "Hero")
        let head = heroScene?.childNode(withName: "HeroHead") as! SKSpriteNode
        let testAction = SKAction(named: "HeroTestAction") as! SKAction
        let loop = SKAction.repeatForever(testAction)
        let hero = SKSpriteNode(color: SKColor.white.withAlphaComponent(0) , size: CGSize(width: 50, height: 250))
        let body = SKSpriteNode(color: SKColor.blue, size: CGSize(width: 50, height: 50))
        
        head.removeFromParent()
        hero.addChild(head)
        hero.addChild(body)
        self.addChild(hero)
        
        head.run(loop)
        body.run(loop)
        //hero.run(loop)
        
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {

    }
    
    
}
