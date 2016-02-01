//
//  ViewController.swift
//  udemy-03-tapper
//
//  Created by David Stroud on 01/02/2016.
//  Copyright © 2016 David Stroud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    var maxTaps: Int = 0 // explicit declaration
    var currentTaps = 0 // implicit declaration
    
    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func OnCoinTapped(sender: UIButton!) {
        
        // update coin taps by 1
        // update label
        // see if max taps has been reached
        
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            // need to restart
            restartGame()
            
            
            
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {

            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            tapBtn.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
        
    }
    
    func restartGame() {
        
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        tapBtn.hidden = true
        tapsLabel.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        
        if currentTaps >= maxTaps {
            return true
        }
        return false
        
    }
    
    func updateTapsLabel() {
        
        tapsLabel.text = "\(currentTaps) Taps"
    
    }

}

