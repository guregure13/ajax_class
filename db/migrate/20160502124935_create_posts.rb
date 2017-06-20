class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.timestamps null: false
      # 이렇게 처음껄 수정할 경우에는
      # 디비 롤백이 안된다.
      # rake db:drop을 해야하며 이래서 시드가 필요하다.
    end
  end
end
