json.array!(@consultations) do |consultation|
  json.extract! consultation, :id, :customer, :pictures, :style, :colors_materials_fabric, :furnish, :occupants, :must_have, :budget, :when, :other
  json.url consultation_url(consultation, format: :json)
end
