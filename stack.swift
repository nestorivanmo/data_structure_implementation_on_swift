//Carlos Daniel Hernandez Chauteco 2019
//Note: Run on linux(Ubuntu) swift 5.0.1

//this stack suport generics
class Node<T>{
    var value: T 
    var previous: Node?
    
    init(_ value: T){
        self.value = value;
    }
}

class Stack<T>{
    var head: Node<T>?

    func push(_ value: T){
        let newNode = Node<T>(value);
        if let head = self.head{//has more that one node
            newNode.previous = head
        }
        self.head = newNode
    }

    func pop() -> Node<T>?{//don't return value, i need fix this bug
        if let temp = self.head{
            self.head = temp.previous
            return temp
        }else{
            print("UnderFlow error")
            return nil
        }
    }

    func printStack(){
        if var aux = self.head{
            while true {
                print(aux.value)
                guard let previous = aux.previous else { return }//this break the code
                aux = previous
            }
        }
    }
}

func main(){
    let stack = Stack<String>();
    stack.push("Carlos")
    stack.push("Oscar")
    stack.push("Gerardo")
    stack.printStack()
    print("*******************************")
    stack.pop()
    stack.printStack()
    print("*******************************")
    stack.pop()
    stack.printStack()
    print("*******************************")
    stack.pop()
    stack.printStack()

    stack.pop()
    stack.printStack()

    stack.pop()
    stack.printStack()
}

main()
