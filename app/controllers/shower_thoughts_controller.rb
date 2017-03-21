class ShowerThoughtsController < ApplicationController
  def index
    @showerthoughts = ShowerThought.all
    render "index.html.erb"
  end
  def new
    render "new.html.erb"
  end
  def create
    @showerthought = ShowerThought.create(
      thought: params[:thought]
      )
    redirect_to "index.html.erb"
  end
  def edit
    @showerthought = ShowerThought.find_by(:id params[:id])
    render "edit.html.erb"
  end
  def update
    @showerthought = ShowerThought.find_by(:id params[:id])
    @showerthought.update(
      thought: params[:thought]
      )
    redirect_to "index.html.erb"
  end
  def destroy
    @showerthought = ShowerThought.find_by(:id params[:id])
    @showerthought.destroy
    redirect_to "index.html.erb"
  end

end
