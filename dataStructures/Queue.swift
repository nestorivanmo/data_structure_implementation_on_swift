//Carlos Daniel Hernandez Chauteco 2019
//Note: Run on linux(Ubuntu) swift 5.0.1
class Node<T> {
    var value: T
    var previous: Node?

    init(_ value: T){
        self.value = value
    }
}

class Queue<T> {
    var head: Node<T>?
    var tail: Node<T>?

    func enqueue(_ value: T){
        
    }
}