//
//  Coordinator.swift
//  HelloAR
//
//  Created by Mohammad Azam on 4/7/22.
//

import Foundation
import ARKit
import RealityKit


class Coordinator: NSObject, ARSessionDelegate {
    
    weak var view: ARView?
   
    @objc func handleTap(_ recognizer: UITapGestureRecognizer) {
        
        guard let view = self.view else { return }
        let tapLocation = recognizer.location(in: view)
        
        let results = view.raycast(from: tapLocation, allowing: .estimatedPlane, alignment: .horizontal)
        
        if let result = results.first {
            
            // create anchor entity
            
            // add anchor to the scene
        }
    }
}
