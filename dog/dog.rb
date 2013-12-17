require 'mysql2'

class Dog

  attr_accessor :color, :name, :id
  
  @@db = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")

  def initialize(color, name)
    @color = color
    @name = name
  end

  def self.db
    @@db
  end

  def db
    @@db
  end

  def insert
    self.db.query ("
      insert into dogs(color, name)
      values ('#{color}', '#{name}')
        ")
  end

  def update
    self.db.query ("
      update dogs
      set color = 'Blue'
      where name = 'Rupert'
      ")
  end

  def delete
    self.db.query ("
      delete from dogs
      where name = 'Rupert'
      ")
  end

  # def find
  #   self.db.query ("
  #     select * 
  #     from dogs
  #     where name = #{"name"}
  #     ")
  # end

  # def find_by_attribute(color)
  #   db.query("
  #     select * 
  #     from dogs
  #     where color = '#{color}'
  #     ")
  # end

end

dog = Dog.new("Blue and Rust", "Rupert")
# p dog
dog.insert
dog.update
dog.delete 
# p dog.find
# dog.find_by_attribute


  #
  # find_by_att
  # find



  # refactorings?
  # new_from_db?
  # saved?
  # save! (a smart method that knows the right thing to do)
  # unsaved?
  # mark_saved!
  # ==
  # inspect
  # reload
  # attributes

