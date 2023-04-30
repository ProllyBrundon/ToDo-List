//
//  ToDoDetailTableViewController.swift
//  ToDo List
//
//  Created by Brandon Hobbs on 4/30/23.
//

import UIKit

class ToDoDetailTableViewController: UITableViewController {
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var noteView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}
