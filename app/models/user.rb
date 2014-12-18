class User < ActiveRecord::Base
  has_many :user_decks
  has_many :decks, through: :rounds
  has_many :cards, through: :decks

# Write a setter method that takes a plaintext PW, and hashes it:

  def password=(password)
    self.hashed_password = BCrypt::Password.create(password)
  end

# Write our getter that takes hashed_password and returns password:
  
  def password
      BCrypt::Password.new(self.hashed_password)
  end

# Now we want an Authentication method: Dog.authenticate(name, password)

  def self.authenticate(name, password)
    @user = User.find_by(name: params[:name])
    # return nil unless user exists in database
    return nil unless @user
    #if password matches, instantiate @user, else return nil
    @user = password == password ? @user : nil
  end
  
  def create
    if params[:password] == params[:password1]
      @user = User.new(params[:user])
      @user.password = params[:password]
      @user.save!
    end
  end
  
end
