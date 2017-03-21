class ShowerThoughtsController < ApplicationController
  def index
    render "index.html.erb"
  end
  def new
    redirect_to "index.html.erb"
  end
  def create
    render "create.html.erb"
  end
  def edit
    render "edit.html.erb"
  end
  def update
    redirect_to "index.html.erb"
  end
  def destroy
    redirect_to "index.html.erb"
  end

end
