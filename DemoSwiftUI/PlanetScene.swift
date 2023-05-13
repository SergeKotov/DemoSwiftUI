//
//  PlanetScene.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 11.05.2023.
//

import SceneKit
import SwiftUI

// A simple example of SceneKit's scene with 3D model of Earth

class PlanetScene: SCNScene {
  
  override init() {
      super.init()
      
      background.contents = Color.black.cgColor
    
      let sphereGeometry = SCNSphere(radius: 3)
      
      let earthNode = SCNNode(geometry: sphereGeometry)
      earthNode.geometry?.firstMaterial?.diffuse.contents = UIImage(named:"Diffuse")
      earthNode.geometry?.firstMaterial?.specular.contents = UIImage(named:"Specular")
      earthNode.geometry?.firstMaterial?.emission.contents = UIImage(named:"Emission")
      earthNode.geometry?.firstMaterial?.normal.contents = UIImage(named:"Normal")
      earthNode.geometry?.firstMaterial?.shininess = 50
      
      let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 180), around: SCNVector3(x:0, y:1, z:0), duration: 30)
      let repeatAction = SCNAction.repeatForever(action)
      earthNode.runAction(repeatAction)
      
      let directionalLight = SCNNode()
      directionalLight.light = SCNLight()
      directionalLight.light!.type = .directional
      directionalLight.light!.temperature = 5500
      directionalLight.eulerAngles = SCNVector3(x: 0, y: 0, z: 50)
      
      let cameraNode = SCNNode()
      cameraNode.camera = SCNCamera()
      cameraNode.position = SCNVector3(x: 10, y: 10, z: 3)
      let centerConstraint = SCNLookAtConstraint(target: earthNode)
      cameraNode.constraints = [centerConstraint]
      
      rootNode.addChildNode(cameraNode)
      rootNode.addChildNode(directionalLight)
      rootNode.addChildNode(earthNode)
  }
    
    required init?(coder: NSCoder) {
        fatalError("lol")
    }
}
