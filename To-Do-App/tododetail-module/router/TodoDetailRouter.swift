
import Foundation

class TodoDetailRouter : PresenterToRouterTodoDetailProtocol {
    static func createModule(ref: Detailpage) {
        ref.todoDetailPresenterObject = TodoDetailPresenter()
        ref.todoDetailPresenterObject?.todoDetailInteractor = TodoDetailInteractor()
    }
    
    
}
