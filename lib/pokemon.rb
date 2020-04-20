class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize( type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end
=begin
  def save(name, type, db)
    sql = 'INSERT INTO pokemon(name, type) VALUES(?, ?)'
    @db.execute(sql, name, type, db)
    #@id =
  end
=end

end
