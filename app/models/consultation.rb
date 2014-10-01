class Consultation < ActiveRecord::Base
  mount_uploader :floor_plan, FloorPlanUploader
end
