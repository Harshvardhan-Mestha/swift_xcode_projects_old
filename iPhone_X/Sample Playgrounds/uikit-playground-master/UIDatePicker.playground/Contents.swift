import UIKit
import PlaygroundSupport
let dateFormatter = DateFormatter()
dateFormatter.dateFormat  = ""
var runCount = 0
var timer: Timer?
var x = 0
var datePicker = UIDatePicker()
class DatePickerViewController : UIViewController {

    override func loadView() {

        // UI
        view = UIView()
        view.backgroundColor = .white

        datePicker = UIDatePicker()
        datePicker.datePickerMode = .countDownTimer
        //var x =
        x = Int(datePicker.countDownDuration)
        
        print()
        
        
        view.addSubview(datePicker)

        // Layout

        datePicker.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            datePicker.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            datePicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            datePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        self.view = view
        startTimer()
    }
   
    func startTimer() {Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(fireTimer(timer:)), userInfo: nil, repeats: true)}
    
    @objc func fireTimer(timer: Timer) {
        print("Timer fired!\(runCount)")
        runCount += 1
        
        if runCount == Int(datePicker.countDownDuration) {
            timer.invalidate()
        }
    }
}

PlaygroundPage.current.liveView = DatePickerViewController()
