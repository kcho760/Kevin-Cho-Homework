require 'sqlite3'
require 'singleton'

class PlayDBConnection < SQLite3::Database
  include Singleton

  def initialize
    super('plays.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end

class Play
  attr_accessor :id, :title, :year, :playwright_id

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM plays")
    data.map { |datum| Play.new(datum) }
  end

  def initialize(options)
    @id = options['id']
    @title = options['title']
    @year = options['year']
    @playwright_id = options['playwright_id']
  end

  def create
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id)
      INSERT INTO
        plays (title, year, playwright_id)
      VALUES
        (?, ?, ?)
    SQL
    self.id = PlayDBConnection.instance.last_insert_row_id
  end

  def self.find_by_title(title)
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id)
    SELECT
      title
    FROM
      plays
    WHERE
      title = @title;
    SQL
  end

  def self.find_by_playwright(name)
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id)
    SELECT
      title
    FROM
      plays
    INNER JOIN playwrights ON
      plays.id = playwrights.id
    SQL
  end

  def update
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id, self.id)
      UPDATE
        plays
      SET
        title = ?, year = ?, playwright_id = ?
      WHERE
        id = ?
    SQL
  end

  class Playwrights

    def self.all
      data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
      data.map { |datum| Play.new(datum) }
    end

    def self.find_by_name(name)
      raise "#{self} not in database" unless self.id
      PlayDBConnection.instance.execute(<<-SQL, self.id, self.name, self.birth_year)
      SELECT
        name
      FROM
        playwrights
      WHERE
        name = name;
      SQL
    end

    def initialize(options)
      @id = options['id']
      @name = options['name']
      @birth_year = options['birth_year']
    end

    def create
      raise "#{self} already in database" if self.id
      PlayDBConnection.instance.execute(<<-SQL, self.id, self.name, self.birth_year)
        INSERT INTO
          playwrights (id, name, birth_year)
        VALUES
          (?, ?, ?)
      SQL
      self.id = PlayDBConnection.instance.last_insert_row_id
    end

    def update
      raise "#{self} not in database" unless self.id
      PlayDBConnection.instance.execute(<<-SQL, self.id, self.name, self.birth_year)
        UPDATE
          playwrights
        SET
          id = ?, name = ?, birth_year = ?
        WHERE
          id = ?
        SQL
      end
    end

    def get_plays
      raise "#{self} not in database" unless self.id
      PlayDBConnection.instance.execute(<<-SQL, self.id, self.name, self.birth_year)
      SELECT
        plays
      FROM
        playwrights
      INNER JOIN playwrights ON
        plays.id = playwrights.id
    SQL
    end

end
