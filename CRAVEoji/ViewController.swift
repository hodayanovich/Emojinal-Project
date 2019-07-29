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
        "Broccoli": ["Try making some broccoli quiche!", "You'd love broccoli salad!", "If you are feeling feisty try making some chocolate broccoli.", "Roasted broccoli is the best!"],
        "Chocolate": ["Brownies are a great go-to!", "A basic chocolate chip cookie goes a long way, or try it out in stick version.","Break out that classic Hershey's Bar!", "Try a pint of classic chocolate ice cream, maybe add a little fudge, or a lot!"],
        "Avocado": ["AvocadoToastAvocadoToastAvocadoToastAvocadoToastAvocadoToast!","Go a little out of your comfort zone and try some Avocado Ice Cream!", "Some classic guac and chips will satisfy your craving!","Try making an avocado chicken salad. Add some avocado, chicken, and other ingredients to your favorite salad. Be super creative!"],
        "Peanuts": ["PB&J sandwich all day!!!", "Fix that peanut craving with some chocolate and try a reese's peanut butter cup.", "Try making three ingredient gluten free peanut butter cookies!", "Make some trail mix by combining your favorite nuts and candies (like mini reese's peanut butter cups) in a bag. Its a great to-go snack!", "Try making  chinese cold peanut noodles"],
        "Cheese": ["Make some nachos by melting cheese on chips and adding more of your own toppings!","Mac and cheese all day! Try spicing things up by making them in cupcake form!","Cheesecake is a move!","🍕🍕🍕🍕🍕"],
        "Bread": ["Garlic Bread. Yup. Garlic Bread.", "The classic grilled cheese will forever be a favorite.", "Dunk some of that bread in in egg, milk, and cinnamon & sugar mixture for some phenomenal French Toast!", "A plain old toasted peice of bread with butter will truly satisfy your craving."],
        "Meat": ["Meatballs.", "Ribs.", "Steak.", "Spice up a boring salad by adding your favorite type of meat to it!"],
        "Honey/Sugar": ["Have some tea with honey!","Try a sugary snack like donuts!","M&M's all the way!","LOLLYPOP!!"],
    ]
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        //let randomEmojiDictionary = emojiDictionary.randomElement()
        let number = Int.random(in: 0 ... 3)
        let emojiMessage = emojiDictionary[emoji[selectedEmotion!]!]?[number]
        let alertController = UIAlertController(title: "CRAVE", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Find me a recipe!", style: UIAlertAction.Style.default, handler: {(action) -> Void in self.performSegue(withIdentifier: "vc2", sender: self)}))
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}



