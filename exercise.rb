class Exercise
  def self.marklar(str)
    @checkArray = str.split(/ /)
    for i in 0..@checkArray.length - 1 
      checkWord = @checkArray[i].split(//)
      if checkWord.length > 4
        if checkWord[checkWord.length - 1] === "."
          if checkWord[0] === checkWord[0].capitalize
            @checkArray[i] = "Marklar."
          else 
            @checkArray[i] = "marklar."
          end
        
        elsif checkWord[checkWord.length - 1] === "!"
            if checkWord[0] === checkWord[0].capitalize
              @checkArray[i] = "Marklar!"
            else 
              @checkArray[i] = "marklar!"
            end
        
        elsif checkWord[checkWord.length - 1] === "?"
            if checkWord[0] === checkWord[0].capitalize
                @checkArray[i] = "Marklar?"
            else 
                @checkArray[i] = "marklar?"
            end
        else
            if checkWord[0] === checkWord[0].capitalize
              @checkArray[i] = "Marklar"
          else 
              @checkArray[i] = "marklar"
          end
          
        end
    end
  end
  @checkArray.join(" ")
      
end
  def self.even_fibonacci(nth)
    @array = []
    @sum = 0
    @first = 0
    @second = 1
    nth.times do
      @array.push(@second)
      @third = @first + @second
      @first = @second
      @second = @third
    end
    for i in 0..@array.length - 1
      if @array[i] % 2 == 0
        @sum += @array[i]
      end
    end
    return @sum
  end
end
  