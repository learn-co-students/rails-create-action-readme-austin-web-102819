class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    # Create a new post object
    @post= Post.new
    # Set the post object's title to the title input in the title field of new.html.erb
    @post.title= params[:title]
    # Set the post object's description to that input in the description field of new.html.erb
    @post.description= params[:description]
    # Save the object to the database with these attributes
    @post.save
    # Redirect the user to the post_path, and have post_path accept this object as an argument.
    redirect_to post_path(@post)

  end

end
