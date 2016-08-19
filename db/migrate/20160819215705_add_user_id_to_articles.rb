class AddUserIdToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :user_id, :integer #first attribute id the table, second iis the new column, third is the type or class of the user_id
  end
end


#dont forget that articles is supposed to be plural
#OMG .. dont forget to rake db:migrate when you create a migration file -_-