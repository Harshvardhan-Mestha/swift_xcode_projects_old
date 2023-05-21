



/*:
 
 # Welcome to iPhone HV !
 
 ## Instructions for the user :
 
 
 ### General Instructions  :
 
  * Click the phone to wake it or Click the grey button on the right.
 
  * Swipe (Drag) vertically upwards from the Home Button to go Home.
 
  * On the Home Screen there are 4 applications , click on the icon to open it.
 
 ### Instructions - Calculator :
 
  * Click the numbers to type 1st number.
 
  * Click the sign for the operation.
 
  * Click the numbers to type 2nd number.
 
  * Click the '=' button to get answer.
 
  * Click the 'AC' button to clear and reset the number and operation.
 
  * Click the '+/-' button to change sign.
 
  * Click the '.' button to add decimal point.
 
  * Click the '%' button to divide current number by 100.
 
 ### Instructions - Tic Tac Toe  :
 
  * Click the tile to play your move. The AI will automatically play next move.
 
 ### Instructions - Clock  :
 
 * No specific instruction. Times shown are not modifiable.
 
 ### Instructions - Wallpapers  :
 
 * Click the wallpaper thumbnail to set corresponding image as wallpaper.
 
 
 */


import UIKit
import PlaygroundSupport
import AVFoundation
var state = false//if the phone is off or on
var master : UIViewController!
let day = DateFormatter()
day.dateFormat = "dd"
let gmt = DateFormatter()
gmt.dateFormat  = "zzz"
let dateFormatter = DateFormatter()
dateFormatter.dateFormat  = "EE, dd MMM"
let timeFormatter = DateFormatter()
timeFormatter.dateFormat  = "HH:mm"
var x  = 0
let lockSound = Bundle.main.url(forResource: "LockSound", withExtension: "m4a")
var audioPlayer = AVAudioPlayer()
var WindhoekTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
var WellingtonTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
var DetroitTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
var ChennaiTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
var cities = ["Windhoek : \(WindhoekTime)","Wellington : \(WellingtonTime)","Detroit : \(DetroitTime)","Chennai : \(ChennaiTime)"]//array for table view in ClockScr
var bgmod = 5// indicates background

// View Controller for Wake Screen
class WakeScr : UIViewController{

    var offbutton : UIButton!
    var date_label : UILabel!
    var time_label : UILabel!
    let homeslider = UISlider()
    override func loadView() {
        
        
        let view = UIView()
        view.backgroundColor = .black
        
        //background image setup
        let image = UIImage(named: "bg\(bgmod).png")
        let imageView = UIImageView(image: image)
     
        let convertedDate = dateFormatter.string(from: Date(timeIntervalSinceNow: 1))
        // displays date.
        date_label = UILabel()
        date_label.textColor = .white
        date_label.text = "\(convertedDate)"
        
        
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        
        //displays time.
        time_label = UILabel()
        time_label.textColor = .white
        time_label.text = "\(convertedTime)"
        let font = UIFont.systemFont(ofSize: 50.0, weight: UIFont.Weight.thin)
        time_label.font = font
        
        //slider for home swipe
        let homeslider = UISlider()
        homeslider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        let home = UIImage(named: "HomeBtn.png")
        homeslider.minimumTrackTintColor = UIColor.black.withAlphaComponent(0)
        homeslider.maximumTrackTintColor = UIColor.black.withAlphaComponent(0)
        homeslider.setThumbImage(home, for: .normal)
        homeslider.minimumValue = 0
        homeslider.maximumValue = 100
        homeslider.addTarget(self, action: #selector(toHome(sender:)), for: UIControl.Event.primaryActionTriggered)
        homeslider.setValue(0, animated: true)
        
        //button to turn off
        offbutton = UIButton(frame: CGRect(x: 330, y: 180, width: 8, height: 60))
        offbutton.backgroundColor = .gray
        offbutton.addTarget(self, action: #selector(Off), for: .touchUpInside)
        
        //adding all components
        view.addSubview(imageView)
        view.addSubview(time_label)
        view.addSubview(date_label)
        view.addSubview(homeslider)
        view.addSubview(offbutton)
        
       
        time_label.translatesAutoresizingMaskIntoConstraints = false
        date_label.translatesAutoresizingMaskIntoConstraints = false
        homeslider.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
       
        
        // adding the constraints
        NSLayoutConstraint.activate([
            time_label.topAnchor.constraint(equalTo: view.topAnchor, constant: 130),
            time_label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 132),
            
            date_label.topAnchor.constraint(equalTo: view.topAnchor, constant: 190),
            date_label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 145),
            
            homeslider.topAnchor.constraint(equalTo: view.topAnchor, constant: 520),
            homeslider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 168),
            homeslider.widthAnchor.constraint(equalToConstant: 40),
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
        ])
        
        self.view = view
        startTimer()
        onTimer(timer:)}
    
    //called when home slider is moved
    @objc func toHome(sender: UISlider) {
        homeslider.setValue(Float(Int(homeslider.value)), animated: true)
        x = Int(sender.value)
        print(x)
        if x >= 30{
            master = HomeScr()
            PlaygroundPage.current.liveView = master}
        else{homeslider.setValue(0, animated: true)}}
   
    
    
    //called when offbutton is clicked
    @objc func Off(){
        state = false
        if state == true{master = WakeScr()}
        else{master = OffScr()}
        PlaygroundPage.current.liveView = master}
    
    //starts timer to display time
    func startTimer() {Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WakeScr.onTimer(timer:)), userInfo: nil, repeats: true)}
    
    //called every second to update time
    @objc func onTimer(timer:Timer!) {
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        time_label.text = "\(convertedTime)"
        let convertedDate = dateFormatter.string(from: Date(timeIntervalSinceNow: 1))
        date_label.text = "\(convertedDate)"}
}
   

    

class OffScr : UIViewController{
    var offbutton : UIButton!
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        
         //button to turn off
        offbutton = UIButton(frame: CGRect(x: 330, y: 180, width: 8, height: 60))
        offbutton.backgroundColor = .gray
        offbutton.addTarget(self, action: #selector(On), for: .touchUpInside)
        
        //background image setup
        let image = UIImage(named: "bg4.png")
        let imageView = UIImageView(image: image)
        
        //gesture for tapping view
        let OffScrActive = UITapGestureRecognizer(target: self, action: #selector(self.On))
        
        //adding components
        view.addSubview(imageView)
        view.addSubview(offbutton)
        
        //adding gesture
        view.addGestureRecognizer(OffScrActive)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        // adding the constraints
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),])
        self.view = view}
    
    //Called when view tapped
    @objc func On(){
        state = true
        if state == true{master = WakeScr()}
        else{master = OffScr()}
        PlaygroundPage.current.liveView = master}
}


class HomeScr: UIViewController{
    
    var calc_icon : UIButton!
    var tic_icon : UIButton!
    var clock_icon : UIButton!
    var wall_icon : UIButton!
    
    var calc_lbl : UILabel!
    var tic_lbl : UILabel!
    var clock_lbl : UILabel!
    var wall_lbl : UILabel!
    
    var time_label : UILabel!
    let homeslider = UISlider()
    var offbutton : UIButton!
    var calc_img = UIImage(named: "calc-pic.png")
    var note_img = UIImage(named: "tic-pic.png")
    var clock_pic = UIImage(named: "clock-pic.png")
    var wall_pic = UIImage(named: "wall-pic.png")
    let image1 = UIImage(named: "bgh\(bgmod).png")
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        
        //background image setup
        let imageView = UIImageView(image: image1)
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        let font = UIFont.systemFont(ofSize: 13.0, weight: UIFont.Weight.medium)
        let appfont = UIFont.systemFont(ofSize: 9, weight: .regular)
        
        //time display label setup
        time_label = UILabel()
        time_label.textColor = .white
        time_label.text = "\(convertedTime)"
        time_label.font = font
        
