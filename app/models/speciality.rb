class Speciality < ApplicationRecord
	has_many :specialities, through: :join_tables
	has_many :doctors, through: :join_tables
end
