class AddingColumnsToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column  :reviews, :testimonial, :string
    add_reference :reviews, :user, foreign_key: true, index: true
    add_reference :reviews, :appartment, foreign_key: true, index: true
  end
end