        //calculator icon and label setup
        calc_lbl = UILabel()
        calc_lbl.textColor = .white
        calc_lbl.text = "Calculator"
        calc_lbl.font = appfont
        calc_icon = UIButton()
        calc_icon.addTarget(self, action: #selector(tocalc), for: .touchUpInside)
        calc_icon.setImage(calc_img, for: .normal)
        
        //tic tac toe icon and label setup
        tic_lbl = UILabel()
        tic_lbl.textColor = .white
        tic_lbl.text = "X n O"
        tic_lbl.font = appfont
        tic_icon = UIButton()
        tic_icon.addTarget(self, action: #selector(togame), for: .touchUpInside)
        tic_icon.setImage(note_img, for: .normal)
        
        //clock icon and label setup
        clock_lbl = UILabel()
        clock_lbl.textColor = .white
        clock_lbl.text = "Clock"
        clock_lbl.font = appfont
        clock_icon = UIButton()
        clock_icon.addTarget(self, action: #selector(toclock), for: .touchUpInside)
        clock_icon.setImage(clock_pic, for: .normal)
        
        //offbutton setup
        offbutton = UIButton(frame: CGRect(x: 330, y: 180, width: 8, height: 60))
        offbutton.backgroundColor = .gray
        offbutton.addTarget(self, action: #selector(Off), for: .touchUpInside)
        
        //wallpapers icon and label setup
        wall_lbl = UILabel()
        wall_lbl.textColor = .white
        wall_lbl.text = "Wallpapers"
        wall_lbl.font = appfont
        wall_icon = UIButton()
        wall_icon.addTarget(self, action: #selector(towall), for: .touchUpInside)
        wall_icon.setImage(wall_pic, for: .normal)
        
        
        //adding components
        view.addSubview(imageView)
        view.addSubview(calc_icon)
        view.addSubview(calc_lbl)
        view.addSubview(tic_icon)
        view.addSubview(tic_lbl)
        view.addSubview(clock_icon)
        view.addSubview(clock_lbl)
        view.addSubview(wall_icon)
        view.addSubview(wall_lbl)
        view.addSubview(time_label)
        view.addSubview(offbutton)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        calc_icon.translatesAutoresizingMaskIntoConstraints = false
        calc_lbl.translatesAutoresizingMaskIntoConstraints = false
        tic_icon.translatesAutoresizingMaskIntoConstraints = false
        tic_lbl.translatesAutoresizingMaskIntoConstraints = false
        clock_icon.translatesAutoresizingMaskIntoConstraints = false
        clock_lbl.translatesAutoresizingMaskIntoConstraints = false
        wall_icon.translatesAutoresizingMaskIntoConstraints = false
        wall_lbl.translatesAutoresizingMaskIntoConstraints = false
        time_label.translatesAutoresizingMaskIntoConstraints = false
        
        //adding constraints
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            
            calc_icon.topAnchor.constraint(equalTo: view.topAnchor, constant: 95),
            calc_icon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            calc_icon.widthAnchor.constraint(equalToConstant: 42),
            calc_icon.heightAnchor.constraint(equalToConstant: 42),
            
            calc_lbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 138),
            calc_lbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 78),
            
            tic_icon.topAnchor.constraint(equalTo: view.topAnchor, constant: 95),
            tic_icon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 140),
            tic_icon.widthAnchor.constraint(equalToConstant: 42),
            tic_icon.heightAnchor.constraint(equalToConstant: 42),
            
            tic_lbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 138),
            tic_lbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 148),
            
            clock_icon.topAnchor.constraint(equalTo: view.topAnchor, constant: 95),
            clock_icon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            clock_icon.widthAnchor.constraint(equalToConstant: 42),
            clock_icon.heightAnchor.constraint(equalToConstant: 42),
            
            clock_lbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 138),
            clock_lbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 208),
            
            wall_icon.topAnchor.constraint(equalTo: view.topAnchor, constant: 95),
            wall_icon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 260),
            wall_icon.widthAnchor.constraint(equalToConstant: 42),
            wall_icon.heightAnchor.constraint(equalToConstant: 42),
            
            wall_lbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 138),
            wall_lbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 258),
            
            time_label.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            time_label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 77),])
        
        self.view = view
        startTimer()
        onTimer(timer:)}
    
    //called when calculator tapped
    @objc func tocalc(){
        master = CalcScr()
        PlaygroundPage.current.liveView = master}
    //called when clock tapped
    @objc func toclock(){
        master = ClockScr()
        PlaygroundPage.current.liveView = master}
    //called when tic tac toe tapped
    @objc func togame(){
        master = GameScr()
        PlaygroundPage.current.liveView = master}
    //called when wallpapers tapped
    @objc func towall(){
        master = WallScr()
        PlaygroundPage.current.liveView = master}
    //starts timer to display time
    func startTimer() {Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WakeScr.onTimer(timer:)), userInfo: nil, repeats: true)}
    //called when off button tapped
    @objc func Off(){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: lockSound!)
            audioPlayer.play()} catch {
            print("couldn't load sound file")}
        state = false
        if state == true{master = WakeScr()}
        else{master = OffScr()}
        PlaygroundPage.current.liveView = master}
    //called every second to update time
    @objc func onTimer(timer:Timer!) { // print("Timer here")
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        time_label.text = "\(convertedTime)"}}

class CalcScr : UIViewController, UITextFieldDelegate{
    let div_on = UIImage(named: "btdiv2.png")
    let div_off = UIImage(named: "btdiv.png")
    let mult_on = UIImage(named: "btmul2.png")
    let mult_off = UIImage(named: "btmul.png")
    let add_on = UIImage(named: "btadd2.png")
    let add_off = UIImage(named: "btadd.png")
    let sub_on = UIImage(named: "btsub2.png")
    let sub_off = UIImage(named: "btsub.png")
    let cancelpic = UIImage(named: "btcancel.png")
    let clearpic = UIImage(named: "btclr.png")
    
    
    var x1 = 0
    var x2 = 0
    var x3 = 0
    var x4 = 0
    var x5 = 0
    var x6 = 0
    var x7 = 0
    var x8 = 0
    var x9 = 0
    var x0 = 0
    var total = 0
    var homeslider = UISlider()
    var time_label : UILabel!
    var bt_1 : UIButton!
    var bt_2 : UIButton!
    var bt_3 : UIButton!
    var bt_4 : UIButton!
    var bt_5 : UIButton!
    var bt_6 : UIButton!
    var bt_7 : UIButton!
    var bt_8 : UIButton!
    var bt_9 : UIButton!
    var bt_0 : UIButton!
    var bt_div : UIButton!
    var bt_mult : UIButton!
    var bt_add : UIButton!
    var bt_sub : UIButton!
    var bt_eql : UIButton!
    var bt_sign : UIButton!
    var bt_clear : UIButton!
    var bt_prcnt : UIButton!
    var bt_pt : UIButton!
    var field : UITextField!
    var offbutton : UIButton!
    let calc_font = UIFont.systemFont(ofSize: 60, weight: UIFont.Weight.thin)
    var num1 = 0.0
    var num2 = 0.0
    var r : Float = 0.0
    var disp = "0"
    var div_state = 0
    var mult_state = 0
    var add_state = 0
    var sub_state = 0
    var newnum  = false
    var clearstate = false
    var oprnd = "null"
    var ans = 0.0
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        //background image setup
        let image = UIImage(named: "bg4.png")
        let imageView = UIImageView(image: image)
        
