
import Foundation

class AddTodoRouter : PresenterToRouterAddTodoProtocol {
    static func createModule(ref: Registrationpage) {
        ref.addTodoPresenterObject = AddTodoPresenter()
        ref.addTodoPresenterObject?.addTodoInteractor = AddTodoInteractor()
    }
}
