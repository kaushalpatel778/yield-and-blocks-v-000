def hello_t (arr)
  if block_given?
    i=0
    while i < arr.length
      yield arr[i]
      i+=1
    end
    arr
  else
    puts "Hey No Block was given!"
end

# call your method here!
hello_t(['Tim','Tom','Jim','Kom']) { |name|
    if name.start_with?("T")
    puts "Hi, #{name}"
    end
}
