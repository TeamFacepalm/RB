class AddAuthTokenAndPassWordDigestColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :auth_token, :string
    add_column :users, :password_digest, :string
  end
end
