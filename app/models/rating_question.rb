# frozen_string_literal: true

class RatingQuestion
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
end