        //homeswipe setup
        let homeslider = UISlider()
        homeslider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        let home = UIImage(named: "HomeBtn.png")
        homeslider.minimumTrackTintColor = UIColor.black.withAlphaComponent(0)
        homeslider.maximumTrackTintColor = UIColor.black.withAlphaComponent(0)
        homeslider.setThumbImage(home, for: .normal)
        homeslider.minimumValue = 0
        homeslider.maximumValue = 100
        homeslider.addTarget(self, action: #selector(toHome(sender:)), for: UIControl.Event.primaryActionTriggered)
        homeslider.setValue(0, animated: true)
        
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        
        //time display setup
        time_label = UILabel()
        time_label.textColor = .white
        time_label.text = "\(convertedTime)"
        let font = UIFont.systemFont(ofSize: 13.0, weight: UIFont.Weight.medium)
        time_label.font = font
        
        //textfield setup
        field = UITextField()
        field.borderStyle = .roundedRect
        field.textAlignment = .right
        field.font = calc_font
        field.backgroundColor = .black
        field.textColor = .white
        field.isUserInteractionEnabled = true
        field.adjustsFontSizeToFitWidth = true
        field.addTarget(self, action: #selector(editingChanged(sender:)), for: .editingChanged)
        field.isUserInteractionEnabled = false
        
        offbutton = UIButton(frame: CGRect(x: 330, y: 180, width: 8, height: 60))
        offbutton.backgroundColor = .gray
        offbutton.addTarget(self, action: #selector(Off), for: .touchUpInside)
        
        // Keypad buttons setup
        bt_1 = UIButton()
        let b1 = UIImage(named: "bt1.png")
        bt_1.setImage(b1, for: .normal)
        bt_1.addTarget(self, action: #selector(bt1), for: .touchDown)
        bt_1.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_2 = UIButton()
        let b2 = UIImage(named: "bt2.png")
        bt_2.setImage(b2, for: .normal)
        bt_2.addTarget(self, action: #selector(bt2), for: .touchUpInside)
        bt_2.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_3 = UIButton()
        let b3 = UIImage(named: "bt3.png")
        bt_3.setImage(b3, for: .normal)
        bt_3.addTarget(self, action: #selector(bt3), for: .touchUpInside)
        bt_3.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_4 = UIButton()
        let b4 = UIImage(named: "bt4.png")
        bt_4.setImage(b4, for: .normal)
        bt_4.addTarget(self, action: #selector(bt4), for: .touchUpInside)
        bt_4.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_5 = UIButton()
        let b5 = UIImage(named: "bt5.png")
        bt_5.setImage(b5, for: .normal)
        bt_5.addTarget(self, action: #selector(bt5), for: .touchUpInside)
        bt_5.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_6 = UIButton()
        let b6 = UIImage(named: "bt6.png")
        bt_6.setImage(b6, for: .normal)
        bt_6.addTarget(self, action: #selector(bt6), for: .touchUpInside)
        bt_6.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_7 = UIButton()
        let b7 = UIImage(named: "bt7.png")
        bt_7.setImage(b7, for: .normal)
        bt_7.addTarget(self, action: #selector(bt7), for: .touchUpInside)
        bt_7.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_8 = UIButton()
        let b8 = UIImage(named: "bt8.png")
        bt_8.setImage(b8, for: .normal)
        bt_8.addTarget(self, action: #selector(bt8), for: .touchUpInside)
        bt_8.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_9 = UIButton()
        let b9 = UIImage(named: "bt9.png")
        bt_9.setImage(b9, for: .normal)
        bt_9.addTarget(self, action: #selector(bt9), for: .touchUpInside)
        bt_9.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_0 = UIButton()
        let b0 = UIImage(named: "bt0.png")
        bt_0.setImage(b0, for: .normal)
        bt_0.addTarget(self, action: #selector(bt0), for: .touchUpInside)
        bt_0.addTarget(self, action: #selector(editingChanged(sender:)), for: .touchUpInside)
        
        bt_div = UIButton()
        let bdiv = UIImage(named: "btdiv.png")
        bt_div.setImage(bdiv, for: .normal)
        bt_div.addTarget(self, action: #selector(div), for: .touchUpInside)
        
        bt_mult = UIButton()
        let bmul = UIImage(named: "btmul.png")
        bt_mult.setImage(bmul, for: .normal)
        bt_mult.addTarget(self, action: #selector(mult), for: .touchUpInside)
        
        bt_add = UIButton()
        let badd = UIImage(named: "btadd.png")
        bt_add.setImage(badd, for: .normal)
        bt_add.addTarget(self, action: #selector(add), for: .touchUpInside)
        
        bt_sub = UIButton()
        let bsub = UIImage(named: "btsub.png")
        bt_sub.setImage(bsub, for: .normal)
        bt_sub.addTarget(self, action: #selector(sub), for: .touchUpInside)
        
        bt_clear = UIButton()
        let bclr = UIImage(named: "btclr.png")
        bt_clear.setImage(bclr, for: .normal)
        bt_clear.addTarget(self, action: #selector(clear), for: .touchUpInside)
        
        bt_prcnt = UIButton()
        let bprcnt = UIImage(named: "btprcnt.png")
        bt_prcnt.setImage(bprcnt, for: .normal)
        bt_prcnt.addTarget(self, action: #selector(percent), for: .touchUpInside)
        
        bt_pt = UIButton()
        let bpt = UIImage(named: "btdot.png")
        bt_pt.setImage(bpt, for: .normal)
        bt_pt.addTarget(self, action: #selector(point), for: .touchUpInside)
        
        bt_sign = UIButton()
        let bsign = UIImage(named: "btsign.png")
        bt_sign.setImage(bsign, for: .normal)
        bt_sign.addTarget(self, action: #selector(sign), for: .touchUpInside)
        
        bt_eql = UIButton()
        let beql = UIImage(named: "bteql.png")
        bt_eql.setImage(beql, for: .normal)
        bt_eql.addTarget(self, action: #selector(compute), for: .touchUpInside)
        
        
        //adding components
        view.addSubview(imageView)
        view.addSubview(offbutton)
        view.addSubview(homeslider)
        view.addSubview(time_label)
        view.addSubview(field)
        view.addSubview(bt_1)
        view.addSubview(bt_2)
        view.addSubview(bt_3)
        view.addSubview(bt_4)
        view.addSubview(bt_5)
        view.addSubview(bt_6)
        view.addSubview(bt_7)
        view.addSubview(bt_8)
        view.addSubview(bt_9)
        view.addSubview(bt_0)
        view.addSubview(bt_div)
        view.addSubview(bt_mult)
        view.addSubview(bt_add)
        view.addSubview(bt_sub)
        view.addSubview(bt_sign)
        view.addSubview(bt_pt)
        view.addSubview(bt_prcnt)
        view.addSubview(bt_clear)
        view.addSubview(bt_eql)
        
        
        time_label.translatesAutoresizingMaskIntoConstraints = false
        field.translatesAutoresizingMaskIntoConstraints = false
        bt_1.translatesAutoresizingMaskIntoConstraints = false
        bt_2.translatesAutoresizingMaskIntoConstraints = false
        bt_3.translatesAutoresizingMaskIntoConstraints = false
        bt_4.translatesAutoresizingMaskIntoConstraints = false
        bt_5.translatesAutoresizingMaskIntoConstraints = false
        bt_6.translatesAutoresizingMaskIntoConstraints = false
        bt_7.translatesAutoresizingMaskIntoConstraints = false
        bt_8.translatesAutoresizingMaskIntoConstraints = false
        bt_9.translatesAutoresizingMaskIntoConstraints = false
        bt_0.translatesAutoresizingMaskIntoConstraints = false
        bt_div.translatesAutoresizingMaskIntoConstraints = false
        bt_mult.translatesAutoresizingMaskIntoConstraints = false
        bt_add.translatesAutoresizingMaskIntoConstraints = false
        bt_sub.translatesAutoresizingMaskIntoConstraints = false
        bt_prcnt.translatesAutoresizingMaskIntoConstraints = false
        bt_pt.translatesAutoresizingMaskIntoConstraints = false
        bt_sign.translatesAutoresizingMaskIntoConstraints = false
        bt_clear.translatesAutoresizingMaskIntoConstraints = false
        bt_eql.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        homeslider.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        //adding constraints
        NSLayoutConstraint.activate([
            
            time_label.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            time_label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 77),
            
            field.topAnchor.constraint(equalTo: view.topAnchor, constant: 170),
            field.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 62),
            field.widthAnchor.constraint(equalToConstant: 255),
            field.heightAnchor.constraint(equalToConstant: 80),
          
            bt_1.topAnchor.constraint(equalTo: view.topAnchor, constant: 430),
            bt_1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65),
            bt_1.widthAnchor.constraint(equalToConstant: 55),
            bt_1.heightAnchor.constraint(equalToConstant: 55),
            
            bt_2.topAnchor.constraint(equalTo: view.topAnchor, constant: 430),
            bt_2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
            bt_2.widthAnchor.constraint(equalToConstant: 55),
            bt_2.heightAnchor.constraint(equalToConstant: 55),
            
            bt_3.topAnchor.constraint(equalTo: view.topAnchor, constant: 430),
            bt_3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 195),
            bt_3.widthAnchor.constraint(equalToConstant: 55),
            bt_3.heightAnchor.constraint(equalToConstant: 55),
            
            bt_4.topAnchor.constraint(equalTo: view.topAnchor, constant: 370),
            bt_4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65),
            bt_4.widthAnchor.constraint(equalToConstant: 55),
            bt_4.heightAnchor.constraint(equalToConstant: 55),
            
            bt_5.topAnchor.constraint(equalTo: view.topAnchor, constant: 370),
            bt_5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
            bt_5.widthAnchor.constraint(equalToConstant: 55),
            bt_5.heightAnchor.constraint(equalToConstant: 55),
            
            bt_6.topAnchor.constraint(equalTo: view.topAnchor, constant: 370),
            bt_6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 195),
            bt_6.widthAnchor.constraint(equalToConstant: 55),
            bt_6.heightAnchor.constraint(equalToConstant: 55),
            
            bt_7.topAnchor.constraint(equalTo: view.topAnchor, constant: 310),
            bt_7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65),
            bt_7.widthAnchor.constraint(equalToConstant: 55),
            bt_7.heightAnchor.constraint(equalToConstant: 55),
            
            bt_8.topAnchor.constraint(equalTo: view.topAnchor, constant: 310),
            bt_8.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
            bt_8.widthAnchor.constraint(equalToConstant: 55),
            bt_8.heightAnchor.constraint(equalToConstant: 55),
            
            bt_9.topAnchor.constraint(equalTo: view.topAnchor, constant: 310),
            bt_9.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 195),
            bt_9.widthAnchor.constraint(equalToConstant: 55),
            bt_9.heightAnchor.constraint(equalToConstant: 55),
            
            bt_0.topAnchor.constraint(equalTo: view.topAnchor, constant: 490),
            bt_0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65),
            bt_0.widthAnchor.constraint(equalToConstant: 120),
            bt_0.heightAnchor.constraint(equalToConstant: 55),
            
            bt_div.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            bt_div.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 260),
            bt_div.widthAnchor.constraint(equalToConstant: 55),
            bt_div.heightAnchor.constraint(equalToConstant: 55),
            
            bt_mult.topAnchor.constraint(equalTo: view.topAnchor, constant: 310),
            bt_mult.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 260),
            bt_mult.widthAnchor.constraint(equalToConstant: 55),
            bt_mult.heightAnchor.constraint(equalToConstant: 55),
            
            bt_add.topAnchor.constraint(equalTo: view.topAnchor, constant: 430),
            bt_add.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 260),
            bt_add.widthAnchor.constraint(equalToConstant: 55),
            bt_add.heightAnchor.constraint(equalToConstant: 55),
            
            bt_sub.topAnchor.constraint(equalTo: view.topAnchor, constant: 370),
            bt_sub.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 260),
            bt_sub.widthAnchor.constraint(equalToConstant: 55),
            bt_sub.heightAnchor.constraint(equalToConstant: 55),
            
            bt_clear.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            bt_clear.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65),
            bt_clear.widthAnchor.constraint(equalToConstant: 55),
            bt_clear.heightAnchor.constraint(equalToConstant: 55),
            
            bt_prcnt.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            bt_prcnt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 195),
            bt_prcnt.widthAnchor.constraint(equalToConstant: 55),
            bt_prcnt.heightAnchor.constraint(equalToConstant: 55),
            
            bt_sign.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            bt_sign.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
            bt_sign.widthAnchor.constraint(equalToConstant: 55),
            bt_sign.heightAnchor.constraint(equalToConstant: 55),
            
            bt_pt.topAnchor.constraint(equalTo: view.topAnchor, constant: 490),
            bt_pt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 195),
            bt_pt.widthAnchor.constraint(equalToConstant: 55),
            bt_pt.heightAnchor.constraint(equalToConstant: 55),
            
            bt_eql.topAnchor.constraint(equalTo: view.topAnchor, constant: 490),
            bt_eql.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 260),
            bt_eql.widthAnchor.constraint(equalToConstant: 55),
            bt_eql.heightAnchor.constraint(equalToConstant: 55),
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            
            homeslider.topAnchor.constraint(equalTo: view.topAnchor, constant: 520),
            homeslider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 168),
            homeslider.widthAnchor.constraint(equalToConstant: 40),
            
            
            ])
        
        self.view = view
        startTimer()
        onTimer(timer:)
        field.text = "0"}
    
    //called when offbutton tapped
    @objc func Off(){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: lockSound!)
            audioPlayer.play()}
        catch {print("couldn't load sound file")}
        state = false
        if state == true{master = WakeScr()}
        else{master = OffScr()}
        PlaygroundPage.current.liveView = master}
    //caled when homeslider is moved
    @objc func toHome(sender: UISlider) {
        homeslider.setValue(Float(Int(homeslider.value)), animated: true)
        x = Int(sender.value)
        print(x)
        if x >= 30{
            master = HomeScr()
            PlaygroundPage.current.liveView = master}
        else{homeslider.setValue(0, animated: true)}}
    //starts timer
    func startTimer() {Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WakeScr.onTimer(timer:)), userInfo: nil, repeats: true)}
    //called every second to update time
    @objc func onTimer(timer:Timer!) {// print("Timer here")
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        time_label.text = "\(convertedTime)"}
    
    
    // ALL functions below called when corresponding button is tapped.
    @objc func bt1(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            field.text = ""
            newnum = false
            operation_reset()}
        if total == 0{
            field.text = ""
            field.text?.append("1")}
        else{field.text?.append("1")}
        if clearstate == true{
            field.text = ""
            field.text?.append("1")
            clearstate = false}
        x1 = x1+1}
    
    @objc func bt2(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            field.text = ""
            newnum = false
            operation_reset()}
        if total == 0{
            field.text = ""
            field.text?.append("2")}
        else{field.text?.append("2")}
        if clearstate == true{
            field.text = ""
            field.text?.append("2")
            clearstate = false}
        x2 = x2+1}
    
    @objc func bt3(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            field.text = ""
            newnum = false
            operation_reset()}
        if total == 0{
            field.text = ""
            field.text?.append("3")}
        else{field.text?.append("3")}
        if clearstate == true{
            field.text = ""
            field.text?.append("3")
            clearstate = false}
        x3 = x3+1}
    
    @objc func bt4(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            field.text = ""
            newnum = false
            operation_reset()}
        if total == 0{
            field.text = ""
            field.text?.append("4")}
        else{field.text?.append("4")}
        if clearstate == true{
            field.text = ""
            field.text?.append("4")
            clearstate = false}
        x4 = x4+1}
    
    @objc func bt5(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            field.text = ""
            newnum = false
            operation_reset()}
        if total == 0{
            field.text = ""
            field.text?.append("5")}
        else{field.text?.append("5")}
        if clearstate == true{
            field.text = ""
            field.text?.append("5")
            clearstate = false}
        x5 = x5+1}
    
    @objc func bt6(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            operation_reset()
            field.text = ""
            newnum = false}
        if total == 0{
            field.text = ""
            field.text?.append("6")}
        else{field.text?.append("6")}
        if clearstate == true{
            field.text = ""
            field.text?.append("6")
            clearstate = false}
        x6 = x6+1}
    
    @objc func bt7(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            field.text = ""
            newnum = false
            operation_reset()}
        if total == 0{
            field.text = ""
            field.text?.append("7")}
        else{field.text?.append("7")}
        if clearstate == true{
            field.text = ""
            field.text?.append("7")
            clearstate = false}
        x7 = x7+1}
    
    @objc func bt8(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            field.text = ""
            newnum = false
            operation_reset()}
        if total == 0{
            field.text = ""
            field.text?.append("8")}
        else{field.text?.append("8")}
        if clearstate == true{
            field.text = ""
            field.text?.append("8")
            clearstate = false}
        x8 = x8+1}
    
    @objc func bt9(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            field.text = ""
            newnum = false
            operation_reset()}
        if total == 0{
            field.text = ""
            field.text?.append("9")}
        else{field.text?.append("9")}
        if clearstate == true{
            field.text = ""
            field.text?.append("9")
            clearstate = false}
        x9 = x9+1}
    
    @objc func bt0(){
        total = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x0
        if newnum == true{
            field.text = ""
            newnum = false
            operation_reset()}
        if  field.text != "0"{field.text?.append("0")}
            if clearstate == true{
                field.text = ""
                field.text?.append("0")
                clearstate = false}}
    
    @objc func div(){
        let str = field.text
        num1 = Double(str!)!
        print(num1)
        newnum = true
        bt_div.setImage(div_on, for: .normal)
        div_state = div_state + 1
        if mult_state%2 == 1 || add_state%2 == 1 || sub_state%2 == 1{
            bt_mult.setImage(mult_off, for: .normal); mult_state = 0
            bt_add.setImage(add_off, for: .normal); add_state = 0
            bt_sub.setImage(sub_off, for: .normal);sub_state = 0}}
    
    @objc func mult(){
        let str = field.text
        num1 = Double(str!)!
        print(num1)
        newnum = true
        bt_mult.setImage(mult_on, for: .normal)
        mult_state = mult_state + 1
        if div_state%2 == 1 || add_state%2 == 1 || sub_state%2 == 1{
            bt_div.setImage(div_off, for: .normal); div_state = 0
            bt_add.setImage(add_off, for: .normal); add_state = 0
            bt_sub.setImage(sub_off, for: .normal);sub_state = 0}}
    
    @objc func add(){
        let str = field.text
        num1 = Double(str!)!
        print(num1)
        newnum = true
        bt_add.setImage(add_on, for: .normal)
        if add_state%2 == 1 {bt_add.setImage(add_off, for: .normal)}
        add_state = add_state + 1
        if mult_state%2 == 1 || div_state%2 == 1 || sub_state%2 == 1{
            bt_mult.setImage(mult_off, for: .normal); mult_state = 0
            bt_div.setImage(div_off, for: .normal); div_state = 0
            bt_sub.setImage(sub_off, for: .normal);sub_state = 0}}
    
    @objc func sub(){
        let str = field.text
        num1 = Double(str!)!
        print(num1)
        newnum = true
        bt_sub.setImage(sub_on, for: .normal)
        sub_state = sub_state + 1
        if mult_state%2 == 1 || add_state%2 == 1 || div_state%2 == 1{
            bt_mult.setImage(mult_off, for: .normal); mult_state = 0
            bt_add.setImage(add_off, for: .normal); add_state = 0
            bt_div.setImage(div_off, for: .normal);div_state = 0}}
    
    @objc func clear(){
        
        clearstate = true
        let str = field.text
        num1 = Double(str!)!
        num1 = num1 * 0
        field.text = "\(Int(num1))"
        operation_reset()
    }
    
    @objc func sign(){
        let str = field.text
        num1 = Double(str!)!
        num1 = num1 * -1
        if num1.truncatingRemainder(dividingBy: 1) == 0{field.text = "\(Int(num1))"}
        else{field.text = "\(num1)"}}
    
    @objc func percent(){
        let str = field.text
        num1 = Double(str!)!
        num1 = num1/100
        if num1.truncatingRemainder(dividingBy: 1) == 0{field.text = "\(Int(num1))"}
        else{field.text = "\(num1)"}}
    
    @objc func point(){
        if field.text?.contains(".") == false && field.text != "0"{
            field.text?.append(".")}}
    
    
    @objc func editingChanged(sender: UIButton) {
        let max_length  = 12
        if let text = field.text, text.count >= max_length {
            field.text = String(text.dropLast(text.count - max_length))
            return}}
    
    @objc func compute(){
        if div_state%2 == 1{oprnd = "div";div_state = 0}
        if mult_state%2 == 1{oprnd = "mult";mult_state = 0}
        if add_state%2 == 1{oprnd = "add";add_state = 0}
        if sub_state%2 == 1{oprnd = "sub";sub_state = 0}
        
        let str = field.text
        num2 = Double(str!)!
        
        if oprnd == "div"{
            
            if num1 == 0 && num2 == 0{field.text = "Error"}
            else{ans = num1/num2}
        }
        if oprnd == "mult"{ans = num1*num2}
        if oprnd == "add"{ans = num1+num2}
        if oprnd == "sub"{ans = num1-num2}
       
        if oprnd != "null"{
        if field.text != "Error"{
        if ans.truncatingRemainder(dividingBy: 1) == 0{
            field.text = "\(Int(ans))"
        }
        else{field.text = "\(ans)"}}
        else{field.text = "Error"}}
        
        oprnd = "null"
        //total = 0
        clearstate = true}
    //resets operation buttons
    func operation_reset(){
        bt_div.setImage(div_off, for: .normal)
        bt_mult.setImage(mult_off, for: .normal)
        bt_add.setImage(add_off, for: .normal)
        bt_sub.setImage(sub_off, for: .normal)
        }}

