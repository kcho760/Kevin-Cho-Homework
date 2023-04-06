class Person < ApplicationRecord
    belongs_to(
      :house,
      class_name: 'house',
      foreign_key: :house_id,
      primary_key: :id
    )
end