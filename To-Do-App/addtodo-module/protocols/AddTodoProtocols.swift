
import Foundation

protocol ViewToPresenterAddTodoProtocol {
    var addTodoInteractor:PresenterToInteractorAddTodoProtocol? {get set}
    
    func add(add_todo:String)
}

protocol PresenterToInteractorAddTodoProtocol {
    func addTodo(add_todo:String)
}

protocol PresenterToRouterAddTodoProtocol {
    static func createModule(ref:Registrationpage)
}
