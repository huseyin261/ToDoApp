

import Foundation

class AddTodoPresenter : ViewToPresenterAddTodoProtocol {
    var addTodoInteractor: PresenterToInteractorAddTodoProtocol?
    
    func add(add_todo: String) {
        addTodoInteractor?.addTodo(add_todo: add_todo)
    }
}
