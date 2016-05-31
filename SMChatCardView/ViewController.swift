//
//  ViewController.swift
//  SMChatCardView
//
//  Created by Sanjay Maharjan on 5/31/16.
//  Copyright © 2016 Sanjay Maharjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var groupChatCardView: SMGroupChatCardView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let groupChat1 = getGroupChat(withTitle: "Captain DouchePool", lastOnline: "ages", numberOfPeople: 5)
        
        groupChatCardView = SMGroupChatCardView(groupChatRoom: groupChat1)
        self.view.addSubview(groupChatCardView!)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getGroupChat(withTitle title: String, lastOnline: String, numberOfPeople: Int) -> GroupChatRoom {
        let people = generatePeople(numberOfPeople)
        return GroupChatRoom(title: title, lastOnline: lastOnline, personArray: people)
    }
    
    func generatePeople(number: Int) -> [Person] {
        var people: [Person] = []
        
        let person1 = Person(name: "The Hope Once", image: UIImage(named: "a")!)
        let person2 = Person(name: "Neutral Machine", image: UIImage(named: "b")!)
        let person3 = Person(name: "Bored to death", image: UIImage(named: "a")!)//treated as this is the current user
        let person4 = Person(name: "The Dumb One", image: UIImage(named: "d")!)
        let person5 = Person(name: "The Glad Most", image: UIImage(named: "c")!)
        let person6 = Person(name: "Make Last", image: UIImage(named: "c")!)
        
        people.append(person1)
        people.append(person2)
        people.append(person3)
        people.append(person4)
        people.append(person5)
        people.append(person6)
        
        
        var resultPeople: [Person] = []
        for index in 0..<number {
            resultPeople.append(people[index])
        }
        return resultPeople
    }
    
}

