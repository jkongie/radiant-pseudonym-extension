# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class PseudonymExtension < Radiant::Extension
  version "1.0"
  description "Allows you to have pseudonyms for the author name"
  url "http://github.com/jkongie/radiant-pseudonym-extension/"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :pseudonym
  #   end
  # end
  
  def activate
    # admin.tabs.add "Pseudonym", "/admin/pseudonym", :after => "Layouts", :visibility => [:all]
    admin.page.edit.add :extended_metadata, 'admin/pages/pseudonym_form'
    Page.send :include, PseudonymTags
  end
  
  def deactivate
    # admin.tabs.remove "Pseudonym"
  end
  
end
