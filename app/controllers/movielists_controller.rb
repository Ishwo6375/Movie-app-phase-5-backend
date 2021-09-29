class MovielistsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

 def index
  movielists = Movielist.all
  render json: movielists
 end

  def show
   movielist = find_movielist
   render json: movielist
  end

   def create
   movielist = Movielist.create!(movielist_params)
   render json: movielist
  end

  def update
   movielist = find_movielist
   movielist.update!(movielist_params)
   render json: movielist
  end

   def destroy
    movielist = find_movielist
    movielist.destroy
    head :no_content
   end

   private

   def movielist_params
    params.require(:movielist).permit(:title, :description, :image, :user_id)
   end

   def find_movielist
    Movielist.find(params[:id])
   end

    def render_not_found
        render json: { error: "Movielist not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
