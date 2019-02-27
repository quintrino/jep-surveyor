# frozen_string_literal: true

json.extract! rating_question, :title
json.id rating_question.id.to_s
json.url rating_question_url(rating_question, format: :json)
