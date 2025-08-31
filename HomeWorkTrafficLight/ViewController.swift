//
//  ViewController.swift
//  HomeWorkTrafficLight
//
//  Created by Andrey Zharov on 31.08.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentLightState = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorView.alpha = 0.3
        
        redColorView.layer.cornerRadius = 50
        yellowColorView.layer.cornerRadius = 50
        greenColorView.layer.cornerRadius = 50
        
        startButton.layer.cornerRadius = 10
        startButton.setTitle("START", for: .normal)
    }
    
    private func resetAllLights() {
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorView.alpha = 0.3
    }

    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        if currentLightState > 2 {
            currentLightState = 0
        }
        
        resetAllLights()
        
        switch currentLightState {
        case 0:
            redColorView.alpha = 1
            sender.setTitle("NEXT", for: .normal)
            currentLightState += 1
        case 1:
            yellowColorView.alpha = 1
            currentLightState += 1
        case 2:
            greenColorView.alpha = 1
            currentLightState += 1
        default:
            break
        }
    }
}