class GameScr : UIViewController {
    var I1 : UIButton!
    var I2 : UIButton!
    var I3 : UIButton!
    var I4 : UIButton!
    var I5 : UIButton!
    var I6 : UIButton!
    var I7 : UIButton!
    var I8 : UIButton!
    var I9 : UIButton!
    var AI_val = [1,2,3,4,5,6,7,8,9]
    var time_label : UILabel!
    let homeslider = UISlider()
    let X = UIImage(named: "X.png")
    let O = UIImage(named: "O.png")
    let empty = UIImage(named: "Empty.png")
    var label : UILabel!
    var offbutton : UIButton!
    
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        let image = UIImage(named: "bg.png")
        let imageView = UIImageView(image: image)
        
        //homeslider setup
        let homeslider = UISlider()
        homeslider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        let home = UIImage(named: "HomeBtn2.png")
        homeslider.minimumTrackTintColor = UIColor.black.withAlphaComponent(0)
        homeslider.maximumTrackTintColor = UIColor.black.withAlphaComponent(0)
        homeslider.setThumbImage(home, for: .normal)
        homeslider.minimumValue = 0
        homeslider.maximumValue = 100
        homeslider.addTarget(self, action: #selector(toHome(sender:)), for: UIControl.Event.primaryActionTriggered)
        homeslider.setValue(0, animated: true)
        
        
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        
        //time display label setup
        time_label = UILabel()
        time_label.textColor = .black
        time_label.text = "\(convertedTime)"
        let font = UIFont.systemFont(ofSize: 13.0, weight: UIFont.Weight.medium)
        time_label.font = font
        
        //caption setup
        label = UILabel()
        label.text = "Tic Tac Toe !"
        let fnt = UIFont.systemFont(ofSize: 30.0, weight: UIFont.Weight.medium)
        label.font = fnt
        
        
        //Game layout setup
        I1 = UIButton()
        I1.setImage(empty, for: .normal)
        I1.addTarget(self, action: #selector(T1), for: .touchUpInside)
        I2 = UIButton()
        I2.setImage(empty, for: .normal)
        I2.addTarget(self, action: #selector(T2), for: .touchUpInside)
        I3 = UIButton()
        I3.setImage(empty, for: .normal)
        I3.addTarget(self, action: #selector(T3), for: .touchUpInside)
        I4 = UIButton()
        I4.setImage(empty, for: .normal)
        I4.addTarget(self, action: #selector(T4), for: .touchUpInside)
        I5 = UIButton()
        I5.setImage(empty, for: .normal)
        I5.addTarget(self, action: #selector(T5), for: .touchUpInside)
        I6 = UIButton()
        I6.setImage(empty, for: .normal)
        I6.addTarget(self, action: #selector(T6), for: .touchUpInside)
        I7 = UIButton()
        I7.setImage(empty, for: .normal)
        I7.addTarget(self, action: #selector(T7), for: .touchUpInside)
        I8 = UIButton()
        I8.setImage(empty, for: .normal)
        I8.addTarget(self, action: #selector(T8), for: .touchUpInside)
        I9 = UIButton()
        I9.setImage(empty, for: .normal)
        I9.addTarget(self, action: #selector(T9), for: .touchUpInside)
        
        //offbutton setup
        offbutton = UIButton(frame: CGRect(x: 330, y: 180, width: 8, height: 60))
        offbutton.backgroundColor = .gray
        offbutton.addTarget(self, action: #selector(Off), for: .touchUpInside)
        
        //adding components
        view.addSubview(offbutton)
        view.addSubview(imageView)
        view.addSubview(homeslider)
        view.addSubview(time_label)
        view.addSubview(label)
        view.addSubview(I1)
        view.addSubview(I2)
        view.addSubview(I3)
        view.addSubview(I4)
        view.addSubview(I5)
        view.addSubview(I6)
        view.addSubview(I7)
        view.addSubview(I8)
        view.addSubview(I9)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        homeslider.translatesAutoresizingMaskIntoConstraints = false
        time_label.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        I1.translatesAutoresizingMaskIntoConstraints = false
        I2.translatesAutoresizingMaskIntoConstraints = false
        I3.translatesAutoresizingMaskIntoConstraints = false
        I4.translatesAutoresizingMaskIntoConstraints = false
        I5.translatesAutoresizingMaskIntoConstraints = false
        I6.translatesAutoresizingMaskIntoConstraints = false
        I7.translatesAutoresizingMaskIntoConstraints = false
        I8.translatesAutoresizingMaskIntoConstraints = false
        I9.translatesAutoresizingMaskIntoConstraints = false
        
        
        //adding constraints
        NSLayoutConstraint.activate([
            
            time_label.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            time_label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 77),
            
            I1.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            I1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 67),
            I1.widthAnchor.constraint(equalToConstant: 75),
            I1.heightAnchor.constraint(equalToConstant: 75),
            
            I2.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            I2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 152),
            I2.widthAnchor.constraint(equalToConstant: 75),
            I2.heightAnchor.constraint(equalToConstant: 75),
            
            I3.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            I3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 237),
            I3.widthAnchor.constraint(equalToConstant: 75),
            I3.heightAnchor.constraint(equalToConstant: 75),
            
            I4.topAnchor.constraint(equalTo: view.topAnchor, constant: 285),
            I4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 67),
            I4.widthAnchor.constraint(equalToConstant: 75),
            I4.heightAnchor.constraint(equalToConstant: 75),
            
            I5.topAnchor.constraint(equalTo: view.topAnchor, constant: 285),
            I5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 152),
            I5.widthAnchor.constraint(equalToConstant: 75),
            I5.heightAnchor.constraint(equalToConstant: 75),
            
            I6.topAnchor.constraint(equalTo: view.topAnchor, constant: 285),
            I6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 237),
            I6.widthAnchor.constraint(equalToConstant: 75),
            I6.heightAnchor.constraint(equalToConstant: 75),
        
            I7.topAnchor.constraint(equalTo: view.topAnchor, constant: 370),
            I7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 67),
            I7.widthAnchor.constraint(equalToConstant: 75),
            I7.heightAnchor.constraint(equalToConstant: 75),
            
            I8.topAnchor.constraint(equalTo: view.topAnchor, constant: 370),
            I8.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 152),
            I8.widthAnchor.constraint(equalToConstant: 75),
            I8.heightAnchor.constraint(equalToConstant: 75),
            
            I9.topAnchor.constraint(equalTo: view.topAnchor, constant: 370),
            I9.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 237),
            I9.widthAnchor.constraint(equalToConstant: 75),
            I9.heightAnchor.constraint(equalToConstant: 75),
            
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            
            homeslider.topAnchor.constraint(equalTo: view.topAnchor, constant: 520),
            homeslider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 168),
            homeslider.widthAnchor.constraint(equalToConstant: 40),
            
            
            ])
        
