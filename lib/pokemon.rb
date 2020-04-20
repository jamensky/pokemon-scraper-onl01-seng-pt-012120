class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:nil, name:nil, type:nil, db:nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
     sql = 'INSERT INTO pokemon(name, type) VALUES(?, ?)'
     db.execute(sql, name, type)
  end

  def self.find(id, db)
    binding.pry
    sql = 'SELECT * FROM pokemon WHERE id = ?'
    db.execute(sql, id)
  end

end
