require 'mysql2'

class Dog

  attr_accessor :color, :name, :id
  
  @@db = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")

  def initialize(color, name, id)
    @color = color
    @name = name
    @id = id
  end

  def self.db
    @@db
  end

  def db
    @@db
  end

   def update_table
    self.db.query ("
     alter table dogs
     add column 
     id integer;
      ")
  end

  def insert
    self.db.query ("
      insert into dogs(name, color, id)
      values ('#{name}', '#{color}', #{id})
        ")
  end

#obviously, this doesn't work.
  # def new_from_db
  #   self.db.query("
  #    insert into dogs(name, color, id)
  #     values ('#{name}', '#{color}', '#{id}')
  #       ")
  # end

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

#this isn't exactly right, but it should work TECHNICALLY, right?

  def find
    self.db.query("
      select * 
      from dogs
      ")
  end



  def find_by_color
    self.db.query("
      select * 
      from dogs
      group by color
      ")
  end

  def find_by_name
    self.db.query("
      select * 
      from dogs
      group by name
      ")
  end

   def find_by_id
    self.db.query("
      select * 
      from dogs
      group by id
      ")
  end


 


end

dog = Dog.new("grayish green", "Zoul", 3000)
dog = Dog.new("boo", "black", 10)
# p dog
dog.insert
dog.new_from_db
dog.update
dog.delete 
dog.find
dog.find_by_color
dog.find_by_name

# dog.update_table



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

