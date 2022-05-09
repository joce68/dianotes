//
//  EventsEditViewController.swift
//  NC_Clarissa
//
//  Created by Clarissa Jocelyn on 28/04/22.
//

import UIKit

class EventsEditViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
//    var selectedDate: Date!
    override func viewDidLoad() {
        super.viewDidLoad()

//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveAction()))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveAction))

        // Do any additional setup after loading the view.
    }
        
//    @IBAction func saveAction(_ sender: Any) {
//        let newEvent = Event()
//                newEvent.id = eventsList.count
//                newEvent.name = nameTF.text
//                newEvent.date = datePicker.date
//                eventsList.append(newEvent)
//                navigationController?.popViewController(animated: true)
//    }
    
    
    @objc func saveAction() {
        print("yes")
        let newEvent = Event()
        newEvent.id = eventsList.count
        newEvent.name = nameTF.text
        newEvent.date = datePicker.date
        eventsList.append(newEvent)
        navigationController?.popViewController(animated: true)
    }
    

}
