

import Foundation

protocol ViewToPresenterHomepageProtocol {
    var homepageInteractor:PresenterToInteractorHomepageProtocol? {get set}
    var homepageView:PresenterToViewHomepageProtocol? {get set}

    func uploadTodos()
    func search(searchWord:String)
    func delete(todo_id:Int)
}

protocol PresenterToInteractorHomepageProtocol {
    var homepagePresenter:InteractorToPresenterHomepageProtocol? {get set}
    
    func getAllTodos()
    func searchTodo(searchWord:String)
    func deleteTodo(todo_id:Int)
}

protocol InteractorToPresenterHomepageProtocol {
    func sendDataPresenter(todosList:Array<Todos>)
}

protocol PresenterToViewHomepageProtocol {
    func sendDataView(todosList:Array<Todos>)
}

protocol PresenterToRouterHomepageProtocol {
    static func createModule(ref:Homepage)
}
