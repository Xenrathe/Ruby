#inputArray must be ALL numbers or ALL strings - a mix will result in error
def bubbleSort(inputArray)
  isString = false
  if inputArray.count > 0 and inputArray[0].is_a? String
    isString = true
  end

  currentEndIndex = inputArray.count - 1
  while currentEndIndex > 0 do
    for index in 0..currentEndIndex-1
      if !isString && inputArray[index] > inputArray[index+1] || isString && inputArray[index].downcase > inputArray[index+1].downcase 
        temp = inputArray[index]
        inputArray[index] = inputArray[index + 1]
        inputArray[index + 1] = temp
      end
    end
    currentEndIndex -= 1
  end
  inputArray

end

#puts bubbleSort([4,3,78,2,0,2,7,9,25])
#puts bubbleSort(['x', 'b', 'f', 'G', 'M', 'banana'])
