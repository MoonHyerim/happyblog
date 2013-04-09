#db already exist -> rails db 한 다음 drop table table_name -> rake db:migrate
class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
