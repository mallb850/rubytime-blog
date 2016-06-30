ActiveAdmin.register Post do
  
       permit_params :title, :body, :story, :image
       
       
  index do
    selectable_column
    id_column
    column :title
    column :body
    column :story
    column :image
    column :created_at
    actions
  end

  filter :title
  filter :body
  filter :story
  filter :created_at     
       
  form do |f|
    f.inputs "posts" do
      f.input :title
      f.input :body
      f.input :story
      f.input :image, as: :file
    end
    f.actions
  end 
  

end
