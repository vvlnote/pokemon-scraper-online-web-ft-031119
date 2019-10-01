class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db

  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (id, name, type) VALUES (?,?,?)", @id, name, type)
  end
  
  def self.find(id, db)
    #@@all.find {|x| x.id == id}
    x = db.execute("SELECT * FROM pokemon WHERE pokemon.id = #{id}")
    
  end
  
  def alter_hp(new_hp, db)
    str = "UPDATE pokemon SET hp = #{new_hp} WHERE name = #{@name}"
    db.execute("UPDATE pokemon SET hp = #{new_hp} WHERE name = #{@name}")
  end
end
