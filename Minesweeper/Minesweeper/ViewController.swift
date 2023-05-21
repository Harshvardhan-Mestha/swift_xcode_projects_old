//
//  ViewController.swift
//  Minesweeper
//
//  Created by Harshvardhan Mestha on 9/27/19.
//  Copyright © 2019 Harshvardhan Mestha. All rights reserved.
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
    @IBOutlet weak var flg_tog: UISwitch!
    @IBOutlet weak var flg_nos: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let I1T = UITapGestureRecognizer(target: self, action: #selector(self.I1T))
        I1.addGestureRecognizer(I1T)
        let I2T = UITapGestureRecognizer(target: self, action: #selector(self.I2T))
        I2.addGestureRecognizer(I2T)
        let I3T = UITapGestureRecognizer(target: self, action: #selector(self.I3T))
        I3.addGestureRecognizer(I3T)
        let I4T = UITapGestureRecognizer(target: self, action: #selector(self.I4T))
        I4.addGestureRecognizer(I4T)
        let I5T = UITapGestureRecognizer(target: self, action: #selector(self.I5T))
        I5.addGestureRecognizer(I5T)
        let I6T = UITapGestureRecognizer(target: self, action: #selector(self.I6T))
        I6.addGestureRecognizer(I6T)
        let I7T = UITapGestureRecognizer(target: self, action: #selector(self.I7T))
        I7.addGestureRecognizer(I7T)
        let I8T = UITapGestureRecognizer(target: self, action: #selector(self.I8T))
        I8.addGestureRecognizer(I8T)
        let I9T = UITapGestureRecognizer(target: self, action: #selector(self.I9T))
        I9.addGestureRecognizer(I9T)
        let I10T = UITapGestureRecognizer(target: self, action: #selector(self.I10T))
        I10.addGestureRecognizer(I10T)
        let I11T = UITapGestureRecognizer(target: self, action: #selector(self.I11T))
        I11.addGestureRecognizer(I11T)
        let I12T = UITapGestureRecognizer(target: self, action: #selector(self.I12T))
        I12.addGestureRecognizer(I12T)
        let I13T = UITapGestureRecognizer(target: self, action: #selector(self.I13T))
        I13.addGestureRecognizer(I13T)
        let I14T = UITapGestureRecognizer(target: self, action: #selector(self.I14T))
        I14.addGestureRecognizer(I14T)
        let I15T = UITapGestureRecognizer(target: self, action: #selector(self.I15T))
        I15.addGestureRecognizer(I15T)
        let I16T = UITapGestureRecognizer(target: self, action: #selector(self.I16T))
        I16.addGestureRecognizer(I16T)
        let I17T = UITapGestureRecognizer(target: self, action: #selector(self.I17T))
        I17.addGestureRecognizer(I17T)
        let I18T = UITapGestureRecognizer(target: self, action: #selector(self.I18T))
        I18.addGestureRecognizer(I18T)
        let I19T = UITapGestureRecognizer(target: self, action: #selector(self.I19T))
        I19.addGestureRecognizer(I19T)
        let I20T = UITapGestureRecognizer(target: self, action: #selector(self.I20T))
        I20.addGestureRecognizer(I20T)
        let I21T = UITapGestureRecognizer(target: self, action: #selector(self.I21T))
        I21.addGestureRecognizer(I21T)
        let I22T = UITapGestureRecognizer(target: self, action: #selector(self.I22T))
        I22.addGestureRecognizer(I22T)
        let I23T = UITapGestureRecognizer(target: self, action: #selector(self.I23T))
        I23.addGestureRecognizer(I23T)
        let I24T = UITapGestureRecognizer(target: self, action: #selector(self.I24T))
        I24.addGestureRecognizer(I24T)
        let I25T = UITapGestureRecognizer(target: self, action: #selector(self.I25T))
        I25.addGestureRecognizer(I25T)
        let I26T = UITapGestureRecognizer(target: self, action: #selector(self.I26T))
        I26.addGestureRecognizer(I26T)
        let I27T = UITapGestureRecognizer(target: self, action: #selector(self.I27T))
        I27.addGestureRecognizer(I27T)
        let I28T = UITapGestureRecognizer(target: self, action: #selector(self.I28T))
        I28.addGestureRecognizer(I28T)
        let I29T = UITapGestureRecognizer(target: self, action: #selector(self.I29T))
        I29.addGestureRecognizer(I29T)
        let I30T = UITapGestureRecognizer(target: self, action: #selector(self.I30T))
        I30.addGestureRecognizer(I30T)
        let I31T = UITapGestureRecognizer(target: self, action: #selector(self.I31T))
        I31.addGestureRecognizer(I31T)
        let I32T = UITapGestureRecognizer(target: self, action: #selector(self.I32T))
        I32.addGestureRecognizer(I32T)
        let I33T = UITapGestureRecognizer(target: self, action: #selector(self.I33T))
        I33.addGestureRecognizer(I33T)
        let I34T = UITapGestureRecognizer(target: self, action: #selector(self.I34T))
        I34.addGestureRecognizer(I34T)
        let I35T = UITapGestureRecognizer(target: self, action: #selector(self.I35T))
        I35.addGestureRecognizer(I35T)
        let I36T = UITapGestureRecognizer(target: self, action: #selector(self.I36T))
        I36.addGestureRecognizer(I36T)
        let I37T = UITapGestureRecognizer(target: self, action: #selector(self.I37T))
        I37.addGestureRecognizer(I37T)
        let I38T = UITapGestureRecognizer(target: self, action: #selector(self.I38T))
        I38.addGestureRecognizer(I38T)
        let I39T = UITapGestureRecognizer(target: self, action: #selector(self.I39T))
        I39.addGestureRecognizer(I39T)
        let I40T = UITapGestureRecognizer(target: self, action: #selector(self.I40T))
        I40.addGestureRecognizer(I40T)
        let I41T = UITapGestureRecognizer(target: self, action: #selector(self.I41T))
        I41.addGestureRecognizer(I41T)
        let I42T = UITapGestureRecognizer(target: self, action: #selector(self.I42T))
        I42.addGestureRecognizer(I42T)
        let I43T = UITapGestureRecognizer(target: self, action: #selector(self.I43T))
        I43.addGestureRecognizer(I43T)
        let I44T = UITapGestureRecognizer(target: self, action: #selector(self.I44T))
        I44.addGestureRecognizer(I44T)
        let I45T = UITapGestureRecognizer(target: self, action: #selector(self.I45T))
        I45.addGestureRecognizer(I45T)
        let I46T = UITapGestureRecognizer(target: self, action: #selector(self.I46T))
        I46.addGestureRecognizer(I46T)
        let I47T = UITapGestureRecognizer(target: self, action: #selector(self.I47T))
        I47.addGestureRecognizer(I47T)
        let I48T = UITapGestureRecognizer(target: self, action: #selector(self.I48T))
        I48.addGestureRecognizer(I48T)
        let I49T = UITapGestureRecognizer(target: self, action: #selector(self.I49T))
        I49.addGestureRecognizer(I49T)
        let I50T = UITapGestureRecognizer(target: self, action: #selector(self.I50T))
        I50.addGestureRecognizer(I50T)
        let I51T = UITapGestureRecognizer(target: self, action: #selector(self.I51T))
        I51.addGestureRecognizer(I51T)
        let I52T = UITapGestureRecognizer(target: self, action: #selector(self.I52T))
        I52.addGestureRecognizer(I52T)
        let I53T = UITapGestureRecognizer(target: self, action: #selector(self.I53T))
        I53.addGestureRecognizer(I53T)
        let I54T = UITapGestureRecognizer(target: self, action: #selector(self.I54T))
        I54.addGestureRecognizer(I54T)
        let I55T = UITapGestureRecognizer(target: self, action: #selector(self.I55T))
        I55.addGestureRecognizer(I55T)
        let I56T = UITapGestureRecognizer(target: self, action: #selector(self.I56T))
        I56.addGestureRecognizer(I56T)
        let I57T = UITapGestureRecognizer(target: self, action: #selector(self.I57T))
        I57.addGestureRecognizer(I57T)
        let I58T = UITapGestureRecognizer(target: self, action: #selector(self.I58T))
        I58.addGestureRecognizer(I58T)
        let I59T = UITapGestureRecognizer(target: self, action: #selector(self.I59T))
        I59.addGestureRecognizer(I59T)
        let I60T = UITapGestureRecognizer(target: self, action: #selector(self.I60T))
        I60.addGestureRecognizer(I60T)
        let I61T = UITapGestureRecognizer(target: self, action: #selector(self.I61T))
        I61.addGestureRecognizer(I61T)
        let I62T = UITapGestureRecognizer(target: self, action: #selector(self.I62T))
        I62.addGestureRecognizer(I62T)
        let I63T = UITapGestureRecognizer(target: self, action: #selector(self.I63T))
        I63.addGestureRecognizer(I63T)
        let I64T = UITapGestureRecognizer(target: self, action: #selector(self.I64T))
        I64.addGestureRecognizer(I64T)
        let I65T = UITapGestureRecognizer(target: self, action: #selector(self.I65T))
        I65.addGestureRecognizer(I65T)
        let I66T = UITapGestureRecognizer(target: self, action: #selector(self.I66T))
        I66.addGestureRecognizer(I66T)
        let I67T = UITapGestureRecognizer(target: self, action: #selector(self.I67T))
        I67.addGestureRecognizer(I67T)
        let I68T = UITapGestureRecognizer(target: self, action: #selector(self.I68T))
        I68.addGestureRecognizer(I68T)
        let I69T = UITapGestureRecognizer(target: self, action: #selector(self.I69T))
        I69.addGestureRecognizer(I69T)
        let I70T = UITapGestureRecognizer(target: self, action: #selector(self.I70T))
        I70.addGestureRecognizer(I70T)
        let I71T = UITapGestureRecognizer(target: self, action: #selector(self.I71T))
        I71.addGestureRecognizer(I71T)
        let I72T = UITapGestureRecognizer(target: self, action: #selector(self.I72T))
        I72.addGestureRecognizer(I72T)
        let I73T = UITapGestureRecognizer(target: self, action: #selector(self.I73T))
        I73.addGestureRecognizer(I73T)
        let I74T = UITapGestureRecognizer(target: self, action: #selector(self.I74T))
        I74.addGestureRecognizer(I74T)
        let I75T = UITapGestureRecognizer(target: self, action: #selector(self.I75T))
        I75.addGestureRecognizer(I75T)
        let I76T = UITapGestureRecognizer(target: self, action: #selector(self.I76T))
        I76.addGestureRecognizer(I76T)
        let I77T = UITapGestureRecognizer(target: self, action: #selector(self.I77T))
        I77.addGestureRecognizer(I77T)
        let I78T = UITapGestureRecognizer(target: self, action: #selector(self.I78T))
        I78.addGestureRecognizer(I78T)
        let I79T = UITapGestureRecognizer(target: self, action: #selector(self.I79T))
        I79.addGestureRecognizer(I79T)
        let I80T = UITapGestureRecognizer(target: self, action: #selector(self.I80T))
        I80.addGestureRecognizer(I80T)
        let I81T = UITapGestureRecognizer(target: self, action: #selector(self.I81T))
        I81.addGestureRecognizer(I81T)
    
        mast_init()
        
        random()
        mastercheck()
        flg_nos.text = String(f_ar.count - 1)
    }
    var skeleton = Array(repeating: Array(repeating: 0, count: 9), count: 9)
    var rand_x = Int(arc4random_uniform(9))
    var rand_y = Int(arc4random_uniform(9))
    var i = 10
    var num  = 0
    var mine_no = 0
    var n = 0
    var x_ind = 0
    var y_ind = 0
    var m1 = 0
    var c = 0;
    var n1 = 1
    var ar : [Int] = []
    var z_ar : [Int] = []
    var m_ar : [Int] = []
    var rand = 0
    var j = 0
    var t = 0
    var mine_left = 0
    var master: [Int] = []
    var mine_ar: [Int] = []
    var f_ar : [Int]  = [0]
    var fbl = false
    var used = 0
    var k1 = 1,k2 = 1,k3 = 1,k4 = 1,k5 = 1,k6 = 1,k7 = 1,k8 = 1,k9 = 1;
    var k10 = 1,k11 = 1,k12 = 1,k13 = 1,k14 = 1,k15 = 1,k16 = 1,k17 = 1,k18 = 1;
    var k19 = 1,k20 = 1,k21 = 1,k22 = 1,k23 = 1,k24 = 1,k25 = 1,k26 = 1,k27 = 1;
    var k28 = 1,k29 = 1,k30 = 1,k31 = 1,k32 = 1,k33 = 1,k34 = 1,k35 = 1,k36 = 1;
    var k37 = 1,k38 = 1,k39 = 1,k40 = 1,k41 = 1,k42 = 1,k43 = 1,k44 = 1,k45 = 1;
    var k46 = 1,k47 = 1,k48 = 1,k49 = 1,k50 = 1,k51 = 1,k52 = 1,k53 = 1,k54 = 1;
    var k55 = 1,k56 = 1,k57 = 1,k58 = 1,k59 = 1,k60 = 1,k61 = 1,k62 = 1,k63 = 1;
    var k64 = 1,k65 = 1,k66 = 1,k67 = 1,k68 = 1,k69 = 1,k70 = 1,k71 = 1,k72 = 1;
    var k73 = 1,k74 = 1,k75 = 1,k76 = 1,k77 = 1,k78 = 1,k79 = 1,k80 = 1,k81 = 1;
    
    
    
    var imgs : [UIImage]  = [UIImage(named: "mine0")!,UIImage(named: "mine1")!,UIImage(named: "mine2")!,UIImage(named: "mine3")!,UIImage(named: "mine4")!,UIImage(named: "mine100")!]
    func mast_init(){
        while n1 < 82{
            master.append(n1)
            n1  = n1 + 1
        }
    }
    func mastercheck(){
        while rand < mine_ar.count {
            print(mine_ar[rand])
            rand = rand + 1
        }
    }
    func random(){
        while i > 0{
            num = Int(arc4random_uniform(82))
            if master.contains(num) == true{
                mine_ar.append(num)
                master.remove(at: master.firstIndex(of: num)!)
                num_to_ind2()
                skeleton[x_ind][y_ind] = 1
                i = i - 1
                }
             }
          }
    

    func peri_norm(){
       m1 = n + 8
        z_ar.append(m1)
        m1 = n + 9
        z_ar.append(m1)
        m1 = n + 10
        z_ar.append(m1)
        m1 = n - 8
        z_ar.append(m1)
        m1 = n - 9
        z_ar.append(m1)
        m1 = n - 10
        z_ar.append(m1)
        m1 = n + 1
        z_ar.append(m1)
        m1 = n - 1
        z_ar.append(m1)
       
        while c<z_ar.count{
            //print(z_ar[c])
            
            c = c + 1
            trigger()
        }
    }
    func peri_00(){
        m1 = n + 1
        z_ar.append(m1)
        m1 = n - 9
        z_ar.append(m1)
        m1 = n - 8
        z_ar.append(m1)
        while c<z_ar.count{
            //print(z_ar[c])
            c = c + 1
            trigger() }}
    
    func peri_88(){
        m1 = n - 1
        z_ar.append(m1)
        m1 = n + 9
        z_ar.append(m1)
        m1 = n + 8
        z_ar.append(m1)
        while c<z_ar.count{
            //print(z_ar[c])
            c = c + 1
            trigger()}}
    
    func peri_80(){
        m1 = n - 1
        z_ar.append(m1)
        m1 = n - 9
        z_ar.append(m1)
        m1 = n - 10
        z_ar.append(m1)
        while c<z_ar.count{
            //print(z_ar[c])
            c = c + 1
            trigger()}}
    
    func peri_08(){
        m1 = n + 1
        z_ar.append(m1)
        m1 = n + 9
        z_ar.append(m1)
        m1 = n + 10
        z_ar.append(m1)
        while c<z_ar.count{
            //print(z_ar[c])
            c = c + 1
            trigger()}}
    
    func peri_0n(){
        m1 = n + 1
        z_ar.append(m1)
        m1 = n + 9
        z_ar.append(m1)
        m1 = n - 9
        z_ar.append(m1)
        m1 = n + 10
        z_ar.append(m1)
        m1 = n - 8
        z_ar.append(m1)
        
        while c<z_ar.count{
            //print(z_ar[c])
            c = c + 1
            trigger()}}
    func peri_8n(){
        m1 = n - 1
        z_ar.append(m1)
        m1 = n + 9
        z_ar.append(m1)
        m1 = n - 9
        z_ar.append(m1)
        m1 = n - 10
        z_ar.append(m1)
        m1 = n + 8
        z_ar.append(m1)
        
        while c<z_ar.count{
            //print(z_ar[c])
            c = c + 1
            trigger()}}
    
    func peri_n0(){
        m1 = n - 1
        z_ar.append(m1)
        m1 = n + 1
        z_ar.append(m1)
        m1 = n - 9
        z_ar.append(m1)
        m1 = n - 8
        z_ar.append(m1)
        m1 = n - 10
        z_ar.append(m1)
        
        while c<z_ar.count{
            //print(z_ar[c])
            c = c + 1
            trigger()}}
    
    func peri_n8(){
       m1 = n + 1
        z_ar.append(m1)
        m1 = n - 1
        z_ar.append(m1)
        m1 = n + 9
        z_ar.append(m1)
        m1 = n + 8
        z_ar.append(m1)
        m1 = n + 10
        z_ar.append(m1)
        while c<z_ar.count{
            //print(z_ar[c])
            c = c + 1
            trigger()}}
    
    func trigger(){
        if z_ar.contains(1) && ar.contains(1) == false && m_ar.contains(1) == false && f_ar.contains(1) == false{I1T()}
        else if z_ar.contains(2) && ar.contains(2) == false && m_ar.contains(2) == false && f_ar.contains(2) == false{I2T()}
        else if z_ar.contains(3) && ar.contains(3) == false && m_ar.contains(3) == false && f_ar.contains(3) == false{I3T()}
        else if z_ar.contains(4) && ar.contains(4) == false && m_ar.contains(4) == false && f_ar.contains(4) == false{I4T()}
        else if z_ar.contains(5) && ar.contains(5) == false && m_ar.contains(5) == false && f_ar.contains(5) == false{I5T()}
        else if z_ar.contains(6) && ar.contains(6) == false && m_ar.contains(6) == false && f_ar.contains(6) == false{I6T()}
        else if z_ar.contains(7) && ar.contains(7) == false && m_ar.contains(7) == false && f_ar.contains(7) == false{I7T()}
        else if z_ar.contains(8) && ar.contains(8) == false && m_ar.contains(8) == false && f_ar.contains(8) == false{I8T()}
        else if z_ar.contains(9) && ar.contains(9) == false && m_ar.contains(9) == false && f_ar.contains(9) == false{I9T()}
        else if z_ar.contains(10) && ar.contains(10) == false && m_ar.contains(10) == false && f_ar.contains(10) == false{I10T()}
        else if z_ar.contains(11) && ar.contains(11) == false && m_ar.contains(11) == false && f_ar.contains(11) == false{I11T()}
        else if z_ar.contains(12) && ar.contains(12) == false && m_ar.contains(12) == false && f_ar.contains(12) == false{I12T()}
        else if z_ar.contains(13) && ar.contains(13) == false && m_ar.contains(13) == false && f_ar.contains(13) == false{I13T()}
        else if z_ar.contains(14) && ar.contains(14) == false && m_ar.contains(14) == false && f_ar.contains(14) == false{I14T()}
        else if z_ar.contains(15) && ar.contains(15) == false && m_ar.contains(15) == false && f_ar.contains(15) == false{I15T()}
        else if z_ar.contains(16) && ar.contains(16) == false && m_ar.contains(16) == false && f_ar.contains(16) == false{I16T()}
        else if z_ar.contains(17) && ar.contains(17) == false && m_ar.contains(17) == false && f_ar.contains(17) == false{I17T()}
        else if z_ar.contains(18) && ar.contains(18) == false && m_ar.contains(18) == false && f_ar.contains(18) == false{I18T()}
        else if z_ar.contains(19) && ar.contains(19) == false && m_ar.contains(19) == false && f_ar.contains(19) == false{I19T()}
        else if z_ar.contains(20) && ar.contains(20) == false && m_ar.contains(20) == false && f_ar.contains(20) == false{I20T()}
        else if z_ar.contains(21) && ar.contains(21) == false && m_ar.contains(21) == false && f_ar.contains(21) == false{I21T()}
        else if z_ar.contains(22) && ar.contains(22) == false && m_ar.contains(22) == false && f_ar.contains(22) == false{I22T()}
        else if z_ar.contains(23) && ar.contains(23) == false && m_ar.contains(23) == false && f_ar.contains(23) == false{I23T()}
        else if z_ar.contains(24) && ar.contains(24) == false && m_ar.contains(24) == false && f_ar.contains(24) == false{I24T()}
        else if z_ar.contains(25) && ar.contains(25) == false && m_ar.contains(25) == false && f_ar.contains(25) == false{I25T()}
        else if z_ar.contains(26) && ar.contains(26) == false && m_ar.contains(26) == false && f_ar.contains(26) == false{I26T()}
        else if z_ar.contains(27) && ar.contains(27) == false && m_ar.contains(27) == false && f_ar.contains(27) == false{I27T()}
        else if z_ar.contains(28) && ar.contains(28) == false && m_ar.contains(28) == false && f_ar.contains(28) == false{I28T()}
        else if z_ar.contains(29) && ar.contains(29) == false && m_ar.contains(29) == false && f_ar.contains(29) == false{I29T()}
        else if z_ar.contains(30) && ar.contains(30) == false && m_ar.contains(30) == false && f_ar.contains(30) == false{I30T()}
        else if z_ar.contains(31) && ar.contains(31) == false && m_ar.contains(31) == false && f_ar.contains(31) == false{I31T()}
        else if z_ar.contains(32) && ar.contains(32) == false && m_ar.contains(32) == false && f_ar.contains(32) == false{I32T()}
        else if z_ar.contains(33) && ar.contains(33) == false && m_ar.contains(33) == false && f_ar.contains(33) == false{I33T()}
        else if z_ar.contains(34) && ar.contains(34) == false && m_ar.contains(34) == false && f_ar.contains(34) == false{I34T()}
        else if z_ar.contains(35) && ar.contains(35) == false && m_ar.contains(35) == false && f_ar.contains(35) == false{I35T()}
        else if z_ar.contains(36) && ar.contains(36) == false && m_ar.contains(36) == false && f_ar.contains(36) == false{I36T()}
        else if z_ar.contains(37) && ar.contains(37) == false && m_ar.contains(37) == false && f_ar.contains(37) == false{I37T()}
        else if z_ar.contains(38) && ar.contains(38) == false && m_ar.contains(38) == false && f_ar.contains(38) == false{I38T()}
        else if z_ar.contains(39) && ar.contains(39) == false && m_ar.contains(39) == false && f_ar.contains(39) == false{I39T()}
        else if z_ar.contains(40) && ar.contains(40) == false && m_ar.contains(40) == false && f_ar.contains(40) == false{I40T()}
        else if z_ar.contains(41) && ar.contains(41) == false && m_ar.contains(41) == false && f_ar.contains(41) == false{I41T()}
        else if z_ar.contains(42) && ar.contains(42) == false && m_ar.contains(42) == false && f_ar.contains(42) == false{I42T()}
        else if z_ar.contains(43) && ar.contains(43) == false && m_ar.contains(43) == false && f_ar.contains(43) == false{I43T()}
        else if z_ar.contains(44) && ar.contains(44) == false && m_ar.contains(44) == false && f_ar.contains(44) == false{I44T()}
        else if z_ar.contains(45) && ar.contains(45) == false && m_ar.contains(45) == false && f_ar.contains(45) == false{I45T()}
        else if z_ar.contains(46) && ar.contains(46) == false && m_ar.contains(46) == false && f_ar.contains(46) == false{I46T()}
        else if z_ar.contains(47) && ar.contains(47) == false && m_ar.contains(47) == false && f_ar.contains(47) == false{I47T()}
        else if z_ar.contains(48) && ar.contains(48) == false && m_ar.contains(48) == false && f_ar.contains(48) == false{I48T()}
        else if z_ar.contains(49) && ar.contains(49) == false && m_ar.contains(49) == false && f_ar.contains(49) == false{I49T()}
        else if z_ar.contains(50) && ar.contains(50) == false && m_ar.contains(50) == false && f_ar.contains(50) == false{I50T()}
        else if z_ar.contains(51) && ar.contains(51) == false && m_ar.contains(51) == false && f_ar.contains(51) == false{I51T()}
        else if z_ar.contains(52) && ar.contains(52) == false && m_ar.contains(52) == false && f_ar.contains(52) == false{I52T()}
        else if z_ar.contains(53) && ar.contains(53) == false && m_ar.contains(53) == false && f_ar.contains(53) == false{I53T()}
        else if z_ar.contains(54) && ar.contains(54) == false && m_ar.contains(54) == false && f_ar.contains(54) == false{I54T()}
        else if z_ar.contains(55) && ar.contains(55) == false && m_ar.contains(55) == false && f_ar.contains(55) == false{I55T()}
        else if z_ar.contains(56) && ar.contains(56) == false && m_ar.contains(56) == false && f_ar.contains(56) == false{I56T()}
        else if z_ar.contains(57) && ar.contains(57) == false && m_ar.contains(57) == false && f_ar.contains(57) == false{I57T()}
        else if z_ar.contains(58) && ar.contains(58) == false && m_ar.contains(58) == false && f_ar.contains(58) == false{I58T()}
        else if z_ar.contains(59) && ar.contains(59) == false && m_ar.contains(59) == false && f_ar.contains(59) == false{I59T()}
        else if z_ar.contains(60) && ar.contains(60) == false && m_ar.contains(60) == false && f_ar.contains(60) == false{I60T()}
        else if z_ar.contains(61) && ar.contains(61) == false && m_ar.contains(61) == false && f_ar.contains(61) == false{I61T()}
        else if z_ar.contains(62) && ar.contains(62) == false && m_ar.contains(62) == false && f_ar.contains(62) == false{I62T()}
        else if z_ar.contains(63) && ar.contains(63) == false && m_ar.contains(63) == false && f_ar.contains(63) == false{I63T()}
        else if z_ar.contains(64) && ar.contains(64) == false && m_ar.contains(64) == false && f_ar.contains(64) == false{I64T()}
        else if z_ar.contains(65) && ar.contains(65) == false && m_ar.contains(65) == false && f_ar.contains(65) == false{I65T()}
        else if z_ar.contains(66) && ar.contains(66) == false && m_ar.contains(66) == false && f_ar.contains(66) == false{I66T()}
        else if z_ar.contains(67) && ar.contains(67) == false && m_ar.contains(67) == false && f_ar.contains(67) == false{I67T()}
        else if z_ar.contains(68) && ar.contains(68) == false && m_ar.contains(68) == false && f_ar.contains(68) == false{I68T()}
        else if z_ar.contains(69) && ar.contains(69) == false && m_ar.contains(69) == false && f_ar.contains(69) == false{I69T()}
        else if z_ar.contains(70) && ar.contains(70) == false && m_ar.contains(70) == false && f_ar.contains(70) == false{I70T()}
        else if z_ar.contains(71) && ar.contains(71) == false && m_ar.contains(71) == false && f_ar.contains(71) == false{I71T()}
        else if z_ar.contains(72) && ar.contains(72) == false && m_ar.contains(72) == false && f_ar.contains(72) == false{I72T()}
        else if z_ar.contains(73) && ar.contains(73) == false && m_ar.contains(73) == false && f_ar.contains(73) == false{I73T()}
        else if z_ar.contains(74) && ar.contains(74) == false && m_ar.contains(74) == false && f_ar.contains(74) == false{I74T()}
        else if z_ar.contains(75) && ar.contains(75) == false && m_ar.contains(75) == false && f_ar.contains(75) == false{I75T()}
        else if z_ar.contains(76) && ar.contains(76) == false && m_ar.contains(76) == false && f_ar.contains(76) == false{I76T()}
        else if z_ar.contains(77) && ar.contains(77) == false && m_ar.contains(77) == false && f_ar.contains(77) == false{I77T()}
        else if z_ar.contains(78) && ar.contains(78) == false && m_ar.contains(78) == false && f_ar.contains(78) == false{I78T()}
        else if z_ar.contains(79) && ar.contains(79) == false && m_ar.contains(79) == false && f_ar.contains(79) == false{I79T()}
        else if z_ar.contains(80) && ar.contains(80) == false && m_ar.contains(80) == false && f_ar.contains(80) == false{I80T()}
        else if z_ar.contains(81) && ar.contains(81) == false && m_ar.contains(81) == false && f_ar.contains(81) == false{I81T()}
        //print("trigger was run, , with n = \(n)")
        
    }
    func m_trigger(){
        if t == 1{I1.image = UIImage(named: "mine100")}
        if t == 2{I2.image = UIImage(named: "mine100")}
        if t == 3{I3.image = UIImage(named: "mine100")}
        if t == 4{I4.image = UIImage(named: "mine100")}
        if t == 5{I5.image = UIImage(named: "mine100")}
        if t == 6{I6.image = UIImage(named: "mine100")}
        if t == 7{I7.image = UIImage(named: "mine100")}
        if t == 8{I8.image = UIImage(named: "mine100")}
        if t == 9{I9.image = UIImage(named: "mine100")}
        if t == 10{I10.image = UIImage(named: "mine100")}
        if t == 11{I11.image = UIImage(named: "mine100")}
        if t == 12{I12.image = UIImage(named: "mine100")}
        if t == 13{I13.image = UIImage(named: "mine100")}
        if t == 14{I14.image = UIImage(named: "mine100")}
        if t == 15{I15.image = UIImage(named: "mine100")}
        if t == 16{I16.image = UIImage(named: "mine100")}
        if t == 17{I17.image = UIImage(named: "mine100")}
        if t == 18{I18.image = UIImage(named: "mine100")}
        if t == 19{I19.image = UIImage(named: "mine100")}
        if t == 20{I20.image = UIImage(named: "mine100")}
        if t == 21{I21.image = UIImage(named: "mine100")}
        if t == 22{I22.image = UIImage(named: "mine100")}
        if t == 23{I23.image = UIImage(named: "mine100")}
        if t == 24{I24.image = UIImage(named: "mine100")}
        if t == 25{I25.image = UIImage(named: "mine100")}
        if t == 26{I26.image = UIImage(named: "mine100")}
        if t == 27{I27.image = UIImage(named: "mine100")}
        if t == 28{I28.image = UIImage(named: "mine100")}
        if t == 29{I29.image = UIImage(named: "mine100")}
        if t == 30{I30.image = UIImage(named: "mine100")}
        if t == 31{I31.image = UIImage(named: "mine100")}
        if t == 32{I32.image = UIImage(named: "mine100")}
        if t == 33{I33.image = UIImage(named: "mine100")}
        if t == 34{I34.image = UIImage(named: "mine100")}
        if t == 35{I35.image = UIImage(named: "mine100")}
        if t == 36{I36.image = UIImage(named: "mine100")}
        if t == 37{I37.image = UIImage(named: "mine100")}
        if t == 38{I38.image = UIImage(named: "mine100")}
        if t == 39{I39.image = UIImage(named: "mine100")}
        if t == 40{I40.image = UIImage(named: "mine100")}
        if t == 41{I41.image = UIImage(named: "mine100")}
        if t == 42{I42.image = UIImage(named: "mine100")}
        if t == 43{I43.image = UIImage(named: "mine100")}
        if t == 44{I44.image = UIImage(named: "mine100")}
        if t == 45{I45.image = UIImage(named: "mine100")}
        if t == 46{I46.image = UIImage(named: "mine100")}
        if t == 47{I47.image = UIImage(named: "mine100")}
        if t == 48{I48.image = UIImage(named: "mine100")}
        if t == 49{I49.image = UIImage(named: "mine100")}
        if t == 50{I50.image = UIImage(named: "mine100")}
        if t == 51{I51.image = UIImage(named: "mine100")}
        if t == 52{I52.image = UIImage(named: "mine100")}
        if t == 53{I53.image = UIImage(named: "mine100")}
        if t == 54{I54.image = UIImage(named: "mine100")}
        if t == 55{I55.image = UIImage(named: "mine100")}
        if t == 56{I56.image = UIImage(named: "mine100")}
        if t == 57{I57.image = UIImage(named: "mine100")}
        if t == 58{I58.image = UIImage(named: "mine100")}
        if t == 59{I59.image = UIImage(named: "mine100")}
        if t == 60{I60.image = UIImage(named: "mine100")}
        if t == 61{I61.image = UIImage(named: "mine100")}
        if t == 62{I62.image = UIImage(named: "mine100")}
        if t == 63{I63.image = UIImage(named: "mine100")}
        if t == 64{I64.image = UIImage(named: "mine100")}
        if t == 65{I65.image = UIImage(named: "mine100")}
        if t == 66{I66.image = UIImage(named: "mine100")}
        if t == 67{I67.image = UIImage(named: "mine100")}
        if t == 68{I68.image = UIImage(named: "mine100")}
        if t == 69{I69.image = UIImage(named: "mine100")}
        if t == 70{I70.image = UIImage(named: "mine100")}
        if t == 71{I71.image = UIImage(named: "mine100")}
        if t == 72{I72.image = UIImage(named: "mine100")}
        if t == 73{I73.image = UIImage(named: "mine100")}
        if t == 74{I74.image = UIImage(named: "mine100")}
        if t == 75{I75.image = UIImage(named: "mine100")}
        if t == 76{I76.image = UIImage(named: "mine100")}
        if t == 77{I77.image = UIImage(named: "mine100")}
        if t == 78{I78.image = UIImage(named: "mine100")}
        if t == 79{I79.image = UIImage(named: "mine100")}
        if t == 80{I80.image = UIImage(named: "mine100")}
        if t == 81{I81.image = UIImage(named: "mine100")}
    }
    func num_to_ind(){
        if n%9 != 0{
        x_ind = (((n) - ((Int(n/9))*9)) - 1)
        y_ind = -1*(((n-(x_ind+1))/9) - 8)}
        if n%9 == 0{
        x_ind = (((n) - ((Int(n/9)-1)*9)) - 1)
        y_ind = -1*(((n-(x_ind+1))/9) - 8)}
        print("num to ind was run, , with n = \(n)")
    }
    func num_to_ind2(){
        if num%9 != 0{
        x_ind = (((num) - ((Int(num/9))*9)) - 1)
        y_ind = -1*(((num-(x_ind+1))/9) - 8)}
        if num%9 == 0{
        x_ind = (((num) - ((Int(num/9)-1)*9)) - 1)
        y_ind = -1*(((num-(x_ind+1))/9) - 8)}
        }
    
    
    
    func peri_scn(){
        //num_to_ind()
        //m = skeleton[x_ind][y_ind]
        //print("I AM INEVITABLE")
        if x_ind == 0 && y_ind == 0{
            //print("AND...I..AM...IRON MAN")
            if skeleton[(x_ind + 1)][(y_ind)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind + 1)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind)][(y_ind + 1)] == 1{mine_no = mine_no + 1}}
        else if x_ind == 8 && y_ind == 0{
            if skeleton[(x_ind - 1)][(y_ind)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind - 1)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind)][(y_ind + 1)] == 1{mine_no = mine_no + 1}}
        else if x_ind == 0 && y_ind == 8{
            if skeleton[(x_ind + 1)][(y_ind)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind + 1)][(y_ind - 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind)][(y_ind - 1)] == 1{mine_no = mine_no + 1}}
        else if x_ind == 8 && y_ind == 8{
            if skeleton[(x_ind - 1)][(y_ind)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind - 1)][(y_ind - 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind)][(y_ind - 1)] == 1{mine_no = mine_no + 1}}
        else if x_ind == 0{
            if skeleton[(x_ind + 1)][(y_ind)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind)][(y_ind - 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind + 1)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind + 1)][(y_ind - 1)] == 1{mine_no = mine_no + 1}}
        else if x_ind == 8{
            if skeleton[(x_ind)][(y_ind - 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind - 1)][(y_ind - 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind - 1)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind - 1)][(y_ind)] == 1{mine_no = mine_no + 1}}
        else if y_ind == 0{
            if skeleton[(x_ind + 1)][(y_ind)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind - 1)][(y_ind)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind + 1)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind - 1)][(y_ind + 1)] == 1{mine_no = mine_no + 1}}
        else if y_ind == 8{
            if skeleton[(x_ind + 1)][(y_ind)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind - 1)][(y_ind)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind - 1)][(y_ind - 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind)][(y_ind - 1)] == 1{mine_no = mine_no + 1}
            if skeleton[(x_ind + 1)][(y_ind - 1)] == 1{mine_no = mine_no + 1}}
        
        else{
        if skeleton[(x_ind + 1)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
        if skeleton[(x_ind - 1)][(y_ind - 1)] == 1{mine_no = mine_no + 1}
        if skeleton[(x_ind + 1)][(y_ind)] == 1{mine_no = mine_no + 1}
        if skeleton[(x_ind - 1)][(y_ind)] == 1{mine_no = mine_no + 1}
        if skeleton[(x_ind)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
        if skeleton[(x_ind)][(y_ind - 1)] == 1{mine_no = mine_no + 1}
        if skeleton[(x_ind - 1)][(y_ind + 1)] == 1{mine_no = mine_no + 1}
        if skeleton[(x_ind + 1)][(y_ind - 1)] == 1{mine_no = mine_no + 1}}
        print("peri_scn ws rn, , with n = \(n)")
        
    }
    func zero_mine(){
        num_to_ind()
        if mine_no == 0 &&  skeleton[x_ind][y_ind] == 0{
           if x_ind == 0 && y_ind == 0{peri_00()}
           else if x_ind == 8 && y_ind == 0{peri_80()}
           else if x_ind == 0 && y_ind == 8{peri_08()}
           else if x_ind == 8 && y_ind == 8{peri_88()}
           else if x_ind == 0{peri_0n()}
           else if x_ind == 8{peri_8n()}
           else if y_ind == 0{peri_n0()}
           else if y_ind == 8{peri_n8()}
           else{peri_norm()}
           //print("zmain was run, , with n = \(n)")
        }
    }
    
    
    @IBAction func reset(_ sender: Any) {
        full_reset()
        enable()
        
    }
    
    
    
    @IBAction func flag_toggle(_ sender: Any) {
        fbl = !fbl
        //k = 0
        //full_reset()
        
    }
    func full_reset(){
        skeleton = Array(repeating: Array(repeating: 0, count: 9), count: 9)
        rand_x = Int(arc4random_uniform(9))
        rand_y = Int(arc4random_uniform(9))
        i = 10
        num  = 0
        mine_no = 0
        n = 0
        x_ind = 0
        y_ind = 0
        m1 = 0
        c = 0;
        n1 = 1
        ar  = []
        z_ar  = []
        m_ar = []
        rand = 0
        j = 0
        t = 0
        master = []
        mine_ar = []
        f_ar  = [0]
        fbl = false
        k1 = 1;k2 = 1;k3 = 1;k4 = 1;k5 = 1;k6 = 1;k7 = 1;k8 = 1;k9 = 1;
        k10 = 1;k11 = 1;k12 = 1;k13 = 1;k14 = 1;k15 = 1;k16 = 1;k17 = 1;k18 = 1;
        k19 = 1;k20 = 1;k21 = 1;k22 = 1;k23 = 1;k24 = 1;k25 = 1;k26 = 1;k27 = 1;
        k28 = 1;k29 = 1;k30 = 1;k31 = 1;k32 = 1;k33 = 1;k34 = 1;k35 = 1;k36 = 1;
        k37 = 1;k38 = 1;k39 = 1;k40 = 1;k41 = 1;k42 = 1;k43 = 1;k44 = 1;k45 = 1;
        k46 = 1;k47 = 1;k48 = 1;k49 = 1;k50 = 1;k51 = 1;k52 = 1;k53 = 1;k54 = 1;
        k55 = 1;k56 = 1;k57 = 1;k58 = 1;k59 = 1;k60 = 1;k61 = 1;k62 = 1;k63 = 1;
        k64 = 1;k65 = 1;k66 = 1;k67 = 1;k68 = 1;k69 = 1;k70 = 1;k71 = 1;k72 = 1;
        k73 = 1;k74 = 1;k75 = 1;k76 = 1;k77 = 1;k78 = 1;k79 = 1;k80 = 1;k81 = 1;
        I1.image = UIImage(named: "mine")
        I2.image = UIImage(named: "mine")
        I3.image = UIImage(named: "mine")
        I4.image = UIImage(named: "mine")
        I5.image = UIImage(named: "mine")
        I6.image = UIImage(named: "mine")
        I7.image = UIImage(named: "mine")
        I8.image = UIImage(named: "mine")
        I9.image = UIImage(named: "mine")
        I10.image = UIImage(named: "mine")
        I11.image = UIImage(named: "mine")
        I12.image = UIImage(named: "mine")
        I13.image = UIImage(named: "mine")
        I14.image = UIImage(named: "mine")
        I15.image = UIImage(named: "mine")
        I16.image = UIImage(named: "mine")
        I17.image = UIImage(named: "mine")
        I18.image = UIImage(named: "mine")
        I19.image = UIImage(named: "mine")
        I20.image = UIImage(named: "mine")
        I21.image = UIImage(named: "mine")
        I22.image = UIImage(named: "mine")
        I23.image = UIImage(named: "mine")
        I24.image = UIImage(named: "mine")
        I25.image = UIImage(named: "mine")
        I26.image = UIImage(named: "mine")
        I27.image = UIImage(named: "mine")
        I28.image = UIImage(named: "mine")
        I29.image = UIImage(named: "mine")
        I30.image = UIImage(named: "mine")
        I31.image = UIImage(named: "mine")
        I32.image = UIImage(named: "mine")
        I33.image = UIImage(named: "mine")
        I34.image = UIImage(named: "mine")
        I35.image = UIImage(named: "mine")
        I36.image = UIImage(named: "mine")
        I37.image = UIImage(named: "mine")
        I38.image = UIImage(named: "mine")
        I39.image = UIImage(named: "mine")
        I40.image = UIImage(named: "mine")
        I41.image = UIImage(named: "mine")
        I42.image = UIImage(named: "mine")
        I43.image = UIImage(named: "mine")
        I44.image = UIImage(named: "mine")
        I45.image = UIImage(named: "mine")
        I46.image = UIImage(named: "mine")
        I47.image = UIImage(named: "mine")
        I48.image = UIImage(named: "mine")
        I49.image = UIImage(named: "mine")
        I50.image = UIImage(named: "mine")
        I51.image = UIImage(named: "mine")
        I52.image = UIImage(named: "mine")
        I53.image = UIImage(named: "mine")
        I54.image = UIImage(named: "mine")
        I55.image = UIImage(named: "mine")
        I56.image = UIImage(named: "mine")
        I57.image = UIImage(named: "mine")
        I58.image = UIImage(named: "mine")
        I59.image = UIImage(named: "mine")
        I60.image = UIImage(named: "mine")
        I61.image = UIImage(named: "mine")
        I62.image = UIImage(named: "mine")
        I63.image = UIImage(named: "mine")
        I64.image = UIImage(named: "mine")
        I65.image = UIImage(named: "mine")
        I66.image = UIImage(named: "mine")
        I67.image = UIImage(named: "mine")
        I68.image = UIImage(named: "mine")
        I69.image = UIImage(named: "mine")
        I70.image = UIImage(named: "mine")
        I71.image = UIImage(named: "mine")
        I72.image = UIImage(named: "mine")
        I73.image = UIImage(named: "mine")
        I74.image = UIImage(named: "mine")
        I75.image = UIImage(named: "mine")
        I76.image = UIImage(named: "mine")
        I77.image = UIImage(named: "mine")
        I78.image = UIImage(named: "mine")
        I79.image = UIImage(named: "mine")
        I80.image = UIImage(named: "mine")
        I81.image = UIImage(named: "mine")
        
        
        mast_init()
        random()
        mastercheck()
        
        
    }
    func disable(){
        
        //I1.isUserInteractionEnabled
        I1.isUserInteractionEnabled = false
        I2.isUserInteractionEnabled = false
        I3.isUserInteractionEnabled = false
        I4.isUserInteractionEnabled = false
        I5.isUserInteractionEnabled = false
        I6.isUserInteractionEnabled = false
        I7.isUserInteractionEnabled = false
        I8.isUserInteractionEnabled = false
        I9.isUserInteractionEnabled = false
        I10.isUserInteractionEnabled = false
        I11.isUserInteractionEnabled = false
        I12.isUserInteractionEnabled = false
        I13.isUserInteractionEnabled = false
        I14.isUserInteractionEnabled = false
        I15.isUserInteractionEnabled = false
        I16.isUserInteractionEnabled = false
        I17.isUserInteractionEnabled = false
        I18.isUserInteractionEnabled = false
        I19.isUserInteractionEnabled = false
        I20.isUserInteractionEnabled = false
        I21.isUserInteractionEnabled = false
        I22.isUserInteractionEnabled = false
        I23.isUserInteractionEnabled = false
        I24.isUserInteractionEnabled = false
        I25.isUserInteractionEnabled = false
        I26.isUserInteractionEnabled = false
        I27.isUserInteractionEnabled = false
        I28.isUserInteractionEnabled = false
        I29.isUserInteractionEnabled = false
        I30.isUserInteractionEnabled = false
        I31.isUserInteractionEnabled = false
        I32.isUserInteractionEnabled = false
        I33.isUserInteractionEnabled = false
        I34.isUserInteractionEnabled = false
        I35.isUserInteractionEnabled = false
        I36.isUserInteractionEnabled = false
        I37.isUserInteractionEnabled = false
        I38.isUserInteractionEnabled = false
        I39.isUserInteractionEnabled = false
        I40.isUserInteractionEnabled = false
        I41.isUserInteractionEnabled = false
        I42.isUserInteractionEnabled = false
        I43.isUserInteractionEnabled = false
        I44.isUserInteractionEnabled = false
        I45.isUserInteractionEnabled = false
        I46.isUserInteractionEnabled = false
        I47.isUserInteractionEnabled = false
        I48.isUserInteractionEnabled = false
        I49.isUserInteractionEnabled = false
        I50.isUserInteractionEnabled = false
        I51.isUserInteractionEnabled = false
        I52.isUserInteractionEnabled = false
        I53.isUserInteractionEnabled = false
        I54.isUserInteractionEnabled = false
        I55.isUserInteractionEnabled = false
        I56.isUserInteractionEnabled = false
        I57.isUserInteractionEnabled = false
        I58.isUserInteractionEnabled = false
        I59.isUserInteractionEnabled = false
        I60.isUserInteractionEnabled = false
        I61.isUserInteractionEnabled = false
        I62.isUserInteractionEnabled = false
        I63.isUserInteractionEnabled = false
        I64.isUserInteractionEnabled = false
        I65.isUserInteractionEnabled = false
        I66.isUserInteractionEnabled = false
        I67.isUserInteractionEnabled = false
        I68.isUserInteractionEnabled = false
        I69.isUserInteractionEnabled = false
        I70.isUserInteractionEnabled = false
        I71.isUserInteractionEnabled = false
        I72.isUserInteractionEnabled = false
        I73.isUserInteractionEnabled = false
        I74.isUserInteractionEnabled = false
        I75.isUserInteractionEnabled = false
        I76.isUserInteractionEnabled = false
        I77.isUserInteractionEnabled = false
        I78.isUserInteractionEnabled = false
        I79.isUserInteractionEnabled = false
        I80.isUserInteractionEnabled = false
        I81.isUserInteractionEnabled = false
        flg_tog.isOn = false
        
    }
    func enable(){
        
        //I1.isUserInteractionEnabled
        I1.isUserInteractionEnabled = true
        I2.isUserInteractionEnabled = true
        I3.isUserInteractionEnabled = true
        I4.isUserInteractionEnabled = true
        I5.isUserInteractionEnabled = true
        I6.isUserInteractionEnabled = true
        I7.isUserInteractionEnabled = true
        I8.isUserInteractionEnabled = true
        I9.isUserInteractionEnabled = true
        I10.isUserInteractionEnabled = true
        I11.isUserInteractionEnabled = true
        I12.isUserInteractionEnabled = true
        I13.isUserInteractionEnabled = true
        I14.isUserInteractionEnabled = true
        I15.isUserInteractionEnabled = true
        I16.isUserInteractionEnabled = true
        I17.isUserInteractionEnabled = true
        I18.isUserInteractionEnabled = true
        I19.isUserInteractionEnabled = true
        I20.isUserInteractionEnabled = true
        I21.isUserInteractionEnabled = true
        I22.isUserInteractionEnabled = true
        I23.isUserInteractionEnabled = true
        I24.isUserInteractionEnabled = true
        I25.isUserInteractionEnabled = true
        I26.isUserInteractionEnabled = true
        I27.isUserInteractionEnabled = true
        I28.isUserInteractionEnabled = true
        I29.isUserInteractionEnabled = true
        I30.isUserInteractionEnabled = true
        I31.isUserInteractionEnabled = true
        I32.isUserInteractionEnabled = true
        I33.isUserInteractionEnabled = true
        I34.isUserInteractionEnabled = true
        I35.isUserInteractionEnabled = true
        I36.isUserInteractionEnabled = true
        I37.isUserInteractionEnabled = true
        I38.isUserInteractionEnabled = true
        I39.isUserInteractionEnabled = true
        I40.isUserInteractionEnabled = true
        I41.isUserInteractionEnabled = true
        I42.isUserInteractionEnabled = true
        I43.isUserInteractionEnabled = true
        I44.isUserInteractionEnabled = true
        I45.isUserInteractionEnabled = true
        I46.isUserInteractionEnabled = true
        I47.isUserInteractionEnabled = true
        I48.isUserInteractionEnabled = true
        I49.isUserInteractionEnabled = true
        I50.isUserInteractionEnabled = true
        I51.isUserInteractionEnabled = true
        I52.isUserInteractionEnabled = true
        I53.isUserInteractionEnabled = true
        I54.isUserInteractionEnabled = true
        I55.isUserInteractionEnabled = true
        I56.isUserInteractionEnabled = true
        I57.isUserInteractionEnabled = true
        I58.isUserInteractionEnabled = true
        I59.isUserInteractionEnabled = true
        I60.isUserInteractionEnabled = true
        I61.isUserInteractionEnabled = true
        I62.isUserInteractionEnabled = true
        I63.isUserInteractionEnabled = true
        I64.isUserInteractionEnabled = true
        I65.isUserInteractionEnabled = true
        I66.isUserInteractionEnabled = true
        I67.isUserInteractionEnabled = true
        I68.isUserInteractionEnabled = true
        I69.isUserInteractionEnabled = true
        I70.isUserInteractionEnabled = true
        I71.isUserInteractionEnabled = true
        I72.isUserInteractionEnabled = true
        I73.isUserInteractionEnabled = true
        I74.isUserInteractionEnabled = true
        I75.isUserInteractionEnabled = true
        I76.isUserInteractionEnabled = true
        I77.isUserInteractionEnabled = true
        I78.isUserInteractionEnabled = true
        I79.isUserInteractionEnabled = true
        I80.isUserInteractionEnabled = true
        I81.isUserInteractionEnabled = true
        flg_tog.isOn = false
        flg_nos.text = String(f_ar.count - 1)
    }
    func winmsg(title:String,message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "New Game", style: UIAlertAction.Style.default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert,animated: true)
    }
    func win_eval(){
        used = 1
        if imgs.contains(I1.image!){used = used + 1}
        if imgs.contains(I2.image!){used = used + 1}
        if imgs.contains(I3.image!){used = used + 1}
        if imgs.contains(I4.image!){used = used + 1}
        if imgs.contains(I5.image!){used = used + 1}
        if imgs.contains(I6.image!){used = used + 1}
        if imgs.contains(I7.image!){used = used + 1}
        if imgs.contains(I8.image!){used = used + 1}
        if imgs.contains(I9.image!){used = used + 1}
        if imgs.contains(I10.image!){used = used + 1}
        if imgs.contains(I11.image!){used = used + 1}
        if imgs.contains(I12.image!){used = used + 1}
        if imgs.contains(I13.image!){used = used + 1}
        if imgs.contains(I14.image!){used = used + 1}
        if imgs.contains(I15.image!){used = used + 1}
        if imgs.contains(I16.image!){used = used + 1}
        if imgs.contains(I17.image!){used = used + 1}
        if imgs.contains(I18.image!){used = used + 1}
        if imgs.contains(I19.image!){used = used + 1}
        if imgs.contains(I20.image!){used = used + 1}
        if imgs.contains(I21.image!){used = used + 1}
        if imgs.contains(I22.image!){used = used + 1}
        if imgs.contains(I23.image!){used = used + 1}
        if imgs.contains(I24.image!){used = used + 1}
        if imgs.contains(I25.image!){used = used + 1}
        if imgs.contains(I26.image!){used = used + 1}
        if imgs.contains(I27.image!){used = used + 1}
        if imgs.contains(I28.image!){used = used + 1}
        if imgs.contains(I29.image!){used = used + 1}
        if imgs.contains(I30.image!){used = used + 1}
        if imgs.contains(I31.image!){used = used + 1}
        if imgs.contains(I32.image!){used = used + 1}
        if imgs.contains(I33.image!){used = used + 1}
        if imgs.contains(I34.image!){used = used + 1}
        if imgs.contains(I35.image!){used = used + 1}
        if imgs.contains(I36.image!){used = used + 1}
        if imgs.contains(I37.image!){used = used + 1}
        if imgs.contains(I38.image!){used = used + 1}
        if imgs.contains(I39.image!){used = used + 1}
        if imgs.contains(I40.image!){used = used + 1}
        if imgs.contains(I41.image!){used = used + 1}
        if imgs.contains(I42.image!){used = used + 1}
        if imgs.contains(I43.image!){used = used + 1}
        if imgs.contains(I44.image!){used = used + 1}
        if imgs.contains(I45.image!){used = used + 1}
        if imgs.contains(I46.image!){used = used + 1}
        if imgs.contains(I47.image!){used = used + 1}
        if imgs.contains(I48.image!){used = used + 1}
        if imgs.contains(I49.image!){used = used + 1}
        if imgs.contains(I50.image!){used = used + 1}
        if imgs.contains(I51.image!){used = used + 1}
        if imgs.contains(I52.image!){used = used + 1}
        if imgs.contains(I53.image!){used = used + 1}
        if imgs.contains(I54.image!){used = used + 1}
        if imgs.contains(I55.image!){used = used + 1}
        if imgs.contains(I56.image!){used = used + 1}
        if imgs.contains(I57.image!){used = used + 1}
        if imgs.contains(I58.image!){used = used + 1}
        if imgs.contains(I59.image!){used = used + 1}
        if imgs.contains(I60.image!){used = used + 1}
        if imgs.contains(I61.image!){used = used + 1}
        if imgs.contains(I62.image!){used = used + 1}
        if imgs.contains(I63.image!){used = used + 1}
        if imgs.contains(I64.image!){used = used + 1}
        if imgs.contains(I65.image!){used = used + 1}
        if imgs.contains(I66.image!){used = used + 1}
        if imgs.contains(I67.image!){used = used + 1}
        if imgs.contains(I68.image!){used = used + 1}
        if imgs.contains(I69.image!){used = used + 1}
        if imgs.contains(I70.image!){used = used + 1}
        if imgs.contains(I71.image!){used = used + 1}
        if imgs.contains(I72.image!){used = used + 1}
        if imgs.contains(I73.image!){used = used + 1}
        if imgs.contains(I74.image!){used = used + 1}
        if imgs.contains(I75.image!){used = used + 1}
        if imgs.contains(I76.image!){used = used + 1}
        if imgs.contains(I77.image!){used = used + 1}
        if imgs.contains(I78.image!){used = used + 1}
        if imgs.contains(I79.image!){used = used + 1}
        if imgs.contains(I80.image!){used = used + 1}
        if imgs.contains(I81.image!){used = used + 1}
        print("USED = \(used)")
        if 81 - used == 10{
            print("YOU WINNNNNNNN.")
            disable()
            
            winmsg(title: "You Win", message: "Congratulations !!!")
            //full_reset()
            //enable()

        }
    }
    
    

    
    @objc func I1T(){
        n = 1
        k1 = k1 + 1
        if fbl == true && imgs.contains(I1.image!) == false{
            if k1%2 == 0{I1.image = UIImage(named: "flag");f_ar.append(1);flg_nos.text = String(f_ar.count - 1)}
            if k1%2 == 1 && f_ar.contains(1){I1.image = UIImage(named: "mine")
                f_ar.remove(at: f_ar.firstIndex(of: 1)!);flg_nos.text = String(f_ar.count - 1)}}
        if I1.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I1.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I1.image = UIImage(named: "mine\(mine_no)")
        
            }}
        
    }
    @objc func I2T(){
        n = 2
        k2 = k2 + 1
        if fbl == true && imgs.contains(I2.image!) == false{
            if k2%2 == 0{I2.image = UIImage(named: "flag");f_ar.append(2);flg_nos.text = String(f_ar.count - 1)}
            if k2%2 == 1 && f_ar.contains(2){I2.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 2)!);flg_nos.text = String(f_ar.count - 1)}}
        if I2.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I2.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I2.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I3T(){
        n = 3
        k3 = k3 + 1
        if fbl == true && imgs.contains(I3.image!) == false{
            if k3%2 == 0{I3.image = UIImage(named: "flag");f_ar.append(3);flg_nos.text = String(f_ar.count - 1)}
            if k3%2 == 1 && f_ar.contains(3){I3.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 3)!);flg_nos.text = String(f_ar.count - 1)}}
        if I3.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I3.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I3.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I4T(){
        n = 4
        k4 = k4 + 1
        if fbl == true && imgs.contains(I4.image!) == false{
            if k4%2 == 0{I4.image = UIImage(named: "flag");f_ar.append(4);flg_nos.text = String(f_ar.count - 1)}
            if k4%2 == 1 && f_ar.contains(4){I4.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 4)!);flg_nos.text = String(f_ar.count - 1)}}
        if I4.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I4.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I4.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I5T(){
        n = 5
        k5 = k5 + 1
        if fbl == true && imgs.contains(I5.image!) == false{
            if k5%2 == 0{I5.image = UIImage(named: "flag");f_ar.append(5);flg_nos.text = String(f_ar.count - 1)}
            if k5%2 == 1 && f_ar.contains(5){I5.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 5)!);flg_nos.text = String(f_ar.count - 1)}}
        if I5.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I5.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I5.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I6T(){
        n = 6
        k6 = k6 + 1
        if fbl == true && imgs.contains(I6.image!) == false{
            if k6%2 == 0{I6.image = UIImage(named: "flag");f_ar.append(6);flg_nos.text = String(f_ar.count - 1)}
            if k6%2 == 1 && f_ar.contains(6){I6.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 6)!);flg_nos.text = String(f_ar.count - 1)}}
        if I6.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I6.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I6.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I7T(){
        n = 7
        k7 = k7 + 1
        if fbl == true && imgs.contains(I7.image!) == false{
            if k7%2 == 0{I7.image = UIImage(named: "flag");f_ar.append(7);flg_nos.text = String(f_ar.count - 1)}
            if k7%2 == 1 && f_ar.contains(7){I7.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 7)!);flg_nos.text = String(f_ar.count - 1)}}
        if I7.image != UIImage(named: "flag") && fbl == false{
            
                univ_main()
        I7.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I7.image = UIImage(named: "mine\(mine_no)")
            }}
    }
    @objc func I8T(){
        n = 8
        k8 = k8 + 1
        if fbl == true && imgs.contains(I8.image!) == false{
            if k8%2 == 0{I8.image = UIImage(named: "flag");f_ar.append(8);flg_nos.text = String(f_ar.count - 1)}
            if k8%2 == 1 && f_ar.contains(8){I8.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 8)!);flg_nos.text = String(f_ar.count - 1)}}
        if I8.image != UIImage(named: "flag") && fbl == false{
            
                univ_main()
        I8.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I8.image = UIImage(named: "mine\(mine_no)")
            
            }}
    }
    @objc func I9T(){
        n = 9
        k9 = k9 + 1
        if fbl == true && imgs.contains(I9.image!) == false{
            if k9%2 == 0{I9.image = UIImage(named: "flag");f_ar.append(9);flg_nos.text = String(f_ar.count - 1)}
            if k9%2 == 1 && f_ar.contains(9){I9.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 9)!);flg_nos.text = String(f_ar.count - 1)}}
        if I9.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I9.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I9.image = UIImage(named: "mine\(mine_no)")
        
            }}
    }
    @objc func I10T(){
        n = 10
        k10 = k10 + 1
        if fbl == true && imgs.contains(I10.image!) == false{
            if k10%2 == 0{I10.image = UIImage(named: "flag");f_ar.append(10);flg_nos.text = String(f_ar.count - 1)}
            if k10%2 == 1 && f_ar.contains(10){I10.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 10)!);flg_nos.text = String(f_ar.count - 1)}}
        if I10.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I10.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I10.image = UIImage(named: "mine\(mine_no)")
        
            }}
    }
    @objc func I11T(){
        n = 11
        k11 = k11 + 1
        if fbl == true && imgs.contains(I11.image!) == false{
            if k11%2 == 0{I11.image = UIImage(named: "flag");f_ar.append(11);flg_nos.text = String(f_ar.count - 1)}
            if k11%2 == 1 && f_ar.contains(11){I11.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 11)!);flg_nos.text = String(f_ar.count - 1)}}
        if I11.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I11.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I11.image = UIImage(named: "mine\(mine_no)")
        
            }}
    }
    @objc func I12T(){
        n = 12
        k12 = k12 + 1
        if fbl == true && imgs.contains(I12.image!) == false{
            if k12%2 == 0{I12.image = UIImage(named: "flag");f_ar.append(12);flg_nos.text = String(f_ar.count - 1)}
            if k12%2 == 1 && f_ar.contains(12){I12.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 12)!);flg_nos.text = String(f_ar.count - 1)}}
        if I12.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I12.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I12.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I13T(){
        n = 13
        k13 = k13 + 1
        if fbl == true && imgs.contains(I13.image!) == false{
            if k13%2 == 0{I13.image = UIImage(named: "flag");f_ar.append(13);flg_nos.text = String(f_ar.count - 1)}
            if k13%2 == 1 && f_ar.contains(13){I13.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 13)!);flg_nos.text = String(f_ar.count - 1)}}
        if I13.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I13.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I13.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I14T(){
        n = 14
        k14 = k14 + 1
        if fbl == true && imgs.contains(I14.image!) == false{
            if k14%2 == 0{I14.image = UIImage(named: "flag");f_ar.append(14);flg_nos.text = String(f_ar.count - 1)}
            if k14%2 == 1 && f_ar.contains(14){I14.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 14)!);flg_nos.text = String(f_ar.count - 1)}}
        if I14.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I14.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I14.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I15T(){
        n = 15
        k15 = k15 + 1
        if fbl == true && imgs.contains(I15.image!) == false{
            if k15%2 == 0{I15.image = UIImage(named: "flag");f_ar.append(15);flg_nos.text = String(f_ar.count - 1)}
            if k15%2 == 1 && f_ar.contains(15){I15.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 15)!);flg_nos.text = String(f_ar.count - 1)}}
        if I15.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I15.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I15.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I16T(){
        n = 16
        k16 = k16 + 1
        if fbl == true && imgs.contains(I16.image!) == false{
            if k16%2 == 0{I16.image = UIImage(named: "flag");f_ar.append(16);flg_nos.text = String(f_ar.count - 1)}
            if k16%2 == 1 && f_ar.contains(16){I16.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 16)!);flg_nos.text = String(f_ar.count - 1)}}
        if I16.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I16.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I16.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I17T(){
        n = 17
        k17 = k17 + 1
        if fbl == true && imgs.contains(I17.image!) == false{
            if k17%2 == 0{I17.image = UIImage(named: "flag");f_ar.append(17);flg_nos.text = String(f_ar.count - 1)}
            if k17%2 == 1 && f_ar.contains(17){I17.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 17)!);flg_nos.text = String(f_ar.count - 1)}}
        if I17.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I17.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I17.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I18T(){
        n = 18
        k18 = k18 + 1
        if fbl == true && imgs.contains(I18.image!) == false{
            if k18%2 == 0{I18.image = UIImage(named: "flag");f_ar.append(18);flg_nos.text = String(f_ar.count - 1)}
            if k18%2 == 1 && f_ar.contains(18){I18.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 18)!);flg_nos.text = String(f_ar.count - 1)}}
        if I18.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I18.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I18.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I19T(){
        n = 19
        k19 = k19 + 1
        if fbl == true && imgs.contains(I19.image!) == false{
            if k19%2 == 0{I19.image = UIImage(named: "flag");f_ar.append(19);flg_nos.text = String(f_ar.count - 1)}
            if k19%2 == 1 && f_ar.contains(19){I19.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 19)!);flg_nos.text = String(f_ar.count - 1)}}
        if I19.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I19.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I19.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I20T(){
        n = 20
        k20 = k20 + 1
        if fbl == true && imgs.contains(I20.image!) == false{
            if k20%2 == 0{I20.image = UIImage(named: "flag");f_ar.append(20);flg_nos.text = String(f_ar.count - 1)}
            if k20%2 == 1 && f_ar.contains(20){I20.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 20)!);flg_nos.text = String(f_ar.count - 1)}}
        if I20.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I20.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I20.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I21T(){
        n = 21
        k21 = k21 + 1
        if fbl == true && imgs.contains(I21.image!) == false{
            if k21%2 == 0{I21.image = UIImage(named: "flag");f_ar.append(21);flg_nos.text = String(f_ar.count - 1)}
            if k21%2 == 1 && f_ar.contains(21){I21.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 21)!);flg_nos.text = String(f_ar.count - 1)}}
        if I21.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I21.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I21.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I22T(){
        n = 22
        k22 = k22 + 1
        if fbl == true && imgs.contains(I22.image!) == false{
            if k22%2 == 0{I22.image = UIImage(named: "flag");f_ar.append(22);flg_nos.text = String(f_ar.count - 1)}
            if k22%2 == 1 && f_ar.contains(22){I22.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 22)!);flg_nos.text = String(f_ar.count - 1)}}
        if I22.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I22.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I22.image = UIImage(named: "mine\(mine_no)")}}
       
        
    }
    @objc func I23T(){
        n = 23
        k23 = k23 + 1
        if fbl == true && imgs.contains(I23.image!) == false{
            if k23%2 == 0{I23.image = UIImage(named: "flag");f_ar.append(23);flg_nos.text = String(f_ar.count - 1)}
            if k23%2 == 1 && f_ar.contains(23){I23.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 23)!);flg_nos.text = String(f_ar.count - 1)}}
        if I23.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I23.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I23.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I24T(){
        n = 24
        k24 = k24 + 1
        if fbl == true && imgs.contains(I24.image!) == false{
            if k24%2 == 0{I24.image = UIImage(named: "flag");f_ar.append(24);flg_nos.text = String(f_ar.count - 1)}
            if k24%2 == 1 && f_ar.contains(24){I24.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 24)!);flg_nos.text = String(f_ar.count - 1)}}
        if I24.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I24.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I24.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I25T(){
        n = 25
        k25 = k25 + 1
        if fbl == true && imgs.contains(I25.image!) == false{
            if k25%2 == 0{I25.image = UIImage(named: "flag");f_ar.append(25);flg_nos.text = String(f_ar.count - 1)}
            if k25%2 == 1 && f_ar.contains(25){I25.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 25)!);flg_nos.text = String(f_ar.count - 1)}}
        if I25.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I25.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I25.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I26T(){
        n = 26
        k26 = k26 + 1
        if fbl == true && imgs.contains(I26.image!) == false{
            if k26%2 == 0{I26.image = UIImage(named: "flag");f_ar.append(26);flg_nos.text = String(f_ar.count - 1)}
            if k26%2 == 1 && f_ar.contains(26){I26.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 26)!);flg_nos.text = String(f_ar.count - 1)}}
        if I26.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I26.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I26.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I27T(){
        n = 27
        k27 = k27 + 1
        if fbl == true && imgs.contains(I27.image!) == false{
            if k27%2 == 0{I27.image = UIImage(named: "flag");f_ar.append(27);flg_nos.text = String(f_ar.count - 1)}
            if k27%2 == 1 && f_ar.contains(27){I27.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 27)!);flg_nos.text = String(f_ar.count - 1)}}
        if I27.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I27.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I27.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I28T(){
        n = 28
        k28 = k28 + 1
        if fbl == true && imgs.contains(I28.image!) == false{
            if k28%2 == 0{I28.image = UIImage(named: "flag");f_ar.append(28);flg_nos.text = String(f_ar.count - 1)}
            if k28%2 == 1 && f_ar.contains(28){I28.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 28)!);flg_nos.text = String(f_ar.count - 1)}}
        if I28.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I28.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I28.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I29T(){
        n = 29
        k29 = k29 + 1
        if fbl == true && imgs.contains(I29.image!) == false{
            if k29%2 == 0{I29.image = UIImage(named: "flag");f_ar.append(29);flg_nos.text = String(f_ar.count - 1)}
            if k29%2 == 1 && f_ar.contains(29){I29.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 29)!);flg_nos.text = String(f_ar.count - 1)}}
        if I29.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I29.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I29.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I30T(){
        n = 30
        k30 = k30 + 1
        if fbl == true && imgs.contains(I30.image!) == false{
            if k30%2 == 0{I30.image = UIImage(named: "flag");f_ar.append(30);flg_nos.text = String(f_ar.count - 1)}
            if k30%2 == 1 && f_ar.contains(30){I30.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 30)!);flg_nos.text = String(f_ar.count - 1)}}
        if I30.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I30.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I30.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I31T(){
        n = 31
        k31 = k31 + 1
        if fbl == true && imgs.contains(I31.image!) == false{
            if k31%2 == 0{I31.image = UIImage(named: "flag");f_ar.append(31);flg_nos.text = String(f_ar.count - 1)}
            if k31%2 == 1 && f_ar.contains(31){I31.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 31)!);flg_nos.text = String(f_ar.count - 1)}}
        if I31.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I31.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I31.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I32T(){
        n = 32
        k32 = k32 + 1
        if fbl == true && imgs.contains(I32.image!) == false{
            if k32%2 == 0{I32.image = UIImage(named: "flag");f_ar.append(32);flg_nos.text = String(f_ar.count - 1)}
            if k32%2 == 1 && f_ar.contains(32){I32.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 32)!);flg_nos.text = String(f_ar.count - 1)}}
        if I32.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I32.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I32.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I33T(){
        n = 33
        k33 = k33 + 1
        if fbl == true && imgs.contains(I33.image!) == false{
            if k33%2 == 0{I33.image = UIImage(named: "flag");f_ar.append(33);flg_nos.text = String(f_ar.count - 1)}
            if k33%2 == 1 && f_ar.contains(33){I33.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 33)!);flg_nos.text = String(f_ar.count - 1)}}
        if I33.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I33.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I33.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I34T(){
        n = 34
        k34 = k34 + 1
        if fbl == true && imgs.contains(I34.image!) == false{
            if k34%2 == 0{I34.image = UIImage(named: "flag");f_ar.append(34);flg_nos.text = String(f_ar.count - 1)}
            if k34%2 == 1 && f_ar.contains(34){I34.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 34)!);flg_nos.text = String(f_ar.count - 1)}}
        if I34.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I34.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I34.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I35T(){
        n = 35
        k35 = k35 + 1
        if fbl == true && imgs.contains(I35.image!) == false{
            if k35%2 == 0{I35.image = UIImage(named: "flag");f_ar.append(35);flg_nos.text = String(f_ar.count - 1)}
            if k35%2 == 1 && f_ar.contains(35){I35.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 35)!);flg_nos.text = String(f_ar.count - 1)}}
        if I35.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I35.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I35.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I36T(){
        n = 36
        k36 = k36 + 1
        if fbl == true && imgs.contains(I36.image!) == false{
            if k36%2 == 0{I36.image = UIImage(named: "flag");f_ar.append(36);flg_nos.text = String(f_ar.count - 1)}
            if k36%2 == 1 && f_ar.contains(36){I36.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 36)!);flg_nos.text = String(f_ar.count - 1)}}
        if I36.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I36.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I36.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I37T(){
        n = 37
        k37 = k37 + 1
        if fbl == true && imgs.contains(I37.image!) == false{
            if k37%2 == 0{I37.image = UIImage(named: "flag");f_ar.append(37);flg_nos.text = String(f_ar.count - 1)}
            if k37%2 == 1 && f_ar.contains(37){I37.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 37)!);flg_nos.text = String(f_ar.count - 1)}}
        if I37.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I37.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I37.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I38T(){
        n = 38
        k38 = k38 + 1
        if fbl == true && imgs.contains(I38.image!) == false{
            if k38%2 == 0{I38.image = UIImage(named: "flag");f_ar.append(38);flg_nos.text = String(f_ar.count - 1)}
            if k38%2 == 1 && f_ar.contains(38){I38.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 38)!);flg_nos.text = String(f_ar.count - 1)}}
        if I38.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I38.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I38.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I39T(){
        n = 39
        k39 = k39 + 1
        if fbl == true && imgs.contains(I39.image!) == false{
            if k39%2 == 0{I39.image = UIImage(named: "flag");f_ar.append(39);flg_nos.text = String(f_ar.count - 1)}
            if k39%2 == 1 && f_ar.contains(39){I39.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 39)!);flg_nos.text = String(f_ar.count - 1)}}
        if I39.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I39.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I39.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I40T(){
        n = 40
        k40 = k40 + 1
        if fbl == true && imgs.contains(I40.image!) == false{
            if k40%2 == 0{I40.image = UIImage(named: "flag");f_ar.append(40);flg_nos.text = String(f_ar.count - 1)}
            if k40%2 == 1 && f_ar.contains(40){I40.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 40)!);flg_nos.text = String(f_ar.count - 1)}}
        if I40.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I40.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I40.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I41T(){
        n = 41
        k41 = k41 + 1
        if fbl == true && imgs.contains(I41.image!) == false{
            if k41%2 == 0{I41.image = UIImage(named: "flag");f_ar.append(41);flg_nos.text = String(f_ar.count - 1)}
            if k41%2 == 1 && f_ar.contains(41){I41.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 41)!);flg_nos.text = String(f_ar.count - 1)}}
        if I41.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I41.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I41.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I42T(){
        n = 42
        k42 = k42 + 1
        if fbl == true && imgs.contains(I42.image!) == false{
            if k42%2 == 0{I42.image = UIImage(named: "flag");f_ar.append(42);flg_nos.text = String(f_ar.count - 1)}
            if k42%2 == 1 && f_ar.contains(42){I42.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 42)!);flg_nos.text = String(f_ar.count - 1)}}
        if I42.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I42.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I42.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I43T(){
        n = 43
        k43 = k43 + 1
        if fbl == true && imgs.contains(I43.image!) == false{
            if k43%2 == 0{I43.image = UIImage(named: "flag");f_ar.append(43);flg_nos.text = String(f_ar.count - 1)}
            if k43%2 == 1 && f_ar.contains(43){I43.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 43)!);flg_nos.text = String(f_ar.count - 1)}}
        if I43.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I43.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I43.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I44T(){
        n = 44
        k44 = k44 + 1
        if fbl == true && imgs.contains(I44.image!) == false{
            if k44%2 == 0{I44.image = UIImage(named: "flag");f_ar.append(44);flg_nos.text = String(f_ar.count - 1)}
            if k44%2 == 1 && f_ar.contains(44){I44.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 44)!);flg_nos.text = String(f_ar.count - 1)}}
        if I44.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I44.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I44.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I45T(){
        n = 45
        k45 = k45 + 1
        if fbl == true && imgs.contains(I45.image!) == false{
            if k45%2 == 0{I45.image = UIImage(named: "flag");f_ar.append(45);flg_nos.text = String(f_ar.count - 1)}
            if k45%2 == 1 && f_ar.contains(45){I45.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 45)!);flg_nos.text = String(f_ar.count - 1)}}
        if I45.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I45.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I45.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I46T(){
        n = 46
        k46 = k46 + 1
        if fbl == true && imgs.contains(I46.image!) == false{
            if k46%2 == 0{I46.image = UIImage(named: "flag");f_ar.append(46);flg_nos.text = String(f_ar.count - 1)}
            if k46%2 == 1 && f_ar.contains(46){I46.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 46)!);flg_nos.text = String(f_ar.count - 1)}}
        if I46.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I46.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I46.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I47T(){
        n = 47
        k47 = k47 + 1
        if fbl == true && imgs.contains(I47.image!) == false{
            if k47%2 == 0{I47.image = UIImage(named: "flag");f_ar.append(47);flg_nos.text = String(f_ar.count - 1)}
            if k47%2 == 1 && f_ar.contains(47){I47.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 47)!);flg_nos.text = String(f_ar.count - 1)}}
        if I47.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I47.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I47.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I48T(){
        n = 48
        k48 = k48 + 1
        if fbl == true && imgs.contains(I48.image!) == false{
            if k48%2 == 0{I48.image = UIImage(named: "flag");f_ar.append(48);flg_nos.text = String(f_ar.count - 1)}
            if k48%2 == 1 && f_ar.contains(48){I48.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 48)!);flg_nos.text = String(f_ar.count - 1)}}
        if I48.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I48.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I48.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I49T(){
        n = 49
        k49 = k49 + 1
        if fbl == true && imgs.contains(I49.image!) == false{
            if k49%2 == 0{I49.image = UIImage(named: "flag");f_ar.append(49);flg_nos.text = String(f_ar.count - 1)}
            if k49%2 == 1 && f_ar.contains(49){I49.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 49)!);flg_nos.text = String(f_ar.count - 1)}}
        if I49.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I49.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I49.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I50T(){
        n = 50
        k50 = k50 + 1
        if fbl == true && imgs.contains(I50.image!) == false{
            if k50%2 == 0{I50.image = UIImage(named: "flag");f_ar.append(50);flg_nos.text = String(f_ar.count - 1)}
            if k50%2 == 1 && f_ar.contains(50){I50.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 50)!);flg_nos.text = String(f_ar.count - 1)}}
        if I50.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I50.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I50.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I51T(){
        n = 51
        k51 = k51 + 1
        if fbl == true && imgs.contains(I51.image!) == false{
            if k51%2 == 0{I51.image = UIImage(named: "flag");f_ar.append(51);flg_nos.text = String(f_ar.count - 1)}
            if k51%2 == 1 && f_ar.contains(51){I51.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 51)!);flg_nos.text = String(f_ar.count - 1)}}
        if I51.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I51.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I51.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I52T(){
        n = 52
        k52 = k52 + 1
        if fbl == true && imgs.contains(I52.image!) == false{
            if k52%2 == 0{I52.image = UIImage(named: "flag");f_ar.append(52);flg_nos.text = String(f_ar.count - 1)}
            if k52%2 == 1 && f_ar.contains(52){I52.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 52)!);flg_nos.text = String(f_ar.count - 1)}}
        if I52.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I52.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I52.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I53T(){
        n = 53
        k53 = k53 + 1
        if fbl == true && imgs.contains(I53.image!) == false{
            if k53%2 == 0{I53.image = UIImage(named: "flag");f_ar.append(53);flg_nos.text = String(f_ar.count - 1)}
            if k53%2 == 1 && f_ar.contains(53){I53.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 53)!);flg_nos.text = String(f_ar.count - 1)}}
        if I53.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I53.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I53.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I54T(){
        n = 54
        k54 = k54 + 1
        if fbl == true && imgs.contains(I54.image!) == false{
            if k54%2 == 0{I54.image = UIImage(named: "flag");f_ar.append(54);flg_nos.text = String(f_ar.count - 1)}
            if k54%2 == 1 && f_ar.contains(54){I54.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 54)!);flg_nos.text = String(f_ar.count - 1)}}
        if I54.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I54.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I54.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I55T(){
        n = 55
        k55 = k55 + 1
        if fbl == true && imgs.contains(I55.image!) == false{
            if k55%2 == 0{I55.image = UIImage(named: "flag");f_ar.append(55);flg_nos.text = String(f_ar.count - 1)}
            if k55%2 == 1 && f_ar.contains(55){I55.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 55)!);flg_nos.text = String(f_ar.count - 1)}}
        if I55.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I55.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I55.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I56T(){
        n = 56
        k56 = k56 + 1
        if fbl == true && imgs.contains(I56.image!) == false{
            if k56%2 == 0{I56.image = UIImage(named: "flag");f_ar.append(56);flg_nos.text = String(f_ar.count - 1)}
            if k56%2 == 1 && f_ar.contains(56){I56.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 56)!);flg_nos.text = String(f_ar.count - 1)}}
        if I56.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I56.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I56.image = UIImage(named: "mine\(mine_no)")}}
         
    }
    @objc func I57T(){
        n = 57
        k57 = k57 + 1
        if fbl == true && imgs.contains(I57.image!) == false{
            if k57%2 == 0{I57.image = UIImage(named: "flag");f_ar.append(57);flg_nos.text = String(f_ar.count - 1)}
            if k57%2 == 1 && f_ar.contains(57){I57.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 57)!);flg_nos.text = String(f_ar.count - 1)}}
        if I57.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I57.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I57.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I58T(){
        n = 58
        k58 = k58 + 1
        if fbl == true && imgs.contains(I58.image!) == false{
            if k58%2 == 0{I58.image = UIImage(named: "flag");f_ar.append(58);flg_nos.text = String(f_ar.count - 1)}
            if k58%2 == 1 && f_ar.contains(58){I58.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 58)!);flg_nos.text = String(f_ar.count - 1)}}
        if I58.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I58.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I58.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I59T(){
        n = 59
        k59 = k59 + 1
        if fbl == true && imgs.contains(I59.image!) == false{
            if k59%2 == 0{I59.image = UIImage(named: "flag");f_ar.append(59);flg_nos.text = String(f_ar.count - 1)}
            if k59%2 == 1 && f_ar.contains(59){I59.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 59)!);flg_nos.text = String(f_ar.count - 1)}}
        if I59.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I59.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I59.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I60T(){
        n = 60
        k60 = k60 + 1
        if fbl == true && imgs.contains(I60.image!) == false{
            if k60%2 == 0{I60.image = UIImage(named: "flag");f_ar.append(60);flg_nos.text = String(f_ar.count - 1)}
            if k60%2 == 1 && f_ar.contains(60){I60.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 60)!);flg_nos.text = String(f_ar.count - 1)}}
        if I60.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I60.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I60.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I61T(){
        n = 61
        k61 = k61 + 1
        if fbl == true && imgs.contains(I61.image!) == false{
            if k61%2 == 0{I61.image = UIImage(named: "flag");f_ar.append(61);flg_nos.text = String(f_ar.count - 1)}
            if k61%2 == 1 && f_ar.contains(61){I61.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 61)!);flg_nos.text = String(f_ar.count - 1)}}
        if I61.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I61.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I61.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I62T(){
        n = 62
        k62 = k62 + 1
        if fbl == true && imgs.contains(I62.image!) == false{
            if k62%2 == 0{I62.image = UIImage(named: "flag");f_ar.append(62);flg_nos.text = String(f_ar.count - 1)}
            if k62%2 == 1 && f_ar.contains(62){I62.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 62)!);flg_nos.text = String(f_ar.count - 1)}}
        if I62.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I62.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I62.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I63T(){
        n = 63
        k63 = k63 + 1
        if fbl == true && imgs.contains(I63.image!) == false{
            if k63%2 == 0{I63.image = UIImage(named: "flag");f_ar.append(63);flg_nos.text = String(f_ar.count - 1)}
            if k63%2 == 1 && f_ar.contains(63){I63.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 63)!);flg_nos.text = String(f_ar.count - 1)}}
        if I63.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I63.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I63.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I64T(){
        n = 64
        k64 = k64 + 1
        if fbl == true && imgs.contains(I64.image!) == false{
            if k64%2 == 0{I64.image = UIImage(named: "flag");f_ar.append(64);flg_nos.text = String(f_ar.count - 1)}
            if k64%2 == 1 && f_ar.contains(64){I64.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 64)!);flg_nos.text = String(f_ar.count - 1)}}
        if I64.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I64.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I64.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I65T(){
        n = 65
        k65 = k65 + 1
        if fbl == true && imgs.contains(I65.image!) == false{
            if k65%2 == 0{I65.image = UIImage(named: "flag");f_ar.append(65);flg_nos.text = String(f_ar.count - 1)}
            if k65%2 == 1 && f_ar.contains(65){I65.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 65)!);flg_nos.text = String(f_ar.count - 1)}}
        if I65.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I65.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I65.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I66T(){
        n = 66
        k66 = k66 + 1
        if fbl == true && imgs.contains(I66.image!) == false{
            if k66%2 == 0{I66.image = UIImage(named: "flag");f_ar.append(66);flg_nos.text = String(f_ar.count - 1)}
            if k66%2 == 1 && f_ar.contains(66){I66.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 66)!);flg_nos.text = String(f_ar.count - 1)}}
        if I66.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I66.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I66.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I67T(){
        n = 67
        k67 = k67 + 1
        if fbl == true && imgs.contains(I67.image!) == false{
            if k67%2 == 0{I67.image = UIImage(named: "flag");f_ar.append(67);flg_nos.text = String(f_ar.count - 1)}
            if k67%2 == 1 && f_ar.contains(67){I67.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 67)!);flg_nos.text = String(f_ar.count - 1)}}
        if I67.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I67.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I67.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I68T(){
        n = 68
        k68 = k68 + 1
        if fbl == true && imgs.contains(I68.image!) == false{
            if k68%2 == 0{I68.image = UIImage(named: "flag");f_ar.append(68);flg_nos.text = String(f_ar.count - 1)}
            if k68%2 == 1 && f_ar.contains(68){I68.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 68)!);flg_nos.text = String(f_ar.count - 1)}}
        if I68.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I68.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I68.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I69T(){
        n = 69
        k69 = k69 + 1
        if fbl == true && imgs.contains(I69.image!) == false{
            if k69%2 == 0{I69.image = UIImage(named: "flag");f_ar.append(69);flg_nos.text = String(f_ar.count - 1)}
            if k69%2 == 1 && f_ar.contains(69){I69.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 69)!);flg_nos.text = String(f_ar.count - 1)}}
        if I69.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I69.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I69.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I70T(){
        n = 70
        k70 = k70 + 1
        if fbl == true && imgs.contains(I70.image!) == false{
            if k70%2 == 0{I70.image = UIImage(named: "flag");f_ar.append(70);flg_nos.text = String(f_ar.count - 1)}
            if k70%2 == 1 && f_ar.contains(70){I70.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 70)!);flg_nos.text = String(f_ar.count - 1)}}
        if I70.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I70.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I70.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I71T(){
        n = 71
        k71 = k71 + 1
        if fbl == true && imgs.contains(I71.image!) == false{
            if k71%2 == 0{I71.image = UIImage(named: "flag");f_ar.append(71);flg_nos.text = String(f_ar.count - 1)}
            if k71%2 == 1 && f_ar.contains(71){I71.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 71)!);flg_nos.text = String(f_ar.count - 1)}}
        if I71.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I71.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I71.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I72T(){
        n = 72
        k72 = k72 + 1
        if fbl == true && imgs.contains(I72.image!) == false{
            if k72%2 == 0{I72.image = UIImage(named: "flag");f_ar.append(72);flg_nos.text = String(f_ar.count - 1)}
            if k72%2 == 1 && f_ar.contains(72){I72.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 72)!);flg_nos.text = String(f_ar.count - 1)}}
        if I72.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I72.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I72.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I73T(){
        n = 73
        k73 = k73 + 1
        if fbl == true && imgs.contains(I73.image!) == false{
            if k73%2 == 0{I73.image = UIImage(named: "flag");f_ar.append(73);flg_nos.text = String(f_ar.count - 1)}
            if k73%2 == 1 && f_ar.contains(73){I73.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 73)!);flg_nos.text = String(f_ar.count - 1)}}
        if I73.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I73.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I73.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I74T(){
        n = 74
        k74 = k74 + 1
        if fbl == true && imgs.contains(I74.image!) == false{
            if k74%2 == 0{I74.image = UIImage(named: "flag");f_ar.append(74);flg_nos.text = String(f_ar.count - 1)}
            if k74%2 == 1 && f_ar.contains(74){I74.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 74)!);flg_nos.text = String(f_ar.count - 1)}}
        if I74.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I74.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I74.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I75T(){
        n = 75
        k75 = k75 + 1
        if fbl == true && imgs.contains(I75.image!) == false{
            if k75%2 == 0{I75.image = UIImage(named: "flag");f_ar.append(75);flg_nos.text = String(f_ar.count - 1)}
            if k75%2 == 1 && f_ar.contains(75){I75.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 75)!);flg_nos.text = String(f_ar.count - 1)}}
        if I75.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I75.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I75.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I76T(){
        n = 76
        k76 = k76 + 1
        if fbl == true && imgs.contains(I76.image!) == false{
            if k76%2 == 0{I76.image = UIImage(named: "flag");f_ar.append(76);flg_nos.text = String(f_ar.count - 1)}
            if k76%2 == 1 && f_ar.contains(76){I76.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 76)!);flg_nos.text = String(f_ar.count - 1)}}
        if I76.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I76.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I76.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I77T(){
        n = 77
        k77 = k77 + 1
        if fbl == true && imgs.contains(I77.image!) == false{
            if k77%2 == 0{I77.image = UIImage(named: "flag");f_ar.append(77);flg_nos.text = String(f_ar.count - 1)}
            if k77%2 == 1 && f_ar.contains(77){I77.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 77)!);flg_nos.text = String(f_ar.count - 1)}}
        if I77.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I77.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I77.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I78T(){
        n = 78
        k78 = k78 + 1
        if fbl == true && imgs.contains(I78.image!) == false{
            if k78%2 == 0{I78.image = UIImage(named: "flag");f_ar.append(78);flg_nos.text = String(f_ar.count - 1)}
            if k78%2 == 1 && f_ar.contains(78){I78.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 78)!);flg_nos.text = String(f_ar.count - 1)}}
        if I78.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I78.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I78.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I79T(){
        n = 79
        k79 = k79 + 1
        if fbl == true && imgs.contains(I79.image!) == false{
            if k79%2 == 0{I79.image = UIImage(named: "flag");f_ar.append(79);flg_nos.text = String(f_ar.count - 1)}
            if k79%2 == 1 && f_ar.contains(79){I79.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 79)!);flg_nos.text = String(f_ar.count - 1)}}
        if I79.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I79.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I79.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I80T(){
        n = 80
        k80 = k80 + 1
        if fbl == true && imgs.contains(I80.image!) == false{
            if k80%2 == 0{I80.image = UIImage(named: "flag");f_ar.append(80);flg_nos.text = String(f_ar.count - 1)}
            if k80%2 == 1 && f_ar.contains(80){I80.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 80)!);flg_nos.text = String(f_ar.count - 1)}}
        if I80.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I80.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I80.image = UIImage(named: "mine\(mine_no)")}}
    }
    @objc func I81T(){
        n = 81
        k81 = k81 + 1
        if fbl == true && imgs.contains(I81.image!) == false{
            if k81%2 == 0{I81.image = UIImage(named: "flag");f_ar.append(81);flg_nos.text = String(f_ar.count - 1)}
            if k81%2 == 1 && f_ar.contains(81){I81.image = UIImage(named: "mine")
            f_ar.remove(at: f_ar.firstIndex(of: 81)!);flg_nos.text = String(f_ar.count - 1)}}
        if I81.image != UIImage(named: "flag") && fbl == false{
                univ_main()
        I81.image = UIImage(named: "mine\(mine_no)")
        zero_mine()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100
        I81.image = UIImage(named: "mine\(mine_no)")}}
    }
    
    
    func univ_main(){
       ar.append(n)
       mine_no = 0
       num_to_ind()
       peri_scn()
        if skeleton[x_ind][y_ind] == 1{mine_no = 100;print("Bomb hit!!!!!")
            
            while j < mine_ar.count {
                t = mine_ar[j]
                m_trigger()
                disable()
                
               // print("\(j)ok boomer\(t)")
                j = j + 1
            }
            
        }
        //flg_nos.text = String(f_ar.count)
        win_eval()
       print("Univ_main was run, with n = \(n)")
    }
}