        self.view = view
        startTimer()
        onTimer(timer:)}
    //called when offbutton pressed
    @objc func Off(){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: lockSound!)
            audioPlayer.play()} catch {
            print("couldn't load sound file")}
        state = false
        if state == true{master = WakeScr()}
        else{master = OffScr()}
        PlaygroundPage.current.liveView = master}
    //called when slider moved
    @objc func toHome(sender: UISlider) {
        homeslider.setValue(Float(Int(homeslider.value)), animated: true)
        x = Int(sender.value)
        print(x)
        if x >= 30{
            master = HomeScr()
            PlaygroundPage.current.liveView = master}
        else{homeslider.setValue(0, animated: true)}}
    //starts timer
    func startTimer() {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WakeScr.onTimer(timer:)), userInfo: nil, repeats: true)}
    //called every second to update timer
    @objc func onTimer(timer:Timer!) {
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        time_label.text = "\(convertedTime)"}
    
    //Called when corresponding tile tapped
    @objc func T1(){
        I1.setImage(X, for: .normal)
        I1.isEnabled = false
        let itemToRemove = 1
        while AI_val.contains(itemToRemove) {
            if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                AI_val.remove(at: itemToRemoveIndex)}}
        AI()
        winloss()}
    @objc func T2(){
        I2.setImage(X, for: .normal)
        I2.isEnabled = false
        let itemToRemove = 2
        while AI_val.contains(itemToRemove) {
            if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                AI_val.remove(at: itemToRemoveIndex)}}
        AI()
        winloss()}
    @objc func T3(){
        I3.setImage(X, for: .normal)
        I3.isEnabled = false
        let itemToRemove = 3
        while AI_val.contains(itemToRemove) {
            if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                AI_val.remove(at: itemToRemoveIndex)}}
        AI()
        winloss()}
    @objc func T4(){
        I4.setImage(X, for: .normal)
        I4.isEnabled = false
        let itemToRemove = 4
        while AI_val.contains(itemToRemove) {
            if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                AI_val.remove(at: itemToRemoveIndex)}}
        AI()
        winloss()}
    @objc func T5(){
        I5.setImage(X, for: .normal)
        I5.isEnabled = false
        let itemToRemove = 5
        while AI_val.contains(itemToRemove) {
            if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                AI_val.remove(at: itemToRemoveIndex)}}
        AI()
        winloss()}
    @objc func T6(){
        I6.setImage(X, for: .normal)
        I6.isEnabled = false
        let itemToRemove = 6
        while AI_val.contains(itemToRemove) {
            if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                AI_val.remove(at: itemToRemoveIndex)}}
         AI()
        winloss()}
    @objc func T7(){
        I7.setImage(X, for: .normal)
        I7.isEnabled = false
        let itemToRemove = 7
        while AI_val.contains(itemToRemove) {
            if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                AI_val.remove(at: itemToRemoveIndex)}}
        AI()
        winloss()}
    @objc func T8(){
        I8.setImage(X, for: .normal)
        I8.isEnabled = false
        let itemToRemove = 8
        while AI_val.contains(itemToRemove) {
            if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                AI_val.remove(at: itemToRemoveIndex)}}
        AI()
        winloss()}
    @objc func T9(){
        I9.setImage(X, for: .normal)
        I9.isEnabled = false
        let itemToRemove = 9
        while AI_val.contains(itemToRemove) {
            if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                AI_val.remove(at: itemToRemoveIndex)}}
        AI()
        winloss()}
    func AI(){
        let m = AI_val.randomElement()
        if m == 1 {
           I1.setImage(O, for: .normal)
            let itemToRemove = 1
            while AI_val.contains(itemToRemove) {
                if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                    AI_val.remove(at: itemToRemoveIndex)}}
            I1.isEnabled = false}
        if m == 2 {
            I2.setImage(O, for: .normal)
            let itemToRemove = 2
            while AI_val.contains(itemToRemove) {
                if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                    AI_val.remove(at: itemToRemoveIndex)}}
            I2.isEnabled = false}
        if m == 3 {
            I3.setImage(O, for: .normal)
            let itemToRemove = 3
            while AI_val.contains(itemToRemove) {
                if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                    AI_val.remove(at: itemToRemoveIndex)}}
            I3.isEnabled = false}
        if m == 4 {
            I4.setImage(O, for: .normal)
            let itemToRemove = 4
            while AI_val.contains(itemToRemove) {
                if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                    AI_val.remove(at: itemToRemoveIndex)}}
            I4.isEnabled = false}
        if m == 5 {
            I5.setImage(O, for: .normal)
            let itemToRemove = 5
            while AI_val.contains(itemToRemove) {
                if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                    AI_val.remove(at: itemToRemoveIndex)}}
            I5.isEnabled = false}
        if m == 6 {
            I6.setImage(O, for: .normal)
            let itemToRemove = 6
            while AI_val.contains(itemToRemove) {
                if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                    AI_val.remove(at: itemToRemoveIndex)}}
            I6.isEnabled = false}
        if m == 7 {
            I7.setImage(O, for: .normal)
            let itemToRemove = 7
            while AI_val.contains(itemToRemove) {
                if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                    AI_val.remove(at: itemToRemoveIndex)}}
            I7.isEnabled = false}
        if m == 8 {
            I8.setImage(O, for: .normal)
            let itemToRemove = 8
            while AI_val.contains(itemToRemove) {
                if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                    AI_val.remove(at: itemToRemoveIndex)}}
            I8.isEnabled = false}
        if m == 9 {
            I9.setImage(O, for: .normal)
            let itemToRemove = 9
            while AI_val.contains(itemToRemove) {
                if let itemToRemoveIndex = AI_val.firstIndex(of: itemToRemove) {
                    AI_val.remove(at: itemToRemoveIndex)}
                I9.isEnabled = false}}}
    //checks who wins
    func winloss(){
        if I1.currentImage == X && I2.currentImage == X && I3.currentImage == X{Reset(title: "You Win", message: "Congratulations !!!")}
        else if I4.currentImage == X && I5.currentImage == X && I6.currentImage == X{Reset(title: "You Win", message: "Congratulations !!!")}
        else if I7.currentImage == X && I8.currentImage == X && I9.currentImage == X{Reset(title: "You Win", message: "Congratulations !!!")}
        else if I1.currentImage == X && I4.currentImage == X && I7.currentImage == X{Reset(title: "You Win", message: "Congratulations !!!")}
        else if I2.currentImage == X && I5.currentImage == X && I8.currentImage == X{Reset(title: "You Win", message: "Congratulations !!!")}
        else if I3.currentImage == X && I6.currentImage == X && I9.currentImage == X{Reset(title: "You Win", message: "Congratulations !!!")}
        else if I1.currentImage == X && I5.currentImage == X && I9.currentImage == X{Reset(title: "You Win", message: "Congratulations !!!")}
        else if I3.currentImage == X && I5.currentImage == X && I7.currentImage == X{Reset(title: "You Win", message: "Congratulations !!!")}
        //else{Reset(title: "It's a tie !", message: "Try again.")}
        else if AI_val == []{Reset(title: "It's a tie !", message: "Try again.")}
        
        if I1.currentImage == O && I2.currentImage == O && I2.currentImage == O{Reset(title: "You Lose", message: "Better luck next time.")}
        else if I4.currentImage == O && I5.currentImage == O && I6.currentImage == O{Reset(title: "You Lose", message: "Better luck next time.")}
        else if I7.currentImage == O && I8.currentImage == O && I9.currentImage == O{Reset(title: "You Lose", message: "Better luck next time.")}
        else if I1.currentImage == O && I4.currentImage == O && I7.currentImage == O{Reset(title: "You Lose", message: "Better luck next time.")}
        else if I2.currentImage == O && I5.currentImage == O && I8.currentImage == O{Reset(title: "You Lose", message: "Better luck next time.")}
        else if I3.currentImage == O && I6.currentImage == O && I9.currentImage == O{Reset(title: "You Lose", message: "Better luck next time.")}
        else if I1.currentImage == O && I5.currentImage == O && I9.currentImage == O{Reset(title: "You Lose", message: "Better luck next time.")}
        else if I3.currentImage == O && I5.currentImage == O && I7.currentImage == O{Reset(title: "You Lose", message: "Better luck next time.")}
        //else{Reset(title: "It's a tie !", message: "Try again.")}
        else if AI_val == []{Reset(title: "It's a tie !", message: "Try again.")}}
    //displays appropriate message
    func Reset(title:String,message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "New Game", style: UIAlertAction.Style.default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert,animated: true)
        
        reset_board()}
    //resets board
    func reset_board(){
        AI_val = [1,2,3,4,5,6,7,8,9]
        I1.setImage(empty, for: .normal)
        I2.setImage(empty, for: .normal)
        I3.setImage(empty, for: .normal)
        I4.setImage(empty, for: .normal)
        I5.setImage(empty, for: .normal)
        I6.setImage(empty, for: .normal)
        I7.setImage(empty, for: .normal)
        I8.setImage(empty, for: .normal)
        I9.setImage(empty, for: .normal)
        
        I1.isEnabled = true
        I2.isEnabled = true
        I3.isEnabled = true
        I4.isEnabled = true
        I5.isEnabled = true
        I6.isEnabled = true
        I7.isEnabled = true
        I8.isEnabled = true
        I9.isEnabled = true
        
    }}


