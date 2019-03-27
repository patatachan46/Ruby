module MyModule
  #共通して提供したいメソッドなど
end

class MyClass1
  include MyModule
  #MyClass1固有のメソッドなど
end

class MyClass2
  include MyModule
  #Myclass2固有のメソッドなど
end
