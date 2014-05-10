json.array!(@myimages) do |myimage|
  json.extract! myimage, :image_name, :image_link
  json.url myimage_url(myimage, format: :json)
end
