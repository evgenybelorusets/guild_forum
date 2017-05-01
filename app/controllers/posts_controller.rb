class PostsController < AuthenticatedController
  def index
    p session["devise.bnet_data"]
    p current_user
  end
end