class AddPseudonymToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :pseudonym, :string
  end

  def self.down
    remove_column :pages, :pseudonym
  end
end
