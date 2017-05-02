//
//  TypeVC.swift
//  myft
//
//  Created by Administrator on 2/4/17.
//  Copyright © 2017 Chain Reaction Games. All rights reserved.
//

import UIKit
import GoogleMobileAds


@available(iOS 10.0, *)
class TypeVC: UIViewController {

 var feedbackGenerator: UINotificationFeedbackGenerator?
    var backGenerator: UIImpactFeedbackGenerator?
    @IBOutlet weak var textField: UITextView!
    

    var begun = false
    let score = UserDefaults.standard.integer(forKey: "score")
    @IBOutlet weak var bannerView: DFPBannerView!
    override func viewDidLoad() {



        bannerView.adUnitID = "ca-app-pub-4659792934027521/1148939696"
        bannerView.rootViewController = self
        bannerView.load(DFPRequest())

        super.viewDidLoad()
        print(memory.yall)
        if memory.yall {
            print(memory.yall)
            memory.yall = false
            dismiss(animated: true, completion: nil)
        }
        feedbackGenerator = UINotificationFeedbackGenerator()  // Instantiate the generator.
        

        
        backGenerator = UIImpactFeedbackGenerator()  // Instantiate the generator.


        textField.clearsOnInsertion = true

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TypeVC.halp))
        
        textField.addGestureRecognizer(tap)


        // Do any additional setup after loading the view.
        
    }
    
    func halp() {
        if !begun {
        textField.backgroundColor = UIColor.white
        begun = true
            
        }
        
    }

    @IBAction func back(_ sender: AnyObject){
        dismiss(animated: true, completion: nil)
                backGenerator?.impactOccurred()
    }


    @IBAction func myftIt(_ sender: Any) {
        var yo = score
        
        yo += 1
        print(yo)
        UserDefaults.standard.set(yo, forKey: "score")
            feedbackGenerator?.notificationOccurred(.success)

        
    }

    
    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destinationViewController.
         Pass the selected object to the new view controller.
    }
    */

}
