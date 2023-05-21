//
//  ViewController.swift
//  Stone paper scissors
//
//  Created by Harshvardhan Mestha on 8/2/18.
//  Copyright © 2018 Harshvardhan Mestha. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate  {

    @IBOutlet weak var PlayerImg: UIImageView!
    @IBOutlet weak var AiImg: UIImageView!
    @IBOutlet weak var PlayerScore: UILabel!
    @IBOutlet weak var AIScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    //hide keyboard when touch outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    var PlayerS = 0//Player Score variable
    var AIS = 0//AI Score variable.
    
    
    
    @IBAction func Rock(_ sender: Any) {
       print("rock")
        PlayerImg.image = #imageLiteral(resourceName: "Rock")//Assigns image based on user input
        
        //AI code
        var id = arc4random_uniform(9)
       print(id)
        if(0<=id&&id<=3){
            AiImg.image = #imageLiteral(resourceName: "Rock")
        }
        else if(3<=id&&id<=5){
            AiImg.image = #imageLiteral(resourceName: "Paper")
        }
        else if(6<=id&&id<=8){
            AiImg.image = #imageLiteral(resourceName: "Scissors")
        }
        
        //If player wins
        if(PlayerImg.image == #imageLiteral(resourceName: "Rock") && AiImg.image == #imageLiteral(resourceName: "Scissors")){
            PlayerS = PlayerS + 1
            PlayerScore.text = String(PlayerS)
        }
        //If AI wins
        else if(PlayerImg.image == #imageLiteral(resourceName: "Rock") && AiImg.image == #imageLiteral(resourceName: "Paper")){
            AIS = AIS + 1
            AIScore.text = String(AIS)
        }
        if(PlayerScore.text=="10"){
            Reset(title:"You Win !",message:"Congratulations !")
            AIS = 0
            PlayerS = 0
            PlayerScore.text = "0"
            AIScore.text = "0"
            AiImg.image = #imageLiteral(resourceName: "Blank")
            PlayerImg.image = #imageLiteral(resourceName: "Blank")
        }
        else if(AIScore.text=="10"){
            Reset(title:"AI Wins.",message:"Better luck next time.")
            AIS = 0
            PlayerS = 0
            PlayerScore.text = "0"
            AIScore.text = "0"
            AiImg.image = #imageLiteral(resourceName: "Blank")
            PlayerImg.image = #imageLiteral(resourceName: "Blank")
        }
    }
    
    
    
    
    //code for Paper Button
    @IBAction func Paper(_ sender: Any) {
        print("Paper")
        PlayerImg.image = #imageLiteral(resourceName: "Paper")//assigns image based on user input.
        
        //AI code
        var id = arc4random_uniform(9)
        print(id)
        if(0<=id&&id<=2){
            AiImg.image = #imageLiteral(resourceName: "Rock")
        }
        else if(3<=id&&id<=5){
            AiImg.image = #imageLiteral(resourceName: "Paper")
        }
        else if(6<=id&&id<=8){
            AiImg.image = #imageLiteral(resourceName: "Scissors")
        }
        
        
        //if player wins
        if(PlayerImg.image == #imageLiteral(resourceName: "Paper") && AiImg.image == #imageLiteral(resourceName: "Rock")){
            PlayerS = PlayerS + 1
            PlayerScore.text = String(PlayerS)
        }
            
        //if AI wins
        else if(PlayerImg.image == #imageLiteral(resourceName: "Paper") && AiImg.image == #imageLiteral(resourceName: "Scissors")){
            AIS = AIS + 1
            AIScore.text = String(AIS)
        }
        
        if(PlayerScore.text=="10"){
            Reset(title:"You Win !",message:"Congratulations !")
            AIS = 0
            PlayerS = 0
            PlayerScore.text = "0"
            AIScore.text = "0"
            AiImg.image = #imageLiteral(resourceName: "Blank")
            PlayerImg.image = #imageLiteral(resourceName: "Blank")
        }
        else if(AIScore.text=="10"){
            Reset(title:"AI Wins.",message:"Better luck next time.")
            AIS = 0
            PlayerS = 0
            PlayerScore.text = "0"
            AIScore.text = "0"
            AiImg.image = #imageLiteral(resourceName: "Blank")
            PlayerImg.image = #imageLiteral(resourceName: "Blank")
        }
        
        
        
        
    }
    
    
    //code for Scissor Button.
    @IBAction func Scissors(_ sender: Any) {
        print("Scissors")
        PlayerImg.image = #imageLiteral(resourceName: "Scissors")//Assigns image based on user input.
        
        //AI code.
        var id = arc4random_uniform(9)
        print(id)
        if(0<=id&&id<=2){
            AiImg.image = #imageLiteral(resourceName: "Rock")
        }
        else if(3<=id&&id<=5){
            AiImg.image = #imageLiteral(resourceName: "Paper")
        }
        else if(6<=id&&id<=8){
            AiImg.image = #imageLiteral(resourceName: "Scissors")
        }
        
        //If Player wins.
        if(PlayerImg.image == #imageLiteral(resourceName: "Scissors") && AiImg.image == #imageLiteral(resourceName: "Paper")){
            PlayerS = PlayerS + 1
            PlayerScore.text = String(PlayerS)
        }
        else if(PlayerImg.image == #imageLiteral(resourceName: "Scissors") && AiImg == #imageLiteral(resourceName: "Rock")){
            AIS = AIS + 1
            AIScore.text = String(AIS)
        }
        
        if(PlayerScore.text=="10"){
            Reset(title:"You Win !",message:"Congratulations !")
            AIS = 0
            PlayerS = 0
            PlayerScore.text = "0"
            AIScore.text = "0"
            AiImg.image = #imageLiteral(resourceName: "Blank")
            PlayerImg.image = #imageLiteral(resourceName: "Blank")
        }
        else if(AIScore.text=="10"){
            Reset(title:"AI Wins.",message:"Better luck next time.")
            AIS = 0
            PlayerS = 0
            PlayerScore.text = "0"
            AIScore.text = "0"
            AiImg.image = #imageLiteral(resourceName: "Blank")
            PlayerImg.image = #imageLiteral(resourceName: "Blank")
        }
        
        
     }
    
    
    
    
    
    
    
    
    //Alert code.
    
    func Reset(title:String,message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Restart", style: UIAlertActionStyle.default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
            
            }))
        self.present(alert,animated:true)
    }

}
