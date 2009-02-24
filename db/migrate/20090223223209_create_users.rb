class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users", :force => true do |t|
      t.column :login,                     :string, :limit => 40
      t.column :name,                      :string, :limit => 100
      t.column :email,                     :string, :limit => 100
      t.column :crypted_password,          :string, :limit => 40
      t.column :salt,                      :string, :limit => 40
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.column :remember_token,            :string, :limit => 40
      t.column :remember_token_expires_at, :datetime
      t.boolean :admin, :default => false
    end
    add_index :users, :login, :unique => true

    admin = User.new(:name => '', :login => 'admin', :email => "admin@sitio.com", :password => "admin123", :password_confirmation => 'admin123', :admin => true)
    admin.admin = true
    admin.save!
  end

  def self.down
    drop_table "users"
  end
end
