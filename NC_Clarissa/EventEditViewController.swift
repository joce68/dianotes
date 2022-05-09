//
//  EventEditViewController.swift
//  NC_Clarissa
//
//  Created by Clarissa Jocelyn on 28/04/22.
//

import UIKit

class EventEditViewController: UIViewController{
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
        var selectedDate: Date!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        datePicker.date = selectedDate
    }
    
    @IBAction func saveAction(_ sender: Any) {
        let newEvent = Event()
        newEvent.id = eventsList.count
        newEvent.name = nameTF.text
        newEvent.date = datePicker.date
        eventsList.append(newEvent)
        self.dismiss(animated: true, completion: nil)
//        navigationController?.popViewController(animated: true)
    }
    
    
    
}
