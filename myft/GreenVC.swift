//
//  GreenVC.swift
//  myft
//
//  Created by Administrator on 2/10/17.
//  Copyright © 2017 Chain Reaction Games. All rights reserved.
//

import UIKit
import GoogleMobileAds
@available(iOS 10.0, *)
class GreenVC: UIViewController, GADInterstitialDelegate {
    var interstitialAd : GADInterstitial!

var feedbackGenerator: UIImpactFeedbackGenerator?
    @IBOutlet weak var bannerView: DFPBannerView!
    func delay(time:Double, closure:@escaping ()->()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + time) {
            closure()
        }
    }

    @IBOutlet weak var AnythingElse: UIButton!
    @IBOutlet weak var ppap: UIImageView!
    
    @IBOutlet weak var quoteLbl: UILabel!
    override func viewDidLoad() {
                super.viewDidLoad()
        memory.saving = true
        bannerView.adUnitID = "ca-app-pub-4659792934027521/1148939696"
        bannerView.rootViewController = self
        bannerView.load(DFPRequest())
        self.interstitialAd = GADInterstitial(adUnitID: "ca-app-pub-4659792934027521/7055872490")
        let request = GADRequest()
        request.testDevices = ["2077ef9a63d2b398840261c8221a0c9b"]
        self.interstitialAd.load(request)
        self.interstitialAd = reloadInterstitialAd()


         feedbackGenerator = UIImpactFeedbackGenerator()
        //Random Quote Time
        func quoteLife() {
            let quote = arc4random_uniform(8)
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
        quoteLife()
print("Interstitial Ready? \(self.interstitialAd.isReady)")
        let wait = 3.01
        delay(time: wait){
            print("AFTER: \(wait) - Interstitial Ready? \(self.interstitialAd.isReady)")
            if self.interstitialAd.isReady {
                self.interstitialAd.present(fromRootViewController: self)
            }
        }
        if howMany.myfts == 3 {
            AnythingElse.isHidden = true
            ppap.isHidden = true
        }

    }
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        self.interstitialAd = reloadInterstitialAd()
    }
    func reloadInterstitialAd() -> GADInterstitial {
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-4659792934027521/7055872490")
        interstitial.delegate = self
        interstitial.load(GADRequest())
        return interstitial
    }

    @IBAction func tellMe(_ sender: UIButton?) {

        feedbackGenerator?.impactOccurred()      // Trigger the haptic feedback.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
