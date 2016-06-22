//
//  ViewController.swift
//  Multiples
//
//  Created by Vignesh Kumar Rajasekaran on 6/21/16.
//  Copyright © 2016 Vignesh Kumar Rajasekaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables
    var multipleToAdd = 0
    var sum = 0
    var val1 = 0
    
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var multipleTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var sumLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    
    @IBAction func onPlayBtnClicked(sender: AnyObject) {
        
        if multipleTxt.text != nil && multipleTxt.text != "" {
            logo.hidden = true
            multipleTxt.hidden = true
            playBtn.hidden = true
            
            sumLbl.hidden = false
            addBtn.hidden = false
            
            multipleToAdd = Int(multipleTxt.text!)!
        }
        
        
        
        
    }
    
    
    @IBAction func onAddBtnClicked(sender: AnyObject) {
        
        sum = val1 + multipleToAdd
        
        sumLbl.text = "\(val1)"+" "+"+"+" " + "\(multipleToAdd)"+" "+"="+" "+"\(sum)"
        
        val1 = sum
            
        if isGameOver(){
            restartGame()
        }
        
    }
    
    
    func restartGame(){
        sum = 0
        multipleToAdd = 0
        val1 = 0
        multipleTxt.text = ""
        sumLbl.text = "Press ADD to add"
        
        logo.hidden = false
        multipleTxt.hidden = false
        playBtn.hidden = false
        
        sumLbl.hidden = true
        addBtn.hidden = true
        
    }
    
    func isGameOver() -> Bool{
        if sum >= 50{
            return true
        }
        else{
            return false
            
        }
    }

    
    
    
}

