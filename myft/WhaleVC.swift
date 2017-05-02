//
//  WhaleVC.swift
//  myft
//
//  Created by Administrator on 2/7/17.
//  Copyright © 2017 Chain Reaction Games. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import GoogleMobileAds
import GameKit

@available(iOS 10.0, *)
class WhaleVC: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var bannerView: DFPBannerView!
    


var number = arc4random_uniform(5)
    override func viewDidLoad(){
        howMany.myfts += 1
        bannerView.adUnitID = "ca-app-pub-4659792934027521/1148939696"
        bannerView.rootViewController = self
        bannerView.load(DFPRequest())
        
        super.viewDidLoad()

        
        var imgListArray :[UIImage] = []
        func releaseTheKraken(kraken: String) {
        for countValue in 1...120
        {
            
            print("Random number: \(number)")
            print("Last number: \(random.butNot)")
            let strImageName : String = "\(kraken)\(countValue - 1).png"
            let image  = UIImage(named:strImageName)
            imgListArray .append(image!)
            print(strImageName)
        
            random.butNot = number
            print("Random number: \(number)")
            print("Last number: \(random.butNot)")

        }
        }
        
        // Image Array o' Fun
        print("Random number: \(number)")
        print("Last number: \(random.butNot)")
        while number == random.butNot {
            number = arc4random_uniform(5)
            print("Random number: \(number)")
            print("Last number: \(random.butNot)")
        }
                //water
        if number == 0 {
            releaseTheKraken(kraken: "whale")
        }else if number == 1 {
            releaseTheKraken(kraken: "kraken")
                //city
        }else if number == 2 {
            releaseTheKraken(kraken: "kong")
        }else if number == 3 {
            releaseTheKraken(kraken: "zilla")
        }else if number == 4 {
            releaseTheKraken(kraken: "piano")
        }

        self.imageView.animationImages = imgListArray
        self.imageView.animationDuration = 16.5
        self.imageView.startAnimating()
        func whaleBye(){

            performSegue(withIdentifier: "ohWhale", sender: nil)


                
            
        }
        func delay(time:Double, closure:@escaping ()->()) {
            DispatchQueue.main.asyncAfter(deadline: .now() + time) {
                closure()
            }
        }
        
            delay(time: 13.5) {
                
                imgListArray = []
                print(imgListArray)
                whaleBye()

}
}
}
