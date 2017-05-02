//
//  ViewController.swift
//  myft
//
//  Created by Administrator on 2/2/17.
//  Copyright © 2017 Chain Reaction Games. All rights reserved.
//

import UIKit
import GoogleMobileAds
//setting up keyboard stuff
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
struct defaultsKeys {
    static let keyOne = "firstStringKey"
    static let keyTwo = "secondStringKey"
}
//done setting up

//randomButNot setting up

struct random {
    static var butNot: UInt32 = 999
}
struct memory {
    static var saving = false
    static var yall = false
}
struct howMany {
    static var myfts = 0
}
//done setting up
        let quote = arc4random_uniform(8)
@available(iOS 10.0, *)
class MainVC: UIViewController {
var feedbackGenerator: UIImpactFeedbackGenerator?
    @IBOutlet weak var quoteLbl: UILabel!
    @IBOutlet weak var mainAd: DFPBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setting
        
        let defaults = UserDefaults.standard
        defaults.setValue("Some String Value", forKey: defaultsKeys.keyOne)
        defaults.setValue("Another String Value", forKey: defaultsKeys.keyTwo)
        defaults.synchronize()
        
        // Getting
        

        
         feedbackGenerator = UIImpactFeedbackGenerator()
        
        mainAd.adUnitID = "ca-app-pub-4659792934027521/1148939696"
        mainAd.rootViewController = self
        mainAd.load(DFPRequest())
        
        
        //Random Quote Time
        
        if quote == 0 {
            quoteLbl.text = "Sticks and stones may break my bones but myfts can never hurt me.                                                                         -Anonymous"
        }else if quote == 1 {
            quoteLbl.text = "If you can’t say anything nice, myft it.                                                                                          -Mom "
        }else if quote == 2 {
            quoteLbl.text = "Whatever is begun in anger ends in myft.                                                                                                                                            -Benjamin Franklin"
        }else if quote == 3 {
            quoteLbl.text = "A myft turns away wrath, but a harsh word stirs up anger.                                                                                                                                                                                                                  -Solomon"
        }else if quote == 4 {
            quoteLbl.text = "It's better to myft than to be angry, because anger hurts others, while myfts flow silently through the soul and cleanse the heart.                                                                                                                                                                                                                                                                                                                                                                                                                                                         -Pope John Paul II"
        }else if quote == 5 {
            quoteLbl.text = "When anger rises, think of myft.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 -Confucius"
        }else if quote == 6{
            quoteLbl.text = "🎶Here's a quarter, myft someone who cares🎶                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     -Travis Tritt"
        
        } else {
            quoteLbl.text = "I've got a lot of problems with you people...and now I'm going to myft about it.                                                                                                                                                                                                                                              -Frank Costanza"
        }
        
        
        
    }

    @IBAction func tellMe(_ sender: Any) {

            feedbackGenerator?.impactOccurred()      // Trigger the haptic feedback.
        
    }




}

