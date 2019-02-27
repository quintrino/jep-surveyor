# frozen_string_literal: true

class RatingQuestion
  include Mongoid::Document

  field :title, type: String
end
