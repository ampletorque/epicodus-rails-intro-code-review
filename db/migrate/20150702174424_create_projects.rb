class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :name, :string
      t.column :short_description, :string
      t.column :long_description, :string
      t.column :category, :string
      t.column :coworkers, :string
      t.column :code_url, :string
      t.column :hosted_url, :string
      t.column :project_date, :date
      t.column :skill_id, :integer
      t.column :user_id, :integer
    end
  end
end
