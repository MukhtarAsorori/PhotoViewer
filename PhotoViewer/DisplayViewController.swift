//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by Admin on 02/03/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var currentPhoto : Photo?
    @IBOutlet weak var currentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: (currentPhoto!.fileName))
        currentImage.image = image

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let thirdScene = segue.destination as! InfoViewController
        thirdScene.currentPhoto = currentPhoto
    }
    

}









