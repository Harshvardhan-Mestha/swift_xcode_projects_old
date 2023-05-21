import UIKit
import PlaygroundSupport

class SliderViewController : UIViewController {
 var x  = 0
    let slider = UISlider()
    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .black

        let slider = UISlider()
        
        slider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))
        
        slider.minimumValue = 0
        slider.maximumValue = 100
         let img = UIImage(named: "HomeBtn.png")
        view.addSubview(slider)
        slider.setThumbImage(img, for: UIControl.State.normal)
        // Layout
        
       slider.setValue(0, animated: true)
       
        
        slider.addTarget(self, action: #selector(numberValueChanged(sender:)), for: UIControl.Event.primaryActionTriggered)
        
        slider.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            slider.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            slider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            slider.widthAnchor.constraint(equalToConstant: 100)
            ])
    
       
        self.view = view
        
    }
    @objc func val(sender: UISlider){
       
        
       
    }
    @objc func numberValueChanged(sender: UISlider) {
        slider.setValue(Float(Int(slider.value)), animated: true)
        x = Int(sender.value)
        if x == 1{
         //view.backgroundColor = .white
          x = 0
           slider.setValue(0, animated:false)
            loadView()
            //view.backgroundColor = .white
        }
        
        else{
            slider.value = 0
           //slider.setValue(0, animated:false)
            //loadView()
            
        }
        
       
       // x+=1
        print(x)
        
       /* x = Int(sender.value)
        var roundedValue = roundf(sender.value)
        slider.setValue(roundedValue, animated: true)
        print(roundedValue)
        print(x)
        if ((sender.value - roundedValue) > 0.5){
            
            slider.setValue(roundedValue + 1.0, animated: true)
            
        }
        else{slider.setValue(roundedValue, animated: true)}*/
    }
    
   
        
    }
    


PlaygroundPage.current.liveView = SliderViewController()
