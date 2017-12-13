class Seed

  def self.begin
    seed = Seed.new
    seed.generate_users
    seed.generate_boards
    seed.generate_mezzages
  end

  def generate_users
    User.destroy_all
    10.times do |i|
      user = User.create!(
        name: Faker::Internet.user_name
      )
      puts "USER GENORATRON #{user.name}"
    end
  end

  def generate_boards
    Board.destroy_all
    30.times do |i|
      board = Board.create!(
        title: Faker::Book.title,
        description: Faker::Hipster.sentence
      )
      puts "BOARDOTRONIC 3000 #{board.title}"
    end
  end

  def generate_mezzages
    Mezzage.destroy_all
    100.times do |i|
      board = Board.find(rand(Board.first.id..Board.last.id))
      user = User.find(rand(User.first.id..User.last.id))
      mezzage = Mezzage.create!(
        user_id: user.id,
        board_id: board.id,
        title: Faker::Simpsons.location,
        body: Faker::RickAndMorty.quote
      )
      puts "ROVOTRON 4200 #{mezzage.title}"
    end
  end
end

Seed.begin
