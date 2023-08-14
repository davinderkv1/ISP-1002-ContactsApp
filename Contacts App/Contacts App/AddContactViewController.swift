import UIKit
import CoreData

class AddContactViewController: UIViewController {
    var titleText = "Add Contact"
    var contact: NSManagedObject? = nil
    var indexPathForContact: IndexPath? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titleText
        if let contact = self.contact {
            nameTextField.text = contact.value(forKey: "name") as? String
            phoneNumberTextField.text = contact.value(forKey: "phoneNumber") as? String
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!

    // MARK: - Navigation

    @IBAction func saveAndClose(_ sender: Any) {
        performSegue(withIdentifier: "unwindToContactList", sender: self)
    }
    @IBAction func close(_ sender: Any) {
        nameTextField.text = nil
        phoneNumberTextField.text = nil
        performSegue(withIdentifier: "unwindToContactList", sender: self)
    }
    
    
}
