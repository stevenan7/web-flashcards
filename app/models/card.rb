class Card < ActiveRecord::Base
  # def initialize(args={})
  #   @question = args['state']
  #   @answer = args['capital']
  # end

 belongs_to :deck

end
