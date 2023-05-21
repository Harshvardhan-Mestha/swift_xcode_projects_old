//
//  ViewController.swift
//  Snakes and Ladders
//
//  Created by Harshvardhan Mestha on 8/25/18.
//  Copyright © 2018 Harshvardhan Mestha. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var I1: UIImageView!
    @IBOutlet weak var I2: UIImageView!
    @IBOutlet weak var I3: UIImageView!
    @IBOutlet weak var I4: UIImageView!
    @IBOutlet weak var I5: UIImageView!
    @IBOutlet weak var I6: UIImageView!
    @IBOutlet weak var I7: UIImageView!
    @IBOutlet weak var I8: UIImageView!
    @IBOutlet weak var I9: UIImageView!
    @IBOutlet weak var I10: UIImageView!
    @IBOutlet weak var I11: UIImageView!
    @IBOutlet weak var I12: UIImageView!
    @IBOutlet weak var I13: UIImageView!
    @IBOutlet weak var I14: UIImageView!
    @IBOutlet weak var I15: UIImageView!
    @IBOutlet weak var I16: UIImageView!
    @IBOutlet weak var I17: UIImageView!
    @IBOutlet weak var I18: UIImageView!
    @IBOutlet weak var I19: UIImageView!
    @IBOutlet weak var I20: UIImageView!
    @IBOutlet weak var I21: UIImageView!
    @IBOutlet weak var I22: UIImageView!
    @IBOutlet weak var I23: UIImageView!
    @IBOutlet weak var I24: UIImageView!
    @IBOutlet weak var I25: UIImageView!
    @IBOutlet weak var I26: UIImageView!
    @IBOutlet weak var I27: UIImageView!
    @IBOutlet weak var I28: UIImageView!
    @IBOutlet weak var I29: UIImageView!
    @IBOutlet weak var I30: UIImageView!
    @IBOutlet weak var I31: UIImageView!
    @IBOutlet weak var I32: UIImageView!
    @IBOutlet weak var I33: UIImageView!
    @IBOutlet weak var I34: UIImageView!
    @IBOutlet weak var I35: UIImageView!
    @IBOutlet weak var I36: UIImageView!
    @IBOutlet weak var I37: UIImageView!
    @IBOutlet weak var I38: UIImageView!
    @IBOutlet weak var I39: UIImageView!
    @IBOutlet weak var I40: UIImageView!
    @IBOutlet weak var I41: UIImageView!
    @IBOutlet weak var I42: UIImageView!
    @IBOutlet weak var I43: UIImageView!
    @IBOutlet weak var I44: UIImageView!
    @IBOutlet weak var I45: UIImageView!
    @IBOutlet weak var I46: UIImageView!
    @IBOutlet weak var I47: UIImageView!
    @IBOutlet weak var I48: UIImageView!
    @IBOutlet weak var I49: UIImageView!
    @IBOutlet weak var I50: UIImageView!
    @IBOutlet weak var I51: UIImageView!
    @IBOutlet weak var I52: UIImageView!
    @IBOutlet weak var I53: UIImageView!
    @IBOutlet weak var I54: UIImageView!
    @IBOutlet weak var I55: UIImageView!
    @IBOutlet weak var I56: UIImageView!
    @IBOutlet weak var I57: UIImageView!
    @IBOutlet weak var I58: UIImageView!
    @IBOutlet weak var I59: UIImageView!
    @IBOutlet weak var I60: UIImageView!
    @IBOutlet weak var I61: UIImageView!
    @IBOutlet weak var I62: UIImageView!
    @IBOutlet weak var I63: UIImageView!
    @IBOutlet weak var I64: UIImageView!
    @IBOutlet weak var I65: UIImageView!
    @IBOutlet weak var I66: UIImageView!
    @IBOutlet weak var I67: UIImageView!
    @IBOutlet weak var I68: UIImageView!
    @IBOutlet weak var I69: UIImageView!
    @IBOutlet weak var I70: UIImageView!
    @IBOutlet weak var I71: UIImageView!
    @IBOutlet weak var I72: UIImageView!
    @IBOutlet weak var I73: UIImageView!
    @IBOutlet weak var I74: UIImageView!
    @IBOutlet weak var I75: UIImageView!
    @IBOutlet weak var I76: UIImageView!
    @IBOutlet weak var I77: UIImageView!
    @IBOutlet weak var I78: UIImageView!
    @IBOutlet weak var I79: UIImageView!
    @IBOutlet weak var I80: UIImageView!
    @IBOutlet weak var I81: UIImageView!
    @IBOutlet weak var I82: UIImageView!
    @IBOutlet weak var I83: UIImageView!
    @IBOutlet weak var I84: UIImageView!
    @IBOutlet weak var I85: UIImageView!
    @IBOutlet weak var I86: UIImageView!
    @IBOutlet weak var I87: UIImageView!
    @IBOutlet weak var I88: UIImageView!
    @IBOutlet weak var I89: UIImageView!
    @IBOutlet weak var I90: UIImageView!
    @IBOutlet weak var I91: UIImageView!
    @IBOutlet weak var I92: UIImageView!
    @IBOutlet weak var I93: UIImageView!
    @IBOutlet weak var I94: UIImageView!
    @IBOutlet weak var I95: UIImageView!
    @IBOutlet weak var I96: UIImageView!
    @IBOutlet weak var I97: UIImageView!
    @IBOutlet weak var I98: UIImageView!
    @IBOutlet weak var I99: UIImageView!
    @IBOutlet weak var I100: UIImageView!
    @IBOutlet weak var pld: UIImageView!
    @IBOutlet weak var pls: UIImageView!
    @IBOutlet weak var aid: UIImageView!
    @IBOutlet weak var ais: UIImageView!
    
    
    var d = 1
    var b = 1
    var pos = 1
    var posAI = 1
    var x = arc4random_uniform(6)+1
    var y = arc4random_uniform(6)+1
    override func viewDidLoad() {
        super.viewDidLoad()
        if pos == 1 && posAI == 1 {I1.image = UIImage(named: "op1")}
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func test(_ sender: Any) {
      adv()
      loc()
      winloss()
   }
    
    func adv(){
        var diff = 100 - pos
       x = arc4random_uniform(6)+1
        if(x<diff){
                pos = d.advanced(by: Int(x))
                d =  d.advanced(by: Int(x))
            
                if x==6 {//if 6 is rolled
                    x = arc4random_uniform(6)+1
                    
                    pos = d.advanced(by: Int(x))
                    d = d.advanced(by: Int(x))}
            }
        if x>diff {
           x = 0
            pos = d.advanced(by: Int(x))
            d = d.advanced(by: Int(x))
            
        }
        if pos>=100 {
            pos = pos - (pos-100)
        }
       if(x==diff){
        
            pos = d.advanced(by: Int(x))
            d =  d.advanced(by: Int(x))
        }
        
        
        
        print("    ")
        print(pos)
        print("    ")
        
        var diffai = 100 - posAI
        y = arc4random_uniform(6)+1
        if(y<diffai)
        {
            posAI = b.advanced(by: Int(y))
            b =  b.advanced(by: Int(y))
            if y==6 {
                y = arc4random_uniform(6)+1
                
                
                posAI = b.advanced(by: Int(y))
                b = b.advanced(by: Int(y))}
            
        }
        if y>diffai {
          y = 0
            posAI = b.advanced(by: Int(y))
            b = b.advanced(by: Int(y))
            
        }
        if posAI>100 {
            posAI = posAI - (posAI-100)
        }
        if(y==diffai){
            
            posAI = b.advanced(by: Int(y))
            b =  b.advanced(by: Int(y))
        }
       
        
        
        
        print("    ")
        print(posAI)
        print("    ")
        
        
        
       
       
        if pos==14 {x=22
            pos = d.advanced(by: Int(x))
            d = d.advanced(by: Int(x))
            loc()}
        if posAI==14 {y = 22
            posAI = b.advanced(by: Int(y))
            b  = b.advanced(by: Int(y))
            loc()}
        if pos==47 {x = 24
            pos = d.advanced(by: Int(x))
            d = d.advanced(by: Int(x))
            loc()}
        if posAI==47 {y = 24
            posAI = b.advanced(by: Int(y))
            b  = b.advanced(by: Int(y))
            loc()}
        if pos==60 {x = 18
            pos = d.advanced(by: Int(x))
            d = d.advanced(by: Int(x))
            loc()}
        if posAI==60 {y = 18
            posAI = b.advanced(by: Int(y))
            b  = b.advanced(by: Int(y))
            loc()}
        if pos==73 {x = 22
            pos = d.advanced(by: Int(x))
            d = d.advanced(by: Int(x))
            loc()}
        if posAI==73 {y = 22
            posAI = b.advanced(by: Int(y))
            b = b.advanced(by: Int(y))
            loc()}
        if pos == 42 {x = 23
            pos = d - Int(x)
            d = d - Int(x)
            loc()}
        if posAI == 42 {y = 23
            posAI = b - Int(y)
            b = b - Int(y)
            loc()}
        if pos==50 {x = 22
            pos = d - Int(x)
            d = d - Int(x)
            loc()}
        if posAI == 50 {y = 22
            posAI  = b - Int(y)
            b = b - Int(y)
            loc() }
        if pos==75 {x = 17
            pos = d - Int(x)
            d = d - Int(x)
            loc()}
        if posAI==75 {y = 17
            posAI  = b - Int(y)
            b = b - Int(y)
            loc()}
        if pos==96 {x = 13
            pos = d - Int(x)
            d = d - Int(x)
            loc()}
        if posAI==96 {y = 13
            posAI  = b - Int(y)
            b = b - Int(y)
            loc()}
  
    }
    
    
    func loc(){
        if pos == 1 && posAI == 1 {I1.image = UIImage(named: "op1")}
        else if pos == 1 {I1.image = UIImage(named: "p1")}
        else if posAI == 1 {I1.image = UIImage(named: "o1")}
        else {I1.image = UIImage(named: "1")}
        if pos == 2 && posAI == 2 {I2.image = UIImage(named: "op2")}
        else if pos == 2 {I2.image = UIImage(named: "p2")}
        else if posAI == 2 {I2.image = UIImage(named: "o2")}
        else {I2.image = UIImage(named: "2")}
        if pos == 3 && posAI == 3{I3.image = UIImage(named:"op3")}
        else if posAI == 3 {I3.image = UIImage(named: "o3")}
        else if pos == 3 {I3.image = UIImage(named: "p3")}
        else {I3.image = UIImage(named: "3")}
        if pos == 4 && posAI == 4{I4.image = UIImage(named:"op4")}
        else if posAI == 4 {I4.image = UIImage(named: "o4")}
        else if pos == 4 {I4.image = UIImage(named: "p4")}
        else {I4.image = UIImage(named: "4")}
        if pos == 5 && posAI == 5{I5.image = UIImage(named:"op5")}
        else if posAI == 5 {I5.image = UIImage(named: "o5")}
        else if pos == 5 {I5.image = UIImage(named: "p5")}
        else {I5.image = UIImage(named: "5")}
        if pos == 6 && posAI == 6{I6.image = UIImage(named:"op6")}
        else if posAI == 6 {I6.image = UIImage(named: "o6")}
        else if pos == 6 {I6.image = UIImage(named: "p6")}
        else {I6.image = UIImage(named: "6")}
        if pos == 7 && posAI == 7{I7.image = UIImage(named:"op7")}
        else if posAI == 7 {I7.image = UIImage(named: "o7")}
        else if pos == 7 {I7.image = UIImage(named: "p7")}
        else {I7.image = UIImage(named: "7")}
        if pos == 8 && posAI == 8{I8.image = UIImage(named:"op8")}
        else if posAI == 8 {I8.image = UIImage(named: "o8")}
        else if pos == 8 {I8.image = UIImage(named: "p8")}
        else {I8.image = UIImage(named: "8")}
        if pos == 9 && posAI == 9{I9.image = UIImage(named:"op9")}
        else if posAI == 9 {I9.image = UIImage(named: "o9")}
        else if pos == 9 {I9.image = UIImage(named: "p9")}
        else {I9.image = UIImage(named: "9")}
        if pos == 10 && posAI == 10{I10.image = UIImage(named:"op10")}
        else if posAI == 10 {I10.image = UIImage(named: "o10")}
        else if pos == 10 {I10.image = UIImage(named: "p10")}
        else {I10.image = UIImage(named: "10")}
        if pos == 11 && posAI == 11{I11.image = UIImage(named:"op11")}
        else if posAI == 11 {I11.image = UIImage(named: "o11")}
        else if pos == 11 {I11.image = UIImage(named: "p11")}
        else {I11.image = UIImage(named: "11")}
        if pos == 12 && posAI == 12{I12.image = UIImage(named:"op12")}
        else if posAI == 12 {I12.image = UIImage(named: "o12")}
        else if pos == 12 {I12.image = UIImage(named: "p12")}
        else {I12.image = UIImage(named: "12")}
        if pos == 13 && posAI == 13{I13.image = UIImage(named:"op13")}
        else if posAI == 13 {I13.image = UIImage(named: "o13")}
        else if pos == 13 {I13.image = UIImage(named: "p13")}
        else {I13.image = UIImage(named: "13")}
        if pos == 14 && posAI == 14{I14.image = UIImage(named:"op14")}
        else if posAI == 14 {I14.image = UIImage(named: "o14")}
        else if pos == 14 {I14.image = UIImage(named: "p14")}
        else {I14.image = UIImage(named: "14")}
        if pos == 15 && posAI == 15{I15.image = UIImage(named:"op15")}
        else if posAI == 15 {I15.image = UIImage(named: "o15")}
        else if pos == 15 {I15.image = UIImage(named: "p15")}
        else {I15.image = UIImage(named: "15")}
        if pos == 16 && posAI == 16{I16.image = UIImage(named:"op16")}
        else if posAI == 16 {I16.image = UIImage(named: "o16")}
        else if pos == 16 {I16.image = UIImage(named: "p16")}
        else {I16.image = UIImage(named: "16")}
        if pos == 17 && posAI == 17{I17.image = UIImage(named:"op17")}
        else if posAI == 17 {I17.image = UIImage(named: "o17")}
        else if pos == 17 {I17.image = UIImage(named: "p17")}
        else {I17.image = UIImage(named: "17")}
        if pos == 18 && posAI == 18{I18.image = UIImage(named:"op18")}
        else if posAI == 18 {I18.image = UIImage(named: "o18")}
        else if pos == 18 {I18.image = UIImage(named: "p18")}
        else {I18.image = UIImage(named: "18")}
        if pos == 19 && posAI == 19{I19.image = UIImage(named:"op19")}
        else if posAI == 19 {I19.image = UIImage(named: "o19")}
        else if pos == 19 {I19.image = UIImage(named: "p19")}
        else {I19.image = UIImage(named: "19")}
        if pos == 20 && posAI == 20{I20.image = UIImage(named:"op20")}
        else if posAI == 20 {I20.image = UIImage(named: "o20")}
        else if pos == 20 {I20.image = UIImage(named: "p20")}
        else {I20.image = UIImage(named: "20")}
        if pos == 21 && posAI == 21{I21.image = UIImage(named:"op21")}
        else if posAI == 21 {I21.image = UIImage(named: "o21")}
        else if pos == 21 {I21.image = UIImage(named: "p21")}
        else {I21.image = UIImage(named: "21")}
        if pos == 22 && posAI == 22{I22.image = UIImage(named:"op22")}
        else if posAI == 22 {I22.image = UIImage(named: "o22")}
        else if pos == 22 {I22.image = UIImage(named: "p22")}
        else {I22.image = UIImage(named: "22")}
        if pos == 23 && posAI == 23{I23.image = UIImage(named:"op23")}
        else if posAI == 23 {I23.image = UIImage(named: "o23")}
        else if pos == 23 {I23.image = UIImage(named: "p23")}
        else {I23.image = UIImage(named: "23")}
        if pos == 24 && posAI == 24{I24.image = UIImage(named:"op24")}
        else if posAI == 24 {I24.image = UIImage(named: "o24")}
        else if pos == 24 {I24.image = UIImage(named: "p24")}
        else {I24.image = UIImage(named: "24")}
        if pos == 25 && posAI == 25{I25.image = UIImage(named:"op25")}
        else if posAI == 25 {I25.image = UIImage(named: "o25")}
        else if pos == 25 {I25.image = UIImage(named: "p25")}
        else {I25.image = UIImage(named: "25")}
        if pos == 26 && posAI == 26{I26.image = UIImage(named:"op26")}
        else if posAI == 26 {I26.image = UIImage(named: "o26")}
        else if pos == 26 {I26.image = UIImage(named: "p26")}
        else {I26.image = UIImage(named: "26")}
        if pos == 27 && posAI == 27{I27.image = UIImage(named:"op27")}
        else if posAI == 27 {I27.image = UIImage(named: "o27")}
        else if pos == 27 {I27.image = UIImage(named: "p27")}
        else {I27.image = UIImage(named: "27")}
        if pos == 28 && posAI == 28{I28.image = UIImage(named:"op28")}
        else if posAI == 28 {I28.image = UIImage(named: "o28")}
        else if pos == 28 {I28.image = UIImage(named: "p28")}
        else {I28.image = UIImage(named: "28")}
        if pos == 29 && posAI == 29{I29.image = UIImage(named:"op29")}
        else if posAI == 29 {I29.image = UIImage(named: "o29")}
        else if pos == 29 {I29.image = UIImage(named: "p29")}
        else {I29.image = UIImage(named: "29")}
        if pos == 30 && posAI == 30{I30.image = UIImage(named:"op30")}
        else if posAI == 30 {I30.image = UIImage(named: "o30")}
        else if pos == 30 {I30.image = UIImage(named: "p30")}
        else {I30.image = UIImage(named: "30")}
        if pos == 31 && posAI == 31{I31.image = UIImage(named:"op31")}
        else if posAI == 31 {I31.image = UIImage(named: "o31")}
        else if pos == 31 {I31.image = UIImage(named: "p31")}
        else {I31.image = UIImage(named: "31")}
        if pos == 32 && posAI == 32{I32.image = UIImage(named:"op32")}
        else if posAI == 32 {I32.image = UIImage(named: "o32")}
        else if pos == 32 {I32.image = UIImage(named: "p32")}
        else {I32.image = UIImage(named: "32")}
        if pos == 33 && posAI == 33{I33.image = UIImage(named:"op33")}
        else if posAI == 33 {I33.image = UIImage(named: "o33")}
        else if pos == 33 {I33.image = UIImage(named: "p33")}
        else {I33.image = UIImage(named: "33")}
        if pos == 34 && posAI == 34{I34.image = UIImage(named:"op34")}
        else if posAI == 34 {I34.image = UIImage(named: "o34")}
        else if pos == 34 {I34.image = UIImage(named: "p34")}
        else {I34.image = UIImage(named: "34")}
        if pos == 35 && posAI == 35{I35.image = UIImage(named:"op35")}
        else if posAI == 35 {I35.image = UIImage(named: "o35")}
        else if pos == 35 {I35.image = UIImage(named: "p35")}
        else {I35.image = UIImage(named: "35")}
        if pos == 36 && posAI == 36{I36.image = UIImage(named:"op36")}
        else if posAI == 36 {I36.image = UIImage(named: "o36")}
        else if pos == 36 {I36.image = UIImage(named: "p36")}
        else {I36.image = UIImage(named: "36")}
        if pos == 37 && posAI == 37{I37.image = UIImage(named:"op37")}
        else if posAI == 37 {I37.image = UIImage(named: "o37")}
        else if pos == 37 {I37.image = UIImage(named: "p37")}
        else {I37.image = UIImage(named: "37")}
        if pos == 38 && posAI == 38{I38.image = UIImage(named:"op38")}
        else if posAI == 38 {I38.image = UIImage(named: "o38")}
        else if pos == 38 {I38.image = UIImage(named: "p38")}
        else {I38.image = UIImage(named: "38")}
        if pos == 39 && posAI == 39{I39.image = UIImage(named:"op39")}
        else if posAI == 39 {I39.image = UIImage(named: "o39")}
        else if pos == 39 {I39.image = UIImage(named: "p39")}
        else {I39.image = UIImage(named: "39")}
        if pos == 40 && posAI == 40{I40.image = UIImage(named:"op40")}
        else if posAI == 40 {I40.image = UIImage(named: "o40")}
        else if pos == 40 {I40.image = UIImage(named: "p40")}
        else {I40.image = UIImage(named: "40")}
        if pos == 41 && posAI == 41{I41.image = UIImage(named:"op41")}
        else if posAI == 41 {I41.image = UIImage(named: "o41")}
        else if pos == 41 {I41.image = UIImage(named: "p41")}
        else {I41.image = UIImage(named: "41")}
        if pos == 42 && posAI == 42{I42.image = UIImage(named:"op42")}
        else if posAI == 42 {I42.image = UIImage(named: "o42")}
        else if pos == 42 {I42.image = UIImage(named: "p42")}
        else {I42.image = UIImage(named: "42")}
        if pos == 43 && posAI == 43{I43.image = UIImage(named:"op43")}
        else if posAI == 43 {I43.image = UIImage(named: "o43")}
        else if pos == 43 {I43.image = UIImage(named: "p43")}
        else {I43.image = UIImage(named: "43")}
        if pos == 44 && posAI == 44{I44.image = UIImage(named:"op44")}
        else if posAI == 44 {I44.image = UIImage(named: "o44")}
        else if pos == 44 {I44.image = UIImage(named: "p44")}
        else {I44.image = UIImage(named: "44")}
        if pos == 45 && posAI == 45{I45.image = UIImage(named:"op45")}
        else if posAI == 45 {I45.image = UIImage(named: "o45")}
        else if pos == 45 {I45.image = UIImage(named: "p45")}
        else {I45.image = UIImage(named: "45")}
        if pos == 46 && posAI == 46{I46.image = UIImage(named:"op46")}
        else if posAI == 46 {I46.image = UIImage(named: "o46")}
        else if pos == 46 {I46.image = UIImage(named: "p46")}
        else {I46.image = UIImage(named: "46")}
        if pos == 47 && posAI == 47{I47.image = UIImage(named:"op47")}
        else if posAI == 47 {I47.image = UIImage(named: "o47")}
        else if pos == 47 {I47.image = UIImage(named: "p47")}
        else {I47.image = UIImage(named: "47")}
        if pos == 48 && posAI == 48{I48.image = UIImage(named:"op48")}
        else if posAI == 48 {I48.image = UIImage(named: "o48")}
        else if pos == 48 {I48.image = UIImage(named: "p48")}
        else {I48.image = UIImage(named: "48")}
        if pos == 49 && posAI == 49{I49.image = UIImage(named:"op49")}
        else if posAI == 49 {I49.image = UIImage(named: "o49")}
        else if pos == 49 {I49.image = UIImage(named: "p49")}
        else {I49.image = UIImage(named: "49")}
        if pos == 50 && posAI == 50{I50.image = UIImage(named:"op50")}
        else if posAI == 50 {I50.image = UIImage(named: "o50")}
        else if pos == 50 {I50.image = UIImage(named: "p50")}
        else {I50.image = UIImage(named: "50")}
        if pos == 51 && posAI == 51{I51.image = UIImage(named:"op51")}
        else if posAI == 51 {I51.image = UIImage(named: "o51")}
        else if pos == 51 {I51.image = UIImage(named: "p51")}
        else {I51.image = UIImage(named: "51")}
        if pos == 52 && posAI == 52{I52.image = UIImage(named:"op52")}
        else if posAI == 52 {I52.image = UIImage(named: "o52")}
        else if pos == 52 {I52.image = UIImage(named: "p52")}
        else {I52.image = UIImage(named: "52")}
        if pos == 53 && posAI == 53{I53.image = UIImage(named:"op53")}
        else if posAI == 53 {I53.image = UIImage(named: "o53")}
        else if pos == 53 {I53.image = UIImage(named: "p53")}
        else {I53.image = UIImage(named: "53")}
        if pos == 54 && posAI == 54{I54.image = UIImage(named:"op54")}
        else if posAI == 54 {I54.image = UIImage(named: "o54")}
        else if pos == 54 {I54.image = UIImage(named: "p54")}
        else {I54.image = UIImage(named: "54")}
        if pos == 55 && posAI == 55{I55.image = UIImage(named:"op55")}
        else if posAI == 55 {I55.image = UIImage(named: "o55")}
        else if pos == 55 {I55.image = UIImage(named: "p55")}
        else {I55.image = UIImage(named: "55")}
        if pos == 56 && posAI == 56{I56.image = UIImage(named:"op56")}
        else if posAI == 56 {I56.image = UIImage(named: "o56")}
        else if pos == 56 {I56.image = UIImage(named: "p56")}
        else {I56.image = UIImage(named: "56")}
        if pos == 57 && posAI == 57{I57.image = UIImage(named:"op57")}
        else if posAI == 57 {I57.image = UIImage(named: "o57")}
        else if pos == 57 {I57.image = UIImage(named: "p57")}
        else {I57.image = UIImage(named: "57")}
        if pos == 58 && posAI == 58{I58.image = UIImage(named:"op58")}
        else if posAI == 58 {I58.image = UIImage(named: "o58")}
        else if pos == 58 {I58.image = UIImage(named: "p58")}
        else {I58.image = UIImage(named: "58")}
        if pos == 59 && posAI == 59{I59.image = UIImage(named:"op59")}
        else if posAI == 59 {I59.image = UIImage(named: "o59")}
        else if pos == 59 {I59.image = UIImage(named: "p59")}
        else {I59.image = UIImage(named: "59")}
        if pos == 60 && posAI == 60{I60.image = UIImage(named:"op60")}
        else if posAI == 60 {I60.image = UIImage(named: "o60")}
        else if pos == 60 {I60.image = UIImage(named: "p60")}
        else {I60.image = UIImage(named: "60")}
        if pos == 61 && posAI == 61{I61.image = UIImage(named:"op61")}
        else if posAI == 61 {I61.image = UIImage(named: "o61")}
        else if pos == 61 {I61.image = UIImage(named: "p61")}
        else {I61.image = UIImage(named: "61")}
        if pos == 62 && posAI == 62{I62.image = UIImage(named:"op62")}
        else if posAI == 62 {I62.image = UIImage(named: "o62")}
        else if pos == 62 {I62.image = UIImage(named: "p62")}
        else {I62.image = UIImage(named: "62")}
        if pos == 63 && posAI == 63{I63.image = UIImage(named:"op63")}
        else if posAI == 63 {I63.image = UIImage(named: "o63")}
        else if pos == 63 {I63.image = UIImage(named: "p63")}
        else {I63.image = UIImage(named: "63")}
        if pos == 64 && posAI == 64{I64.image = UIImage(named:"op64")}
        else if posAI == 64 {I64.image = UIImage(named: "o64")}
        else if pos == 64 {I64.image = UIImage(named: "p64")}
        else {I64.image = UIImage(named: "64")}
        if pos == 65 && posAI == 65{I65.image = UIImage(named:"op65")}
        else if posAI == 65 {I65.image = UIImage(named: "o65")}
        else if pos == 65 {I65.image = UIImage(named: "p65")}
        else {I65.image = UIImage(named: "65")}
        if pos == 66 && posAI == 66{I66.image = UIImage(named:"op66")}
        else if posAI == 66 {I66.image = UIImage(named: "o66")}
        else if pos == 66 {I66.image = UIImage(named: "p66")}
        else {I66.image = UIImage(named: "66")}
        if pos == 67 && posAI == 67{I67.image = UIImage(named:"op67")}
        else if posAI == 67 {I67.image = UIImage(named: "o67")}
        else if pos == 67 {I67.image = UIImage(named: "p67")}
        else {I67.image = UIImage(named: "67")}
        if pos == 68 && posAI == 68{I68.image = UIImage(named:"op68")}
        else if posAI == 68 {I68.image = UIImage(named: "o68")}
        else if pos == 68 {I68.image = UIImage(named: "p68")}
        else {I68.image = UIImage(named: "68")}
        if pos == 69 && posAI == 69{I69.image = UIImage(named:"op69")}
        else if posAI == 69 {I69.image = UIImage(named: "o69")}
        else if pos == 69 {I69.image = UIImage(named: "p69")}
        else {I69.image = UIImage(named: "69")}
        if pos == 70 && posAI == 70{I70.image = UIImage(named:"op70")}
        else if posAI == 70 {I70.image = UIImage(named: "o70")}
        else if pos == 70 {I70.image = UIImage(named: "p70")}
        else {I70.image = UIImage(named: "70")}
        if pos == 71 && posAI == 71{I71.image = UIImage(named:"op71")}
        else if posAI == 71 {I71.image = UIImage(named: "o71")}
        else if pos == 71 {I71.image = UIImage(named: "p71")}
        else {I71.image = UIImage(named: "71")}
        if pos == 72 && posAI == 72{I72.image = UIImage(named:"op72")}
        else if posAI == 72 {I72.image = UIImage(named: "o72")}
        else if pos == 72 {I72.image = UIImage(named: "p72")}
        else {I72.image = UIImage(named: "72")}
        if pos == 73 && posAI == 73{I73.image = UIImage(named:"op73")}
        else if posAI == 73 {I73.image = UIImage(named: "o73")}
        else if pos == 73 {I73.image = UIImage(named: "p73")}
        else {I73.image = UIImage(named: "73")}
        if pos == 74 && posAI == 74{I74.image = UIImage(named:"op74")}
        else if posAI == 74 {I74.image = UIImage(named: "o74")}
        else if pos == 74 {I74.image = UIImage(named: "p74")}
        else {I74.image = UIImage(named: "74")}
        if pos == 75 && posAI == 75{I75.image = UIImage(named:"op75")}
        else if posAI == 75 {I75.image = UIImage(named: "o75")}
        else if pos == 75 {I75.image = UIImage(named: "p75")}
        else {I75.image = UIImage(named: "75")}
        if pos == 76 && posAI == 76{I76.image = UIImage(named:"op76")}
        else if posAI == 76 {I76.image = UIImage(named: "o76")}
        else if pos == 76 {I76.image = UIImage(named: "p76")}
        else {I76.image = UIImage(named: "76")}
        if pos == 77 && posAI == 77{I77.image = UIImage(named:"op77")}
        else if posAI == 77 {I77.image = UIImage(named: "o77")}
        else if pos == 77 {I77.image = UIImage(named: "p77")}
        else {I77.image = UIImage(named: "77")}
        if pos == 78 && posAI == 78{I78.image = UIImage(named:"op78")}
        else if posAI == 78 {I78.image = UIImage(named: "o78")}
        else if pos == 78 {I78.image = UIImage(named: "p78")}
        else {I78.image = UIImage(named: "78")}
        if pos == 79 && posAI == 79{I79.image = UIImage(named:"op79")}
        else if posAI == 79 {I79.image = UIImage(named: "o79")}
        else if pos == 79 {I79.image = UIImage(named: "p79")}
        else {I79.image = UIImage(named: "79")}
        if pos == 80 && posAI == 80{I80.image = UIImage(named:"op80")}
        else if posAI == 80 {I80.image = UIImage(named: "o80")}
        else if pos == 80 {I80.image = UIImage(named: "p80")}
        else {I80.image = UIImage(named: "80")}
        if pos == 81 && posAI == 81{I81.image = UIImage(named:"op81")}
        else if posAI == 81 {I81.image = UIImage(named: "o81")}
        else if pos == 81 {I81.image = UIImage(named: "p81")}
        else {I81.image = UIImage(named: "81")}
        if pos == 82 && posAI == 82{I82.image = UIImage(named:"op82")}
        else if posAI == 82 {I82.image = UIImage(named: "o82")}
        else if pos == 82 {I82.image = UIImage(named: "p82")}
        else {I82.image = UIImage(named: "82")}
        if pos == 83 && posAI == 83{I83.image = UIImage(named:"op83")}
        else if posAI == 83 {I83.image = UIImage(named: "o83")}
        else if pos == 83 {I83.image = UIImage(named: "p83")}
        else {I83.image = UIImage(named: "83")}
        if pos == 84 && posAI == 84{I84.image = UIImage(named:"op84")}
        else if posAI == 84 {I84.image = UIImage(named: "o84")}
        else if pos == 84 {I84.image = UIImage(named: "p84")}
        else {I84.image = UIImage(named: "84")}
        if pos == 85 && posAI == 85{I85.image = UIImage(named:"op85")}
        else if posAI == 85 {I85.image = UIImage(named: "o85")}
        else if pos == 85 {I85.image = UIImage(named: "p85")}
        else {I85.image = UIImage(named: "85")}
        if pos == 86 && posAI == 86{I86.image = UIImage(named:"op86")}
        else if posAI == 86 {I86.image = UIImage(named: "o86")}
        else if pos == 86 {I86.image = UIImage(named: "p86")}
        else {I86.image = UIImage(named: "86")}
        if pos == 87 && posAI == 87{I87.image = UIImage(named:"op87")}
        else if posAI == 87 {I87.image = UIImage(named: "o87")}
        else if pos == 87 {I87.image = UIImage(named: "p87")}
        else {I87.image = UIImage(named: "87")}
        if pos == 88 && posAI == 88{I88.image = UIImage(named:"op88")}
        else if posAI == 88 {I88.image = UIImage(named: "o88")}
        else if pos == 88 {I88.image = UIImage(named: "p88")}
        else {I88.image = UIImage(named: "88")}
        if pos == 89 && posAI == 89{I89.image = UIImage(named:"op89")}
        else if posAI == 89 {I89.image = UIImage(named: "o89")}
        else if pos == 89 {I89.image = UIImage(named: "p89")}
        else {I89.image = UIImage(named: "89")}
        if pos == 90 && posAI == 90{I90.image = UIImage(named:"op90")}
        else if posAI == 90 {I90.image = UIImage(named: "o90")}
        else if pos == 90 {I90.image = UIImage(named: "p90")}
        else {I90.image = UIImage(named: "90")}
        if pos == 91 && posAI == 91{I91.image = UIImage(named:"op91")}
        else if posAI == 91 {I91.image = UIImage(named: "o91")}
        else if pos == 91 {I91.image = UIImage(named: "p91")}
        else {I91.image = UIImage(named: "91")}
        if pos == 92 && posAI == 92{I92.image = UIImage(named:"op92")}
        else if posAI == 92 {I92.image = UIImage(named: "o92")}
        else if pos == 92 {I92.image = UIImage(named: "p92")}
        else {I92.image = UIImage(named: "92")}
        if pos == 93 && posAI == 93{I93.image = UIImage(named:"op93")}
        else if posAI == 93 {I93.image = UIImage(named: "o93")}
        else if pos == 93 {I93.image = UIImage(named: "p93")}
        else {I93.image = UIImage(named: "93")}
        if pos == 94 && posAI == 94{I94.image = UIImage(named:"op94")}
        else if posAI == 94 {I94.image = UIImage(named: "o94")}
        else if pos == 94 {I94.image = UIImage(named: "p94")}
        else {I94.image = UIImage(named: "94")}
        if pos == 95 && posAI == 95{I95.image = UIImage(named:"op95")}
        else if posAI == 95 {I95.image = UIImage(named: "o95")}
        else if pos == 95 {I95.image = UIImage(named: "p95")}
        else {I95.image = UIImage(named: "95")}
        if pos == 96 && posAI == 96{I96.image = UIImage(named:"op96")}
        else if posAI == 96 {I96.image = UIImage(named: "o96")}
        else if pos == 96 {I96.image = UIImage(named: "p96")}
        else {I96.image = UIImage(named: "96")}
        if pos == 97 && posAI == 97{I97.image = UIImage(named:"op97")}
        else if posAI == 97 {I97.image = UIImage(named: "o97")}
        else if pos == 97 {I97.image = UIImage(named: "p97")}
        else {I97.image = UIImage(named: "97")}
        if pos == 98 && posAI == 98{I98.image = UIImage(named:"op98")}
        else if posAI == 98 {I98.image = UIImage(named: "o98")}
        else if pos == 98 {I98.image = UIImage(named: "p98")}
        else {I98.image = UIImage(named: "98")}
        if pos == 99 && posAI == 99{I99.image = UIImage(named:"op99")}
        else if posAI == 99 {I99.image = UIImage(named: "o99")}
        else if pos == 99 {I99.image = UIImage(named: "p99")}
        else {I99.image = UIImage(named: "99")}
        if pos == 100 && posAI == 100{I100.image = UIImage(named:"op100")}
        else if posAI == 100 {I100.image = UIImage(named: "o100")}
        else if pos == 100 {I100.image = UIImage(named: "p100")}
        else {I100.image = UIImage(named: "100")}
    }

    func Reset(title:String,message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "New Game", style: UIAlertAction.Style.default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert,animated: true)
    }
    
    
    
   
    
    func winloss(){
    if(pos==100){
    Reset(title: "You Win", message: "Congratulations !!!")
        pos = 1
        posAI = 1
        b = 1
        d = 1
        loc()
        
    }
        if(posAI==100){
            Reset(title: "You Lose", message: "Better luck next time.")
            pos = 1
            posAI = 1
            b = 1
            d = 1
            loc()
            
        }
    
    }
    
}


    

    

    
    
    





