//
//  SecondVC.swift
//  tryMySegue
//
//  Created by sabarish sridhar on 09/02/17.
//  Copyright © 2017 sabarish. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Quit Playing Games with my heart"
        performSegue(withIdentifier:"mySegue", sender: songTitle)
    }
    @IBAction func backBtn(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?ThirdVC
    {
            if let song = sender as? String{
                destination.selectedSong = song
            }
        }
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