//table view controller setup
class TableViewController : UITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)

        cell.textLabel?.text = cities[indexPath.row]
        cell.textLabel?.textColor = .lightGray
        cell.detailTextLabel?.text = cities[indexPath.row]
        cell.detailTextLabel?.textColor = .white
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 27)
        cell.backgroundColor = UIColor(red: 24/255.0, green: 24/255.0, blue: 24/255.0, alpha: 1.0)
        return cell
    }
}
    

class ClockScr : UIViewController {
    var m : UIButton!
    var time_label : UILabel!
    let homeslider = UISlider()
    var offbutton : UIButton!
    var timeFormatter1 = DateFormatter()
    var table : UITableViewController = TableViewController()
    var tableView: UITableView = UITableView()
    var header : UILabel!
    
    
    override func loadView() {
        
        
        let view = UIView()
        
        view.backgroundColor = .black
        //homeslider setup
        let homeslider = UISlider()
        homeslider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        let home = UIImage(named: "HomeBtn.png")
        homeslider.minimumTrackTintColor = UIColor.black.withAlphaComponent(1)
        homeslider.maximumTrackTintColor = UIColor.black.withAlphaComponent(1)
        homeslider.setThumbImage(home, for: .normal)
        homeslider.minimumValue = 0
        homeslider.maximumValue = 100
        homeslider.addTarget(self, action: #selector(toHome(sender:)), for: .primaryActionTriggered)
        //background image setup
        let image = UIImage(named: "WorldClockScr.png")
        let imageView = UIImageView(image: image)
        
        timeFormatter1.dateFormat  = "HH:mm"
        let convertedTime = timeFormatter1.string(from: Date(timeIntervalSinceNow: 1))
        //time display label setup
        time_label = UILabel()
        time_label.textColor = .white
        time_label.text = "\(convertedTime)"
        let font = UIFont.systemFont(ofSize: 13.0, weight: UIFont.Weight.medium)
        time_label.font = font
        
        //caption setup
        header = UILabel()
        header.textColor = .white
        header.text = "World Clock"
        let header_font = UIFont.systemFont(ofSize: 15.0, weight: UIFont.Weight.medium)
        header.font = header_font
        
        offbutton = UIButton(frame: CGRect(x: 330, y: 180, width: 8, height: 60))
        offbutton.backgroundColor = .gray
        offbutton.addTarget(self, action: #selector(Off), for: .touchUpInside)
        
         //table view setup
        tableView.numberOfRows(inSection: 4)
        tableView.backgroundColor = .black
        tableView.rowHeight = 75
        tableView.dataSource = table
        tableView.delegate = table
        tableView.sectionIndexColor = .white
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.tableHeaderView = UIView(frame: .zero)
        tableView.separatorColor = UIColor.darkGray
        
        
        time_label.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        homeslider.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        header.translatesAutoresizingMaskIntoConstraints = false
        
       
        //adding components
        view.addSubview(imageView)
        view.addSubview(homeslider)
        view.addSubview(offbutton)
        view.addSubview(time_label)
        view.addSubview(tableView)
        view.addSubview(header)
        //adding constraints
        NSLayoutConstraint.activate([
            time_label.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            time_label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 77),
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            
            homeslider.topAnchor.constraint(equalTo: view.topAnchor, constant: 520),
            homeslider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 168),
            homeslider.widthAnchor.constraint(equalToConstant: 40),
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 63),
            tableView.widthAnchor.constraint(equalToConstant: 253),
            tableView.heightAnchor.constraint(equalToConstant: 470),
            
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            
            
            ])
        
