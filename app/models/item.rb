class Item < ApplicationRecord
  # belongs_to :seller, class_name: "User"
  # belongs_to :buyer, class_name: "User"
  # # belongs_to :brand
  # belongs_to :category
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :parent
  belongs_to_active_hash :condition
  belongs_to_active_hash :hutan
  belongs_to_active_hash :days
end
