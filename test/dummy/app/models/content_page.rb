class ContentPage < Noodall::Node
  # Define which Node Templates can be used as children of Nodes using this template
  sub_templates ContentPage

  # Define the number of each slot type this Node Template allows. Slots are defined in 'config/initializers/noodall.rb'
  # small_slots 4
  download_slots 1
end
