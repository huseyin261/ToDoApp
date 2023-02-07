

import UIKit

class Detailpage: UIViewController {

    @IBOutlet weak var textFieldRegister: UITextField!
    
    var todo:Todos?
    
    var todoDetailPresenterObject:ViewToPresenterTodoDetailProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let t = todo {
            textFieldRegister.text = t.add_todo
        }

        TodoDetailRouter.createModule(ref: self)
    }
    
    @IBAction func buttonUpdate(_ sender: Any) {
        if let at = textFieldRegister.text, let t = todo {
            todoDetailPresenterObject?.update(todo_id: t.todo_id!, add_todo: at)
        }
    }
    

}
