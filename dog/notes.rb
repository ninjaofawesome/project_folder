#obviously, this doesn't work.
  # def new_from_db
  #   self.db.query("
  #    insert into dogs(name, color, id)
  #     values ('#{name}', '#{color}', '#{id}')
  #       ")
  # end

  # def self.new_from_db(row)
  #   dog = Dog.new('row["name"]', 'row["color"]', 'row["id"]')
  #   dog
  # end