ActiveAdmin.register Ad do
  form do |f|
    f.inputs "Details" do
      f.input :category
      f.input :subcategory
      f.input :name
      f.input :price
      # f.input :description
    end
    f.inputs "Content" do
      f.input :description
    end
    f.inputs "Media" do
      f.input :promotion_url
      f.input :image
    end
    f.buttons
  end
end
