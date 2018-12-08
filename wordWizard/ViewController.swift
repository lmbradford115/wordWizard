//
//  ViewController.swift
//  wordWizard
//
//  Created by Luke Bradford on 6/30/18.
//  Copyright © 2018 Luke Bradford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    
    var buttons: [UIButton] = [UIButton]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // What is a nib?
        
        self.buttons = [self.button1, self.button2, self.button3, self.button4, self.button5, self.button6, self.button7, self.button8, self.button9, self.button10, self.button11, self.button12, self.button13, self.button14, self.button15, self.button16];
        
        for button in self.buttons {
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 45);
            let finalTile = updateTile();
            button.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTile() -> (finalLetter: String, finalNewStr: String) {
        var finalLetter = "";
        var finalNewStr = "";
        let tile = assignLetter();
        let myPoints = Array(String(tile.points));
        var newStr = "";
        
        //TEST
        let subs = [
            "0": "\u{2080}",
            "1": "\u{2081}",
            "2": "\u{2082}",
            "3": "\u{2083}",
            "4": "\u{2084}",
            "5": "\u{2085}",
            "6": "\u{2086}",
            "7": "\u{2087}",
            "8": "\u{2088}",
            "9": "\u{2089}"];
        for char in myPoints {
            let key = String(char);
            if subs.keys.contains(key){
                newStr.append(Character(subs[key]!));
            }
        }
        
        finalLetter = tile.letter;
        finalNewStr = newStr;
        return (finalLetter, finalNewStr);
    }
    
    func assignLetter() -> (letter: String, points: Int)  {
        var letter = "";
        var points = 0;
        let random = arc4random_uniform(100) + 1;
        switch random {
        case 1..<3:
            letter = "?";
            points = 0;
        case 3..<15:
            letter = "E";
            points = 1;
        case 15..<24:
            letter = "A";
            points = 1;
        case 24..<33:
            letter = "I";
            points = 1;
        case 33..<41:
            letter = "O";
            points = 1;
        case 41..<47:
            letter = "N";
            points = 1;
        case 47..<53:
            letter = "R";
            points = 1;
        case 53..<59:
            letter = "T";
            points = 1;
        case 59..<63:
            letter = "L";
            points = 1;
        case 63..<67:
            letter = "S";
            points = 1;
        case 67..<71:
            letter = "U";
            points  = 1;
        case 71..<75:
            letter = "D";
            points = 2;
        case 75..<78:
            letter = "G";
            points = 2;
        case 78..<80:
            letter = "B";
            points = 3;
        case 80..<82:
            letter = "C";
            points = 3;
        case 82..<84:
            letter = "M";
            points = 3;
        case 84..<86:
            letter = "P";
            points = 3;
        case 86..<88:
            letter = "F";
            points = 4;
        case 88..<90:
            letter = "H";
            points = 4;
        case 90..<92:
            letter = "V";
            points = 4;
        case 92..<94:
            letter = "W";
            points = 4;
        case 94..<96:
            letter = "Y";
            points = 4;
        case 96:
            letter = "K";
            points = 5;
        case 97:
            letter = "J";
            points = 8;
        case 98:
            letter = "X";
            points = 8;
        case 99:
            letter = "Q";
            points = 10;
        case 100:
            letter = "Z";
            points = 10;
        default:
            letter = "*";
            points = 0;
        }
        return (letter, points);
    }

    //MARK: Actions
    @IBAction func button1(_ sender: UIButton) {
        let finalTile = updateTile();
        button1.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);

        //TEST
        //button1.setTitle(tile.letter + " " + String(tile.points), for: .normal)
    }
    
    @IBAction func button2(_ sender: UIButton) {
        let finalTile = updateTile();
        button2.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button3(_ sender: UIButton) {
        let finalTile = updateTile();
        button3.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button4(_ sender: UIButton) {
        let finalTile = updateTile();
        button4.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button5(_ sender: UIButton) {
        let finalTile = updateTile();
        button5.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button6(_ sender: UIButton) {
        let finalTile = updateTile();
        button6.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button7(_ sender: UIButton) {
        let finalTile = updateTile();
        button7.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button8(_ sender: UIButton) {
        let finalTile = updateTile();
        button8.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button9(_ sender: UIButton) {
        let finalTile = updateTile();
        button9.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button10(_ sender: UIButton) {
        let finalTile = updateTile();
        button10.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button11(_ sender: UIButton) {
        let finalTile = updateTile();
        button11.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button12(_ sender: UIButton) {
        let finalTile = updateTile();
        button12.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button13(_ sender: UIButton) {
        let finalTile = updateTile();
        button13.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button14(_ sender: UIButton) {
        let finalTile = updateTile();
        button14.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button15(_ sender: UIButton) {
        let finalTile = updateTile();
        button15.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    @IBAction func button16(_ sender: UIButton) {
        let finalTile = updateTile();
        button16.setTitle(finalTile.finalLetter + finalTile.finalNewStr, for: .normal);
    }
    
    
}

