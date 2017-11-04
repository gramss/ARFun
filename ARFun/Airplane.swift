//
//  Airplane.swift
//  ARFun
//
//  Created by Matthias Vietz on 04.11.17.
//  Copyright © 2017 Alex. All rights reserved.
//
import ARKit
import SceneKit

class Airplane{
    var airplanescene : SCNScene?
    var airplanenode : SCNNode?
    
    init(_ sceneview: ARSCNView,_ name : String){
        //create Node here
        airplanescene = SCNScene(named: name)!
//        cubeNode.position = SCNVector3(0, 0, -0.2) // SceneKit/AR coordinates are in meters
//        sceneView.scene.rootNode.addChildNode(cubeNode)
        sceneview.scene = airplanescene!
        airplanenode = airplanescene?.rootNode
    }
    let animduration = 0.1
    let movedistance : CGFloat = 5
    func moveLeft(){
        let moveShip = SCNAction.moveBy(x: -movedistance, y: 0, z: 0, duration: animduration)
        let fadeOut = SCNAction.fadeOpacity(to: 0.5, duration: animduration)
        let fadeIn = SCNAction.fadeOpacity(to: 1, duration: animduration)
        let routine = SCNAction.sequence([fadeOut, fadeIn, moveShip])
        airplanenode?.runAction(routine)
    }
    func moveRight(){
        
        let moveShip = SCNAction.moveBy(x: movedistance, y: 0, z: 0, duration: animduration)
        let fadeOut = SCNAction.fadeOpacity(to: 0.5, duration: animduration)
        let fadeIn = SCNAction.fadeOpacity(to: 1, duration: animduration)
        let routine = SCNAction.sequence([fadeOut, fadeIn, moveShip])
        airplanenode?.runAction(routine)
    }
    func moveUp(){
        let moveShip = SCNAction.moveBy(x: 0, y: movedistance, z: 0, duration: animduration)
        let fadeOut = SCNAction.fadeOpacity(to: 0.5, duration: animduration)
        let fadeIn = SCNAction.fadeOpacity(to: 1, duration: animduration)
        let routine = SCNAction.sequence([fadeOut, fadeIn, moveShip])
        airplanenode?.runAction(routine)
    }
    func moveDown(){
        let moveShip = SCNAction.moveBy(x: 0, y: -movedistance, z: 0, duration: animduration)
        let fadeOut = SCNAction.fadeOpacity(to: 0.5, duration: animduration)
        let fadeIn = SCNAction.fadeOpacity(to: 1, duration: animduration)
        let routine = SCNAction.sequence([fadeOut, fadeIn, moveShip])
        airplanenode?.runAction(routine)
    }
}
