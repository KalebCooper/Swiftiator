public struct Swiftiator {
    public private(set) var text = "Hello, World!"

    public init() {

    }
}

public class ViewScreen {
    func test() {
        let mediator = ItemMediator.shared
        let mapper = ItemListMapper()

        mediator.get(.allItems(userid: "kaleb"), using: mapper) { (items: [Item]?) in

        }

    }
}
