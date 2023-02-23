class Exercise

  def self.marklar(str)
    strIndex = 0
    startingCharIndex = 0
    replacement = ""
    endingCharIndex = 0
  
    while strIndex < str.length do
      startingCharIndex = 0
      endingCharIndex = 0
      if(/[A-Z]/.match(str[strIndex])) # checking if word starts with capital
        replacement = "Marklar"
        startingCharIndex = strIndex
        while /[[:alpha:]]/.match(str[strIndex]) do #finding end of word
          if(!/[[:alpha:]]/.match(str[strIndex]) || strIndex != str[-1])
            endingCharIndex = strIndex
          end
          strIndex += 1
        end
        if(endingCharIndex - startingCharIndex > 3)
          str.slice!(startingCharIndex, endingCharIndex+1 - startingCharIndex)
          str.insert(startingCharIndex, replacement)
          strIndex = endingCharIndex
        end
      elsif(/[a-z]/.match(str[strIndex])) # checking if word starts with lowercase
        replacement = "marklar"
        startingCharIndex = strIndex
        while /[[:alpha:]]/.match(str[strIndex] ) do #finding end of word
          if(!/[[:alpha:]]/.match(str[strIndex]) || strIndex != str[-1] ) # if its the end of the word mark the index
            endingCharIndex = strIndex
          end
          strIndex += 1
        end
        if(endingCharIndex - startingCharIndex > 3) # if the word is longer than 3 because of the index positon then replace
          str.slice!(startingCharIndex, endingCharIndex+1 - startingCharIndex)
          str.insert(startingCharIndex, replacement)
          strIndex = endingCharIndex
        end
      end
      strIndex += 1 #iterate skipping anything that isn't alphabetical
    end
    return str
  end

  
  def self.even_fibonacci(nth)
    indexEnd = 0
    sum = 0

    # setting up fibonacci array
    listOfFiboNum = Array.new(nth)
    listOfFiboNum[0] = 1
    listOfFiboNum[1] = 1
    startingIndex = 1

    while startingIndex < nth do
      startingIndex += 1
      listOfFiboNum[startingIndex] = listOfFiboNum[startingIndex-1] + listOfFiboNum[startingIndex-2] #fibonacci algorithm to fill array
    end
     
    index = 0
    
    # iterate through the array find all values that are even (using the % 2 logic) and add them together
    while index < listOfFiboNum.length-1 do
      if(listOfFiboNum[index] % 2 == 0)
        sum += listOfFiboNum[index]
      end
      index += 1
    end
    return sum
  end

end
