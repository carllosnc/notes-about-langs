# Module as namespace
module Base

  class Person
    @@info = "Person class"

    def initialize(name, lastname, lang)
      @name = name
      @lastname = lastname
      @lang = lang
    end

    attr_accessor :name, :lastname, :lang

    def sayMyName()
      "my name is #{@name}"
    end

    def self.hello
      "Hello world!"
    end
  end

end