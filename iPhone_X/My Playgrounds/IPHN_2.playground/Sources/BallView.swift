import Foundation
import UIKit
import PlaygroundSupport
import XCPlayground
let background1 = UIImage(named: "iphn")

public class x: UIView {
    
    override public init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
        self.backgroundColor = .white
      
        
        let Ball : UIView = {
            let Ball = UIView()
            Ball.backgroundColor = .blue
            Ball.frame = CGRect(x: 4, y: 4, width: 100, height: 100) 
            Ball.layer.cornerRadius = Ball.frame.size.width / 2
            Ball.clipsToBounds = true
            return Ball
            
            
            
        }()
        
        let imageView : UIImageView = {
            
            let background = UIImage(named: "iphn")
            
            var imageView = UIImageView()
            imageView = UIImageView(frame: CGRect(x: 12, y: 12, width: 300, height: 300))
            imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = self.center
            return imageView
            
        }()
        let btn : UIButton = {
            
            let background = UIImage(named: "background")
            //let background1 = UIImage(named: "iphn")
            var btn = UIButton()
            btn = UIButton(frame: CGRect(x: 50, y: 120, width: 150, height: 130))
            btn.contentMode =  UIView.ContentMode.scaleAspectFill
            btn.clipsToBounds = true
            //btn.image = background
            //btn.setImage(image: background,for: UIC)
            btn.setImage(background, for: UIControl.State.normal)
            //btn.center = self.center
            
            btn.addTarget(self, action: #selector(bttttt), for: .touchUpInside)
            return btn
            
        }()
        self.addSubview(btn)
        self.addSubview(imageView)
        self.addSubview(Ball)
    }
    
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func bttttt(sender: UIButton!){
        print("Mission control we are go forlaunch")
        sender.setImage(background, for: UIControl.State.normal)
    }
    
    
}

