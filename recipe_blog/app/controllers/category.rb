RecipeBlog::App.controllers :category do
  
  get :index do
    @categories = Category.all
    render '/category/categories'
  end

  get :index, :with => :category_id do
    @recipes = Recipe.includes(:categories).where(categories: { id: params[:category_id] })
    render '/recipe/recipes'  
  end

end

# get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

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