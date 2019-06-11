func BinarySearch(_ list: Array<Int>, _ key: Int, _ begin: Int, _ end: Int) -> Int{
	if begin >= 0 {
		let middle = begin + (end - 1)/2 //get the middle of the list

		if list[middle] > key {
			return BinarySearch(list, key, begin, middle - 1)
		}else if list[middle] < key {
			return BinarySearch(list, key, middle + 1, end)
		}else if list[middle] == key {
			return middle
		}

	}

	return -1 //in the search algoritms return "-1" when no exist the value
}

func main(){
	let list = [1,5,8,10,15,26,48,78,89]

	let index = BinarySearch(list,10,0,list.count)

	print("the index of the key is \(index) for the list \(list)")
}

main()