//
//  AppDelegate2.swift
//  ForgetMeNot.real
//
//  Created by Amit Bhat on 7/19/20.
//  Copyright © 2020 alisha bridgehacks. All rights reserved.
//


import GameplayKit

class EndGameState: GKState {
    
    // MARK: - Properties
    
    weak var scene: GameScene?
    
    // MARK: - Initializers
    
    init(scene: GameScene) {
        self.scene = scene
        super.init()
    }
    
    // MARK: - Methods
    
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass == StartGameState.self
    }
    
    override func didEnter(from previousState: GKState?) {
        updateGameState()
    }
    
    func updateGameState() {
        let resetNode = self.scene?.childNode(withName: Constants.reset)
        resetNode?.isHidden = false
        resetNode?.run(SKAction.fadeAlpha(to: 1.0, duration: 1.0))
    }
}
