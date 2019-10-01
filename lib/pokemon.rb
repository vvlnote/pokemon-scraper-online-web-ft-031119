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
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    new_pokemon = self.new(pokemon)
    new_pokemon.id = pokemon[0][0]
    new_pokemon.name = pokemon[0][1]
    new_pokemon.type = pokemon[0][2]
    new_pokemon.hp = pokemon[0][3]
    return new_pokemon

  end

  def alter_hp(new_hp, db)
    # str = "UPDATE pokemon SET hp = #{new_hp} WHERE name = #{@name}"
    # db.execute("UPDATE pokemon SET hp = #{new_hp} WHERE name = #{@name}")
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", [num], [self.id])
    self.hp = num
  end
end
