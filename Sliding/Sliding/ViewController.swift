//  ViewController.swift
//  Sliding
//  Created by Harshvardhan Mestha on 4/25/20.
//  Copyright © 2020 Harshvardhan Mestha. All rights reserved.
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
    @IBOutlet weak var I0: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let I0U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I0U.addTarget(self, action: #selector(self.I0T))
        I0U.direction = .up
        I0.addGestureRecognizer(I0U)
        let I0L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I0L.addTarget(self, action: #selector(self.I0T))
        I0L.direction = .left
        I0.addGestureRecognizer(I0L)
        let I1D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I1D.addTarget(self, action: #selector(self.I1T))
        I1D.direction = .down
        I1.addGestureRecognizer(I1D)
        let I1R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I1R.addTarget(self, action: #selector(self.I1T))
        I1R.direction = .right
        I1.addGestureRecognizer(I1R)
        let I2R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I2R.addTarget(self, action: #selector(self.I2T))
        I2R.direction = .right
        I2.addGestureRecognizer(I2R)
        let I2L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I2L.addTarget(self, action: #selector(self.I2T))
        I2L.direction = .left
        I2.addGestureRecognizer(I2L)
        let I2D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I2D.addTarget(self, action: #selector(self.I2T))
        I2D.direction = .down
        I2.addGestureRecognizer(I2D)
        let I3R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I3R.addTarget(self, action: #selector(self.I3T))
        I3R.direction = .right
        I3.addGestureRecognizer(I3R)
        let I3L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I3L.addTarget(self, action: #selector(self.I3T))
        I3L.direction = .left
        I3.addGestureRecognizer(I3L)
        let I3D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I3D.addTarget(self, action: #selector(self.I3T))
        I3D.direction = .down
        I3.addGestureRecognizer(I3D)
        let I4L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I4L.addTarget(self, action: #selector(self.I4T))
        I4L.direction = .left
        I4.addGestureRecognizer(I4L)
        let I4D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I4D.addTarget(self, action: #selector(self.I4T))
        I4D.direction = .down
        I4.addGestureRecognizer(I4D)
        let I5R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I5R.addTarget(self, action: #selector(self.I5T))
        I5R.direction = .right
        I5.addGestureRecognizer(I5R)
        let I5U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I5U.addTarget(self, action: #selector(self.I5T))
        I5U.direction = .up
        I5.addGestureRecognizer(I5U)
        let I5D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I5D.addTarget(self, action: #selector(self.I5T))
        I5D.direction = .down
        I5.addGestureRecognizer(I5D)
        let I6R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I6R.addTarget(self, action: #selector(self.I6T))
        I6R.direction = .right
        I6.addGestureRecognizer(I6R)
        let I6U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I6U.addTarget(self, action: #selector(self.I6T))
        I6U.direction = .up
        I6.addGestureRecognizer(I6U)
        let I6D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I6D.addTarget(self, action: #selector(self.I6T))
        I6D.direction = .down
        I6.addGestureRecognizer(I6D)
        let I6L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I6L.addTarget(self, action: #selector(self.I6T))
        I6L.direction = .left
        I6.addGestureRecognizer(I6L)
        let I7R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I7R.addTarget(self, action: #selector(self.I7T))
        I7R.direction = .right
        I7.addGestureRecognizer(I7R)
        let I7U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I7U.addTarget(self, action: #selector(self.I7T))
        I7U.direction = .up
        I7.addGestureRecognizer(I7U)
        let I7D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I7D.addTarget(self, action: #selector(self.I7T))
        I7D.direction = .down
        I7.addGestureRecognizer(I7D)
        let I7L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I7L.addTarget(self, action: #selector(self.I7T))
        I7L.direction = .left
        I7.addGestureRecognizer(I7L)
        let I8U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I8U.addTarget(self, action: #selector(self.I8T))
        I8U.direction = .up
        I8.addGestureRecognizer(I8U)
        let I8D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I8D.addTarget(self, action: #selector(self.I8T))
        I8D.direction = .down
        I8.addGestureRecognizer(I8D)
        let I8L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I8L.addTarget(self, action: #selector(self.I8T))
        I8L.direction = .left
        I8.addGestureRecognizer(I8L)
        let I9R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I9R.addTarget(self, action: #selector(self.I9T))
        I9R.direction = .right
        I9.addGestureRecognizer(I9R)
        let I9U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I9U.addTarget(self, action: #selector(self.I9T))
        I9U.direction = .up
        I9.addGestureRecognizer(I9U)
        let I9D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I9D.addTarget(self, action: #selector(self.I9T))
        I9D.direction = .down
        I9.addGestureRecognizer(I9D)
        let I10R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I10R.addTarget(self, action: #selector(self.I10T))
        I10R.direction = .right
        I10.addGestureRecognizer(I10R)
        let I10U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I10U.addTarget(self, action: #selector(self.I10T))
        I10U.direction = .up
        I10.addGestureRecognizer(I10U)
        let I10D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I10D.addTarget(self, action: #selector(self.I10T))
        I10D.direction = .down
        I10.addGestureRecognizer(I10D)
        let I10L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I10L.addTarget(self, action: #selector(self.I10T))
        I10L.direction = .left
        I10.addGestureRecognizer(I10L)
        let I11R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I11R.addTarget(self, action: #selector(self.I11T))
        I11R.direction = .right
        I11.addGestureRecognizer(I11R)
        let I11U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I11U.addTarget(self, action: #selector(self.I11T))
        I11U.direction = .up
        I11.addGestureRecognizer(I11U)
        let I11D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I11D.addTarget(self, action: #selector(self.I11T))
        I11D.direction = .down
        I11.addGestureRecognizer(I11D)
        let I11L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I11L.addTarget(self, action: #selector(self.I11T))
        I11L.direction = .left
        I11.addGestureRecognizer(I11L)
        let I12U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I12U.addTarget(self, action: #selector(self.I12T))
        I12U.direction = .up
        I12.addGestureRecognizer(I12U)
        let I12D = UISwipeGestureRecognizer(target: self, action: #selector(self.det_down))
        I12D.addTarget(self, action: #selector(self.I12T))
        I12D.direction = .down
        I12.addGestureRecognizer(I12D)
        let I12L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I12L.addTarget(self, action: #selector(self.I12T))
        I12L.direction = .left
        I12.addGestureRecognizer(I12L)
        let I13R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I13R.addTarget(self, action: #selector(self.I13T))
        I13R.direction = .right
        I13.addGestureRecognizer(I13R)
        let I13U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I13U.addTarget(self, action: #selector(self.I13T))
        I13U.direction = .up
        I13.addGestureRecognizer(I13U)
        let I14R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I14R.addTarget(self, action: #selector(self.I14T))
        I14R.direction = .right
        I14.addGestureRecognizer(I14R)
        let I14U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I14U.addTarget(self, action: #selector(self.I14T))
        I14U.direction = .up
        I14.addGestureRecognizer(I14U)
        let I14L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I14L.addTarget(self, action: #selector(self.I14T))
        I14L.direction = .left
        I14.addGestureRecognizer(I14L)
        let I15R = UISwipeGestureRecognizer(target: self, action: #selector(self.det_right))
        I15R.addTarget(self, action: #selector(self.I15T))
        I15R.direction = .right
        I15.addGestureRecognizer(I15R)
        let I15U = UISwipeGestureRecognizer(target: self, action: #selector(self.det_up))
        I15U.addTarget(self, action: #selector(self.I15T))
        I15U.direction = .up
        I15.addGestureRecognizer(I15U)
        let I15L = UISwipeGestureRecognizer(target: self, action: #selector(self.det_left))
        I15L.addTarget(self, action: #selector(self.I15T))
        I15L.direction = .left
        I15.addGestureRecognizer(I15L)
        
        intitalise()
        while i>0 {
            locate()
            random()
            i = i - 1}
        
        render()
        
    }
    var i = 42
    var skeleton = Array(repeating: Array(repeating: 0, count: 4), count: 4)
    var solved = Array(repeating: Array(repeating: 0, count: 4), count: 4)
    var x = 3
    var y = 3
    var temp = 0
    var m = 0
    var n = 0
    var move_mod = -1
    
    var mod = ""
    func intitalise(){
        skeleton[0][0] = 1
        skeleton[0][1] = 2
        skeleton[0][2] = 3
        skeleton[0][3] = 4
        skeleton[1][0] = 5
        skeleton[1][1] = 6
        skeleton[1][2] = 7
        skeleton[1][3] = 8
        skeleton[2][0] = 9
        skeleton[2][1] = 10
        skeleton[2][2] = 11
        skeleton[2][3] = 12
        skeleton[3][0] = 13
        skeleton[3][1] = 14
        skeleton[3][2] = 15
        skeleton[3][3] = 0
        
        solved[0][0] = 1
        solved[0][1] = 2
        solved[0][2] = 3
        solved[0][3] = 4
        solved[1][0] = 5
        solved[1][1] = 6
        solved[1][2] = 7
        solved[1][3] = 8
        solved[2][0] = 9
        solved[2][1] = 10
        solved[2][2] = 11
        solved[2][3] = 12
        solved[3][0] = 13
        solved[3][1] = 14
        solved[3][2] = 15
        solved[3][3] = 0
    }
    
    func render(){
        I1.image = UIImage(named: "\(skeleton[0][0])")
        I2.image = UIImage(named: "\(skeleton[0][1])")
        I3.image = UIImage(named: "\(skeleton[0][2])")
        I4.image = UIImage(named: "\(skeleton[0][3])")
        I5.image = UIImage(named: "\(skeleton[1][0])")
        I6.image = UIImage(named: "\(skeleton[1][1])")
        I7.image = UIImage(named: "\(skeleton[1][2])")
        I8.image = UIImage(named: "\(skeleton[1][3])")
        I9.image = UIImage(named: "\(skeleton[2][0])")
        I10.image = UIImage(named: "\(skeleton[2][1])")
        I11.image = UIImage(named: "\(skeleton[2][2])")
        I12.image = UIImage(named: "\(skeleton[2][3])")
        I13.image = UIImage(named: "\(skeleton[3][0])")
        I14.image = UIImage(named: "\(skeleton[3][1])")
        I15.image = UIImage(named: "\(skeleton[3][2])")
        I0.image = UIImage(named: "\(skeleton[3][3])")}
    
    @objc func I1T(){x = 0;y = 0;
        if mod == "down" {down();render()}
        if mod == "right" {right();render()}}
    @objc func I2T(){x = 0;y = 1;up_row()}
    @objc func I3T(){x = 0;y = 2;up_row()}
    @objc func I4T(){x = 0;y = 3;
        if mod == "down" {down();render()}
        if mod == "left" {left();render()}}
    @objc func I5T(){x = 1;y = 0;left_row()}
    @objc func I6T(){x = 1;y = 1;all_row()}
    @objc func I7T(){x = 1;y = 2;all_row()}
    @objc func I8T(){x = 1;y = 3;right_row()}
    @objc func I9T(){x = 2;y = 0;left_row()}
    @objc func I10T(){x = 2;y = 1;all_row()}
    @objc func I11T(){x = 2;y = 2;all_row()}
    @objc func I12T(){x = 2;y = 3;right_row()}
    @objc func I13T(){x = 3;y = 0;
        if mod == "up" {up();render()}
        if mod == "right" {right();render()}}
    @objc func I14T(){x = 3;y = 1;down_row()}
    @objc func I15T(){x = 3;y = 2;down_row()}
    @objc func I0T(){x = 3;y = 3;
        if mod == "up" {up();render()}
        if mod == "left" {left();render()}}
    
    @objc func det_up(){mod = "up"}
    @objc func det_down(){mod = "down"}
    @objc func det_left(){mod = "left"}
    @objc func det_right(){mod = "right"}

    func up(){temp = skeleton[x][y]
        if skeleton[x-1][y] == 0{
        skeleton[x][y] = skeleton[x-1][y]
        skeleton[x-1][y] = temp
        check()}}
    func down(){temp = skeleton[x][y]
        if skeleton[x+1][y] == 0{
        skeleton[x][y] = skeleton[x+1][y]
        skeleton[x+1][y] = temp
        check()}}
    func left(){temp = skeleton[x][y]
        if skeleton[x][y-1] == 0{
        skeleton[x][y] = skeleton[x][y-1]
        skeleton[x][y-1] = temp
        check()}}
    func right(){temp = skeleton[x][y]
        if skeleton[x][y+1] == 0{
        skeleton[x][y] = skeleton[x][y+1]
        skeleton[x][y+1] = temp
        check()}}
    
    func winmsg(title:String,message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "New Game", style: UIAlertAction.Style.default, handler: {(action) in self.i = 42;while self.i > 0{self.locate();self.random();self.i = self.i - 1};self.render()
            alert.dismiss(animated: true, completion: nil)}))
        self.present(alert,animated: true)}
    
    func check(){if skeleton == solved{winmsg(title: "You Win", message: "Congratulations !!!")}}
    
    func random(){var dir = [0,1,2,3]
        if x == 0 {let u_ind = dir.firstIndex(of: 0)!;dir.remove(at: u_ind)}
        if x == 3 {let d_ind = dir.firstIndex(of: 1)!;dir.remove(at: d_ind)}
        if y == 0 {let l_ind = dir.firstIndex(of: 2)!;dir.remove(at: l_ind)}
        if y == 3 {let r_ind = dir.firstIndex(of: 3)!;dir.remove(at: r_ind)}
        move_mod = dir.randomElement()!
        move()}
    
    func move(){
        if move_mod == 0{ups()}
        if move_mod == 1{downs()}
        if move_mod == 2{lefts()}
        if move_mod == 3{rights()}}
    
    func locate(){
        if skeleton[0][0] == 0{x = 0;y = 0}
        if skeleton[0][1] == 0{x = 0;y = 1}
        if skeleton[0][2] == 0{x = 0;y = 2}
        if skeleton[0][3] == 0{x = 0;y = 3}
        if skeleton[1][0] == 0{x = 1;y = 0}
        if skeleton[1][1] == 0{x = 1;y = 1}
        if skeleton[1][2] == 0{x = 1;y = 2}
        if skeleton[1][3] == 0{x = 1;y = 3}
        if skeleton[2][0] == 0{x = 2;y = 0}
        if skeleton[2][1] == 0{x = 2;y = 1}
        if skeleton[2][2] == 0{x = 2;y = 2}
        if skeleton[2][3] == 0{x = 2;y = 3}
        if skeleton[3][0] == 0{x = 3;y = 0}
        if skeleton[3][1] == 0{x = 3;y = 1}
        if skeleton[3][2] == 0{x = 3;y = 2}
        if skeleton[3][3] == 0{x = 3;y = 3}}
    
    func ups(){temp = skeleton[x][y]
        skeleton[x][y] = skeleton[x-1][y]
        skeleton[x-1][y] = temp}
    func downs(){temp = skeleton[x][y]
        skeleton[x][y] = skeleton[x+1][y]
        skeleton[x+1][y] = temp}
    func lefts(){temp = skeleton[x][y]
        skeleton[x][y] = skeleton[x][y-1]
        skeleton[x][y-1] = temp}
    func rights(){temp = skeleton[x][y]
        skeleton[x][y] = skeleton[x][y+1]
        skeleton[x][y+1] = temp}
    
    func up_row(){
        if mod == "down" {down();render()}
        if mod == "left" {left();render()}
        if mod == "right" {right();render()}}
    func down_row(){
        if mod == "up" {up();render()}
        if mod == "left" {left();render()}
        if mod == "right" {right();render()}}
    func left_row(){
        if mod == "up" {up();render()}
        if mod == "down" {down();render()}
        if mod == "right" {right();render()}}
    func right_row(){
        if mod == "up" {up();render()}
        if mod == "down" {down();render()}
        if mod == "left" {left();render()}}
    func all_row(){
        if mod == "up" {up();render()}
        if mod == "down" {down();render()}
        if mod == "left" {left();render()}
        if mod == "right" {right();render()}}
}
//total 420 lines of code.
