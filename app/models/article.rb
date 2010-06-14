class Article < ActiveRecord::Base
  
  #Validation
  validates_presence_of :title, :category_id, :user_id
  
  #Relationships
  has_many :textblocks, :order => "position DESC"
  belongs_to :category
  belongs_to :user
  
  #Indexing
  acts_as_ferret :fields => { :title  => {:store => :yes}, :description => {:store => :yes}}  
  
  #The group that is responsible for this document.  Inherited from the category the document belongs to.
  def group
    if !self.category.nil?
      self.category.group
    else
      nil
    end
  end
  
end
