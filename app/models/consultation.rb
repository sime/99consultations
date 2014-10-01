class Consultation < ActiveRecord::Base
  mount_uploader :floor_plan, FloorPlanUploader
  validates_presence_of :customer
end
