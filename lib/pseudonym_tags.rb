module PseudonymTags
  include Radiant::Taggable
  
  desc "Gives the pseudonym of the Page"
  tag "pseudonym" do |tag|
    page = tag.locals.page
    unless page.pseudonym.blank?
      page.pseudonym
    else
      page.created_by.name
    end
  end
  
end