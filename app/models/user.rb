class User < ApplicationRecord
	validates_presence_of  :name
	validates :name, format: { with: /\A[0-9a-zA-Z_. \-]+\Z/, message: "Only alphanumeric characters, and -_."}
end
