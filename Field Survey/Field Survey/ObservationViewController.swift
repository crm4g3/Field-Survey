//
//  ObservationViewController.swift
//  Field Survey
//
//  Created by Cody McIlviane on 4/5/18.
//  Copyright © 2018 Cody McIlviane. All rights reserved.
//

import UIKit

class ObservationViewController: UIViewController {

    var classificationAnimal: ClassificationAnimal?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var classificationNameView: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var classificationImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        classificationImageView.image = classificationAnimal?.classification.image
        classificationNameView.text = classificationAnimal?.title
        descriptionLabel.text = classificationAnimal?.description
        if let date = classificationAnimal?.date{
            dateLabel.text = dateFormatter.string(from: date)
        } else{
            dateLabel.text = ""
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
