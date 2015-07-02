class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :short_description, :string
      t.column :long_description, :string
      t.column :title, :string
      t.column :app_role, :string
      t.column :phone, :string
      t.column :email, :string
      t.column :code_url, :string
      t.column :hosted_url, :string
      t.column :skill_id, :integer
      t.column :project_id, :integer
    end
  end
end
