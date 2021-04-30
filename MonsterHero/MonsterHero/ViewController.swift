//
//  ViewController.swift
//  MonsterHero
//
//  Created by zein rezky chandra on 17/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var monsterName: UILabel!
    @IBOutlet weak var monsterDesc: UILabel!
    @IBOutlet weak var monsterEnergy: UIProgressView!
    
    var monstersArray: [Monster] = []
    var currentIndexMonster = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateMonster()
        setMonster(index: 0)
    }
    
    func generateMonster() {
        monstersArray.append(Monster(monster_type: .green, monster_name: "Greenyx", monster_desc: "Greenyx is one of the savior monster, he will became your savior and loyal with his master", monster_energy: 0.5))
        monstersArray.append(Monster(monster_type: .purple, monster_name: "Purplexis", monster_desc: "Purplexis is lovely monster, his ability to turn mad into love", monster_energy: 0.3))
        monstersArray.append(Monster(monster_type: .red, monster_name: "RedEyex", monster_desc: "RedEyex is a madness, he will consume a love energy", monster_energy: 0.8))
        monstersArray.append(Monster(monster_type: .yellow, monster_name: "Yellowyx", monster_desc: "Yellowyx is neutral monster, he will turn noise to peace", monster_energy: 0.6))
    }
    
    func setMonster(index: Int) {
        
        switch monstersArray[index].type {
        case .green:
            monsterImage.image = #imageLiteral(resourceName: "green")
        case .purple:
            monsterImage.image = #imageLiteral(resourceName: "purple")
        case .yellow:
            monsterImage.image = #imageLiteral(resourceName: "yellow")
        case .red:
            monsterImage.image = #imageLiteral(resourceName: "red")
        default:
            monsterImage.image = #imageLiteral(resourceName: "red")
        }
        monsterName.text = monstersArray[index].name
        monsterDesc.text = monstersArray[index].description
        DispatchQueue.main.async {
            print(Float(self.monstersArray[index].energy!))
            self.monsterEnergy.setProgress(self.monstersArray[index].energy!, animated: true)
        }
        
    }

    @IBAction func energyButton(_ sender: UIButton) {
            
    }
    
    @IBAction func nextMonster(_ sender: UIButton) {

        if currentIndexMonster < monstersArray.count-1    {
            currentIndexMonster += 1
        }
        setMonster(index: currentIndexMonster)

    }
    
    @IBAction func prevMonster(_ sender: UIButton) {

        if currentIndexMonster > 0 {
            currentIndexMonster -= 1
        }
        setMonster(index: currentIndexMonster)

    }
    
    
}