        self.view = view
        startTimer()
        onTimer(timer:)
        
    }
    
    //called when offbutton tapped
    @objc func Off(){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: lockSound!)
            audioPlayer.play()
        } catch {
            print("couldn't load sound file")
        }
        state = false
        if state == true{master = WakeScr()}
        else{master = OffScr()}
        PlaygroundPage.current.liveView = master
        
    }
    //called when slider moved
    @objc func toHome(sender: UISlider) {
        homeslider.setValue(Float(Int(homeslider.value)), animated: true)
        x = Int(sender.value)
        print(x)
        if x >= 30{
            master = HomeScr()
            PlaygroundPage.current.liveView = master}
        else{homeslider.setValue(0, animated: true)}}
    //starts timer
    func startTimer() {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(onTimer(timer:)), userInfo: nil, repeats: true)
        
    
    }
    //updates all times each second
    @objc func onTimer(timer:Timer!) {
        var newDay = ""
        var tz = ""
        var new_day = 0.0
        let localDay = day.string(from: Date(timeIntervalSinceNow: 1))
        let local = Double(localDay)!
        let convertedTime = timeFormatter1.string(from: Date(timeIntervalSinceNow: 1))
        time_label.text = "\(convertedTime)"
        
        
        
        timeFormatter.timeZone = TimeZone(abbreviation: "CAT")
        day.timeZone = TimeZone(abbreviation: "CAT")
        gmt.timeZone = TimeZone(abbreviation: "CAT")
        tz = gmt.string(from: Date(timeIntervalSinceNow: 1))
        newDay = day.string(from: Date(timeIntervalSinceNow: 1))
        new_day = Double(newDay)!
        if new_day - local == 1 {tableView.cellForRow(at: IndexPath(row: 0, section: 0))?.textLabel?.text = "Tomorrow, \(tz)"}
        else{tableView.cellForRow(at: IndexPath(row: 0, section: 0))?.textLabel?.text = "Today, \(tz)"}
        let  WindhoekTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        tableView.cellForRow(at: IndexPath(row: 0, section: 0))?.detailTextLabel?.text = "Windhoek     \(WindhoekTime)"
        
        timeFormatter.timeZone = TimeZone(abbreviation: "NZDT")
        day.timeZone = TimeZone(abbreviation: "NZDT")
        gmt.timeZone = TimeZone(abbreviation: "NZDT")
        newDay = day.string(from: Date(timeIntervalSinceNow: 1))
        tz = gmt.string(from: Date(timeIntervalSinceNow: 1))
        new_day = Double(newDay)!
        if new_day - local == 1 {tableView.cellForRow(at: IndexPath(row: 1, section: 0))?.textLabel?.text = "Tomorrow, \(tz)"}
        else{tableView.cellForRow(at: IndexPath(row: 1, section: 0))?.textLabel?.text = "Today, \(tz)"}
        let  WellingtonTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        tableView.cellForRow(at: IndexPath(row: 1, section: 0))?.detailTextLabel?.text = "Wellington   \(WellingtonTime)"
        
        timeFormatter.timeZone = TimeZone(abbreviation: "EDT")
        day.timeZone = TimeZone(abbreviation: "EDT")
        gmt.timeZone = TimeZone(abbreviation: "EDT")
        newDay = day.string(from: Date(timeIntervalSinceNow: 1))
        tz = gmt.string(from: Date(timeIntervalSinceNow: 1))
        new_day = Double(newDay)!
        if new_day - local == 1 {tableView.cellForRow(at: IndexPath(row: 2, section: 0))?.textLabel?.text = "Tomorrow, GMT-4"}
        else{tableView.cellForRow(at: IndexPath(row: 2, section: 0))?.textLabel?.text = "Today, GMT-4"}
        let DetroitTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        tableView.cellForRow(at: IndexPath(row: 2, section: 0))?.detailTextLabel?.text = "Detroit           \(DetroitTime)"
        
        timeFormatter.timeZone = TimeZone(abbreviation: "IST")
        day.timeZone = TimeZone(abbreviation: "IST")
        gmt.timeZone = TimeZone(abbreviation: "IST")
        newDay = day.string(from: Date(timeIntervalSinceNow: 1))
        tz = gmt.string(from: Date(timeIntervalSinceNow: 1))
        new_day = Double(newDay)!
        if new_day - local == 1 {tableView.cellForRow(at: IndexPath(row: 3, section: 0))?.textLabel?.text = "Tomorrow, \(tz)"}
        else{tableView.cellForRow(at: IndexPath(row: 3, section: 0))?.textLabel?.text = "Today, \(tz)"}
        let ChennaiTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        tableView.cellForRow(at: IndexPath(row: 3, section: 0))?.detailTextLabel?.text = "Chennai        \(ChennaiTime)"
    }
    
}
class WallScr : UIViewController{
    var bg1 : UIButton!
    var bg2 : UIButton!
    var bg3 : UIButton!
    var bg4 : UIButton!
    var bg5 : UIButton!
    var bg6 : UIButton!
    var bg7 : UIButton!
    
    //wallpaper thumnail images
    let bg1prev = UIImage(named: "bg1p.png")
    let bg2prev = UIImage(named: "bg2p.png")
    let bg3prev = UIImage(named: "bg3p.png")
    let bg4prev = UIImage(named: "bg4p.png")
    let bg5prev = UIImage(named: "bg5p.png")
    let bg6prev = UIImage(named: "bg6p.png")
    let bg7prev = UIImage(named: "bg7p.png")
    
