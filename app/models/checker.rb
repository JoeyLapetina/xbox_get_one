class Checker < ActiveRecord::Base
	
  attr_accessible :item, :name, :site, :url, :positive_selector, :positive_response,
  								:negative_response, :negative_selector, :item_status
end
