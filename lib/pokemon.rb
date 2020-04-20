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
    sql = 'SELECT * FROM pokemon WHERE id = ?'
    pokemon = db.execute(sql, id)[0]
    self.save(pokemon[0],)
    #binding.pry
  end

end
