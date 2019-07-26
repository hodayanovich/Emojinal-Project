//
//  ViewController.swift
//  CRAVEoji
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
  
    @IBOutlet weak var appTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let emoji = ["🥦": "Broccoli", "🍫": "Chocolate", "🥑": "Avacado", "🥜": "Peanuts", "🧀": "Cheese", "🍞": "Bread", "🥩": "Meat", "🍯": "Honey/Sugar"]
    
    let emojiDictionary = [
        "Broccoli": ["Try making some broccoli quiche!", "You'd love broccoli salad!", "If you are feeling feisty try some chocolate broccoli.", "Roasted broccoli is the best!"],
        "Chocolate": ["Brownies are my go-to!", "A basic chocolate chip cookie goes a long way, or a stick version.","Break out that classic Hershey's Bar!", "Try a pint of classic chocolate ice cream, maybe add a little fudge, or a lot!"],
        "Avacado": ["AvacadoToastAvacadoToastAvacadoToastAvacadoToastAvacadoToast!","Go a little out of your comfort zone and try some Avacado Ice Cream!", "Some classic guac and chips will satisfy your craving!","Try making an avacado chicken salad. Be super creative!"],
        "Peanuts": ["PB&J sandwich all day!!!", "Pair that peanut craving with some chocolate and try a reese's peanut butter cup.", "Try making three ingredient gluten free peanut butter cookies with peanut butter, oil, and sugar!", "Eat some trail mix!"],
        "Cheese": ["Make some nachos by melting cheese on chips and adding more of your own toppings!","Mac and cheese all day! Try spicing things up by making them in cupcake form!","Cheesecake is a move!","🍕🍕🍕🍕🍕"],
        "Bread": ["Garlic Bread. Yup. Garlic Bread.", "Grilled Cheese will forever be a favorite.", "Dunk some of that bread in in egg, milk, and cinnamon & sugar mixture for some phenomenal French Toast!", "A plain old toasted peice of bread with butter will truly satisfy your craving."],
        "Meat": ["Meatballs.", "Ribs.", "Steak.", "Spice up a boring salad by adding your favorite type of meat to it!"],
        "Honey/Sugar": ["Have some tea with honey!","Try a sugary snack like donuts!","M&M's all the way!","LOLLYPOP!!"],
    ]
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        //let randomEmojiDictionary = emojiDictionary.randomElement()
        let number = Int.random(in: 0 ... 3)
        let emojiMessage = emojiDictionary[emoji[selectedEmotion!]!]?[number]
        let alertController = UIAlertController(title: "CRAVE", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}



