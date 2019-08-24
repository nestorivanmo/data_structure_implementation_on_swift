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
    var top: Node<T>?

    func push(_ value: T){
        let newNode = Node<T>(value);
        if let top = self.top{//has more that one node
            newNode.previous = top
        }
        self.top = newNode
    }

    func pop() -> Node<T>?{//don't return value, i need fix this bug
        if let temp = self.top{
            self.top = temp.previous
            return temp
        }else{
            print("UnderFlow error")
            return nil
        }
    }

    func printStack(){
        if var aux = self.top{
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
    stack.push("Néstor")
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
