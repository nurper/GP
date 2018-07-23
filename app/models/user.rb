class User < ApplicationRecord
	has_one_attached :avatar
	validates_presence_of  :name, :stuff_id
	validates :name, format: { with: /\A[0-9a-zA-Z_. \-]+\Z/, message: "Only alphanumeric characters, and -_."}
	validates :stuff_id, format: { with: /\A[0-9\-]+\Z/, message: "Only numbers"}
	validates_uniqueness_of :stuff_id
end
