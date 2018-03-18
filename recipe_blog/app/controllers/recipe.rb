RecipeBlog::App.controllers :recipe do
  
  get :index do
    @recipes = Recipe.all
    render '/recipe/recipes'
  end

  get :index, :with => '/add' do
    @new_recipe = Recipe.new
    @categories = Category.all
    render '/recipe/new_recipe'
  end

  post :index, :with => '/add' do
    @new_recipe = Recipe.new(params['recipe'])
    if @new_recipe.save
      redirect "/recipe/#{@new_recipe.id}"
    else
      @message = "Please fill in all the fields."
      render '/recipe/new_recipe'
    end
  end

  get :index, :with => :recipe_id do
    @recipe = Recipe.find_by(id: params['recipe_id'])
    render '/recipe/recipe_details'
  end

end

# get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end
