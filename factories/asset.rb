Factory.define :asset do |asset|
  asset.tags { Faker::Lorem.words(4) }
  asset.title { "Image asset" }
  asset.description { "The asset description" }
  asset.file { Fakerama::Asset::Photo.landscape }
end

Factory.define :txt_asset, :parent => :asset do |asset|
  asset.title { "A text file asset" }
  asset.description { "The text file asset description" }
  asset.file { Fakerama::Asset::Document.txt }
end

Factory.define :zip_asset, :parent => :asset do |asset|
  asset.title { "A zip file asset" }
  asset.description { "The zip file asset description" }
  asset.file { File.new(File.expand_path("factories/files/test.zip")) }
end

Factory.define :document_asset, :parent => :asset do |asset|
  asset.title { "Document asset" }
  asset.file { File.new(File.expand_path("factories/files/test.pdf")) }
end
