class Textblock < ActiveRecord::Base

  #Validation
  validates_presence_of :title, :article_id
  
  #Relationships
  belongs_to :article

end
