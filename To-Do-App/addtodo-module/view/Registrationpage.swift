

import UIKit

class Registrationpage: UIViewController {

    @IBOutlet weak var textFieldRegister: UITextField!
    
    var addTodoPresenterObject:ViewToPresenterAddTodoProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        AddTodoRouter.createModule(ref: self)
        
    }
    

    @IBAction func buttonSave(_ sender: Any) {
        if let at = textFieldRegister.text {
            addTodoPresenterObject?.add(add_todo: at)
        }
    }
    
   
}
