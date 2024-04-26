//
//  ViewController.swift
//  AppAnotomy
//
//  Created by user2 on 29/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DidFinishLaunch: UILabel!
    
    @IBOutlet weak var Configcount: UILabel!
    
    @IBOutlet weak var ScenceDidEnterBg: UILabel!
    
    @IBOutlet weak var willConnectToLabel: UILabel!
    
    @IBOutlet weak var ScenceDidbecomeactive: UILabel!
    
    @IBOutlet weak var sceneWillresignactive: UILabel!
    
    @IBOutlet weak var Scenewillenterfg: UILabel!
    
    var sceneDidEnterBg = 0
    var Scenewillresignactive = 0
    var scenedidbecomeactive = 0
    var willConnectTocount = 0
    var sceneDidEnterFg = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateview()
    }
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)

    func updateview(){
        
        DidFinishLaunch.text = "the app has launched \(appDelegate.launchcount) times"
        Configcount.text = "the app has cofig \(appDelegate.configcount) times"
        
        ScenceDidEnterBg.text = "the app has Scence did enter bg \(sceneDidEnterBg) times"
        willConnectToLabel.text = "the app has will connect to lable \(willConnectTocount)  times"
        ScenceDidbecomeactive.text = "the app has scene did become active \(scenedidbecomeactive) times"
        sceneWillresignactive.text = "the app has scene will resign active \(Scenewillresignactive) times"
        Scenewillenterfg.text = "the app has scene will enter fg \(sceneDidEnterFg) times"
    }
}

