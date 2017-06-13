//
//  ViewController.swift
//  Fizz Buzz
//
//  Created by Devanshi Chakrabarti on 6/7/17.
//  Copyright © 2017 Devanshi Chakrabarti. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myNumberLabel: UILabel!
    var number = 0

    override func viewDidLoad()
    {
    super.viewDidLoad()
    myNumberLabel.text = "\(number)"
    }

    @IBAction func screenTapped(_ sender: UITapGestureRecognizer)
    {
        print("Screen Tapped")
        number += 1
        if number % 15 == 0
        {
            print("Fizz Buzz")
            myNumberLabel.text = "Fizz Buzz"
            view.backgroundColor = UIColor.yellow
            myNumberLabel.font = myNumberLabel.font.withSize(75)
        }
        else if number % 3 == 0
        {
            myNumberLabel.text = "Fizz"
            view.backgroundColor = UIColor.blue
        }
        else if number % 5 == 0
        {
            myNumberLabel.text = "Buzz"
            view.backgroundColor = UIColor.red
        }
        else
        {
            myNumberLabel.text = "\(number)"
            view.backgroundColor = UIColor.black
            myNumberLabel.font.withSize(100)
        }
        
        
        
    }
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer)
    {
        number = 0
        myNumberLabel.text = "\(number)"
        view.backgroundColor = UIColor.black
        myNumberLabel.font = myNumberLabel.font.withSize(100)
        print("reset")
    }
    
    

}

