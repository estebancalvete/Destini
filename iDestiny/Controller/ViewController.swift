//
//  ViewController.swift
//  iDestiny
//
//  Created by Esteban Calvete Iglesias on 9/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    var storyLogic = StoryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        optionOneButton.layer.cornerRadius = 20
        optionOneButton.clipsToBounds = true
        optionOneButton.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 30)
        optionTwoButton.layer.cornerRadius = 20
        optionTwoButton.clipsToBounds = true
        updateUI()
    }

    @IBAction func optionButtonDidTouchUpInside(_ sender: UIButton) {
        storyLogic.nextStory(userChoice: sender.tag)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyLogic.stories[storyLogic.storyNumber].title
        optionOneButton.setTitle(storyLogic.stories[storyLogic.storyNumber].choice1, for: .normal)
        optionTwoButton.setTitle(storyLogic.stories[storyLogic.storyNumber].choice2, for: .normal)
    }
}

