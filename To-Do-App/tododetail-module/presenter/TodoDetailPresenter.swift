

import Foundation

class TodoDetailPresenter : ViewToPresenterTodoDetailProtocol {
    var todoDetailInteractor: PresenterToInteractorTodoDetailProtocol?
    
    func update(todo_id: Int, add_todo: String) {
        todoDetailInteractor?.updateTodo(todo_id: todo_id, add_todo: add_todo)
    }
    
    
}
