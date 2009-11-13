class AddPseudonymToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :pseudonym, :string
    
    Page.all.each do |page|
      page.update_attributes({:pseudonym => ""})
    end
  end

  def self.down
    remove_column :pages, :pseudonym
  end
end