    var offbutton : UIButton!
    var time_label : UILabel!
    let homeslider = UISlider()
    var label : UILabel!
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        //homeslider setup
        let homeslider = UISlider()
        homeslider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        let home = UIImage(named: "HomeBtn2.png")
        homeslider.minimumTrackTintColor = UIColor.white.withAlphaComponent(1)
        homeslider.maximumTrackTintColor = UIColor.white.withAlphaComponent(1)
        homeslider.setThumbImage(home, for: .normal)
        homeslider.minimumValue = 0
        homeslider.maximumValue = 100
        homeslider.addTarget(self, action: #selector(toHome(sender:)), for: .primaryActionTriggered)
        //background image setup
        let image = UIImage(named: "bg.png")
        let imageView = UIImageView(image: image)
        
        timeFormatter.dateFormat  = "HH:mm"
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        //time display label setup
        time_label = UILabel()
        time_label.textColor = .black
        time_label.text = "\(convertedTime)"
        let font = UIFont.systemFont(ofSize: 13.0, weight: UIFont.Weight.medium)
        time_label.font = font
        
        //caption setup
        label = UILabel()
        label.textColor = .black
        label.text = "Choose your Wallpaper"
        let font1 = UIFont.systemFont(ofSize: 20.0, weight: UIFont.Weight.medium)
        label.font = font1
        
        //offbutton setup
        offbutton = UIButton(frame: CGRect(x: 330, y: 180, width: 8, height: 60))
        offbutton.backgroundColor = .gray
        offbutton.addTarget(self, action: #selector(Off), for: .touchUpInside)
        
        //layout setup
        bg1 = UIButton()
        bg1.setImage(bg1prev, for: .normal)
        bg1.addTarget(self, action: #selector(BG1), for: .touchUpInside)
        bg2 = UIButton()
        bg2.setImage(bg2prev, for: .normal)
        bg2.addTarget(self, action: #selector(BG2), for: .touchUpInside)
        bg3 = UIButton()
        bg3.setImage(bg3prev, for: .normal)
        bg3.addTarget(self, action: #selector(BG3), for: .touchUpInside)
        bg4 = UIButton()
        bg4.setImage(bg4prev, for: .normal)
        bg4.addTarget(self, action: #selector(BG4), for: .touchUpInside)
        bg5 = UIButton()
        bg5.setImage(bg5prev, for: .normal)
        bg5.addTarget(self, action: #selector(BG5), for: .touchUpInside)
        bg6 = UIButton()
        bg6.setImage(bg6prev, for: .normal)
        bg6.addTarget(self, action: #selector(BG6), for: .touchUpInside)
        bg7 = UIButton()
        bg7.setImage(bg7prev, for: .normal)
        bg7.addTarget(self, action: #selector(BG7), for: .touchUpInside)
        
        //adding components
        view.addSubview(imageView)
        view.addSubview(time_label)
        view.addSubview(homeslider)
        view.addSubview(offbutton)
        view.addSubview(bg1)
        view.addSubview(bg2)
        view.addSubview(bg3)
        view.addSubview(bg4)
        view.addSubview(bg5)
        view.addSubview(bg6)
        view.addSubview(bg7)
        view.addSubview(label)
        
        bg1.translatesAutoresizingMaskIntoConstraints = false
        bg2.translatesAutoresizingMaskIntoConstraints = false
        bg3.translatesAutoresizingMaskIntoConstraints = false
        bg4.translatesAutoresizingMaskIntoConstraints = false
        bg5.translatesAutoresizingMaskIntoConstraints = false
        bg6.translatesAutoresizingMaskIntoConstraints = false
        bg7.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        homeslider.translatesAutoresizingMaskIntoConstraints = false
        time_label.translatesAutoresizingMaskIntoConstraints = false
        
        //adding constraints
        NSLayoutConstraint.activate([
            time_label.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            time_label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 77),
            
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90),
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            
            homeslider.topAnchor.constraint(equalTo: view.topAnchor, constant: 520),
            homeslider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 168),
            homeslider.widthAnchor.constraint(equalToConstant: 40),
            
            bg1.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            bg1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 67),
            bg1.widthAnchor.constraint(equalToConstant: 75),
            bg1.heightAnchor.constraint(equalToConstant: 130),
            
            bg2.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            bg2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 152),
            bg2.widthAnchor.constraint(equalToConstant: 75),
            bg2.heightAnchor.constraint(equalToConstant: 130),
            
            bg3.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            bg3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 235),
            bg3.widthAnchor.constraint(equalToConstant: 75),
            bg3.heightAnchor.constraint(equalToConstant: 130),
            
            bg4.topAnchor.constraint(equalTo: view.topAnchor, constant: 260),
            bg4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 67),
            bg4.widthAnchor.constraint(equalToConstant: 75),
            bg4.heightAnchor.constraint(equalToConstant: 130),
            
            bg5.topAnchor.constraint(equalTo: view.topAnchor, constant: 260),
            bg5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 152),
            bg5.widthAnchor.constraint(equalToConstant: 75),
            bg5.heightAnchor.constraint(equalToConstant: 130),
            
            bg6.topAnchor.constraint(equalTo: view.topAnchor, constant: 260),
            bg6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 235),
            bg6.widthAnchor.constraint(equalToConstant: 75),
            bg6.heightAnchor.constraint(equalToConstant: 130),
            
            bg7.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            bg7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 67),
            bg7.widthAnchor.constraint(equalToConstant: 75),
            bg7.heightAnchor.constraint(equalToConstant: 130),
            
            
            ])
        
        self.view = view
        startTimer()
        onTimer(timer:)
        currentbg()
    }
    //called when offbutton pressed
    @objc func Off(){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: lockSound!)
            audioPlayer.play()} catch {
                print("couldn't load sound file")}
        state = false
        if state == true{master = WakeScr()}
        else{master = OffScr()}
        PlaygroundPage.current.liveView = master}
    //called when homeslider moved
    @objc func toHome(sender: UISlider) {
        homeslider.setValue(Float(Int(homeslider.value)), animated: true)
        x = Int(sender.value)
        print(x)
        if x >= 30{
            master = HomeScr()
            PlaygroundPage.current.liveView = master}
        else{homeslider.setValue(0, animated: true)}}
    //starts timer
    func startTimer() {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WakeScr.onTimer(timer:)), userInfo: nil, repeats: true)}
    //called every second to update time
    @objc func onTimer(timer:Timer!) {
        let convertedTime = timeFormatter.string(from: Date(timeIntervalSinceNow: 1))
        time_label.text = "\(convertedTime)"}
    //indicates the current background
    func currentbg(){
        if bgmod == 1{bg1.isEnabled = false}
        if bgmod == 2{bg2.isEnabled = false}
        if bgmod == 3{bg3.isEnabled = false}
        if bgmod == 4{bg4.isEnabled = false}
        if bgmod == 5{bg5.isEnabled = false}
        if bgmod == 6{bg6.isEnabled = false}
    }
    
    //called for corresponding button
    @objc func BG1() {
      bg1.isEnabled = false
      bg2.isEnabled = true
      bg3.isEnabled = true
      bg4.isEnabled = true
      bg5.isEnabled = true
      bg6.isEnabled = true
        
      bgmod = 1
    }
    @objc func BG2() {
        bg1.isEnabled = true
        bg2.isEnabled = false
        bg3.isEnabled = true
        bg4.isEnabled = true
        bg5.isEnabled = true
        bg6.isEnabled = true
        bg7.isEnabled = true
      bgmod = 2
    }
    @objc func BG3() {
        bg1.isEnabled = true
        bg2.isEnabled = true
        bg3.isEnabled = false
        bg4.isEnabled = true
        bg5.isEnabled = true
        bg6.isEnabled = true
        bg7.isEnabled = true
      bgmod = 3
    }
    @objc func BG4() {
        bg1.isEnabled = true
        bg2.isEnabled = true
        bg3.isEnabled = true
        bg4.isEnabled = false
        bg5.isEnabled = true
        bg6.isEnabled = true
        bg7.isEnabled = true
      bgmod = 4
    }
    @objc func BG5() {
        bg1.isEnabled = true
        bg2.isEnabled = true
        bg3.isEnabled = true
        bg4.isEnabled = true
        bg5.isEnabled = false
        bg6.isEnabled = true
        bg7.isEnabled = true
      bgmod = 5
    }
    @objc func BG6() {
        bg1.isEnabled = true
        bg2.isEnabled = true
        bg3.isEnabled = true
        bg4.isEnabled = true
        bg5.isEnabled = true
        bg6.isEnabled = false
        bg7.isEnabled = true
      bgmod = 6
    }
    @objc func BG7() {
        bg1.isEnabled = true
        bg2.isEnabled = true
        bg3.isEnabled = true
        bg4.isEnabled = true
        bg5.isEnabled = true
        bg6.isEnabled = true
        bg7.isEnabled = false
        
        bgmod = 7
    }
}






master = OffScr()
PlaygroundPage.current.liveView = master



