//
//  ViewController.swift
//  Housie
//
//  Created by Harshvardhan Mestha on 5/30/20.
//  Copyright © 2020 Harshvardhan Mestha. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
   
    @IBOutlet weak var I1: UIButton!
    @IBOutlet weak var I2: UIButton!
    @IBOutlet weak var I3: UIButton!
    @IBOutlet weak var I4: UIButton!
    @IBOutlet weak var I5: UIButton!
    @IBOutlet weak var I6: UIButton!
    @IBOutlet weak var I7: UIButton!
    @IBOutlet weak var I8: UIButton!
    @IBOutlet weak var I9: UIButton!
    @IBOutlet weak var I10: UIButton! 
    @IBOutlet weak var I11: UIButton!
    @IBOutlet weak var I12: UIButton!
    @IBOutlet weak var I13: UIButton!
    @IBOutlet weak var I14: UIButton!
    @IBOutlet weak var I15: UIButton!
    @IBOutlet weak var I16: UIButton!
    @IBOutlet weak var I17: UIButton!
    @IBOutlet weak var I18: UIButton!
    @IBOutlet weak var I19: UIButton!
    @IBOutlet weak var I20: UIButton!
    @IBOutlet weak var I21: UIButton!
    @IBOutlet weak var I22: UIButton!
    @IBOutlet weak var I23: UIButton!
    @IBOutlet weak var I24: UIButton!
    @IBOutlet weak var I25: UIButton!
    @IBOutlet weak var I26: UIButton!
    @IBOutlet weak var I27: UIButton!
    @IBOutlet weak var I28: UIButton!
    @IBOutlet weak var I29: UIButton!
    @IBOutlet weak var I30: UIButton!
    @IBOutlet weak var I31: UIButton!
    @IBOutlet weak var I32: UIButton!
    @IBOutlet weak var I33: UIButton!
    @IBOutlet weak var I34: UIButton!
    @IBOutlet weak var I35: UIButton!
    @IBOutlet weak var I36: UIButton!
    @IBOutlet weak var I37: UIButton!
    @IBOutlet weak var I38: UIButton!
    @IBOutlet weak var I39: UIButton!
    @IBOutlet weak var I40: UIButton!
    @IBOutlet weak var I41: UIButton!
    @IBOutlet weak var I42: UIButton!
    @IBOutlet weak var I43: UIButton!
    @IBOutlet weak var I44: UIButton!
    @IBOutlet weak var I45: UIButton!
    @IBOutlet weak var I46: UIButton!
    @IBOutlet weak var I47: UIButton!
    @IBOutlet weak var I48: UIButton!
    @IBOutlet weak var I49: UIButton!
    @IBOutlet weak var I50: UIButton!
    @IBOutlet weak var I51: UIButton!
    @IBOutlet weak var I52: UIButton!
    @IBOutlet weak var I53: UIButton!
    @IBOutlet weak var I54: UIButton!
    @IBOutlet weak var I55: UIButton!
    @IBOutlet weak var I56: UIButton!
    @IBOutlet weak var I57: UIButton!
    @IBOutlet weak var I58: UIButton!
    @IBOutlet weak var I59: UIButton!
    @IBOutlet weak var I60: UIButton!
    @IBOutlet weak var I61: UIButton!
    @IBOutlet weak var I62: UIButton!
    @IBOutlet weak var I63: UIButton!
    @IBOutlet weak var I64: UIButton!
    @IBOutlet weak var I65: UIButton!
    @IBOutlet weak var I66: UIButton!
    @IBOutlet weak var I67: UIButton!
    @IBOutlet weak var I68: UIButton!
    @IBOutlet weak var I69: UIButton!
    @IBOutlet weak var I70: UIButton!
    @IBOutlet weak var I71: UIButton!
    @IBOutlet weak var I72: UIButton!
    @IBOutlet weak var I73: UIButton!
    @IBOutlet weak var I74: UIButton!
    @IBOutlet weak var I75: UIButton!
    @IBOutlet weak var I76: UIButton!
    @IBOutlet weak var I77: UIButton!
    @IBOutlet weak var I78: UIButton!
    @IBOutlet weak var I79: UIButton!
    @IBOutlet weak var I80: UIButton!
    @IBOutlet weak var I81: UIButton!
    @IBOutlet weak var I82: UIButton!
    @IBOutlet weak var I83: UIButton!
    @IBOutlet weak var I84: UIButton!
    @IBOutlet weak var I85: UIButton!
    @IBOutlet weak var I86: UIButton!
    @IBOutlet weak var I87: UIButton!
    @IBOutlet weak var I88: UIButton!
    @IBOutlet weak var I89: UIButton!
    @IBOutlet weak var I90: UIButton!
    @IBOutlet weak var I91: UIButton!
    @IBOutlet weak var I92: UIButton!
    @IBOutlet weak var I93: UIButton!
    @IBOutlet weak var I94: UIButton!
    @IBOutlet weak var I95: UIButton!
    @IBOutlet weak var I96: UIButton!
    @IBOutlet weak var I97: UIButton!
    @IBOutlet weak var I98: UIButton!
    @IBOutlet weak var I99: UIButton!
    @IBOutlet weak var I100: UIButton!
    
    

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
   
    
     
    lazy var btns  = [I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,I32,I33,I34,I35,I36,I37,I38,I39,I40,I41,I42,I43,I44,I45,I46,I47,I48,I49,I50,I51,I52,I53,I54,I55,I56,I57,I58,I59,I60,I61,I62,I63,I64,I65,I66,I67,I68,I69,I70,I71,I72,I73,I74,I75,I76,I77,I78,I79,I80,I81,I82,I83,I84,I85,I86,I87,I88,I89,I90,I91,I92,I93,I94,I95,I96,I97,I98,I99,I100]

    
    @IBAction func draw(_ sender: Any) {
       
        winmsg(title: "Are you sure", message: "")
        
    }
    func winmsg(title:String,message:String){
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {(action) in
        
        
        var x = self.btns.randomElement()
        x.unsafelyUnwrapped!.backgroundColor = .red
        
        self.btns.remove(at: self.btns.firstIndex(of: x!)!)
        
        alert.dismiss(animated: true, completion: nil)}))
    self.present(alert,animated: true)}
  }
