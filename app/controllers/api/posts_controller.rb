class Api::PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    posts = Post.all
    @sorted_posts = posts.order('updated_at DESC')
    render 'index.json.jbuilder'
  end

  def create
    @post = Post.create(
      title: params[:title],
      post: params[:post]
    )
    if @post.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @post.errors.full_messages }, status: 418
    end
  end

  def show
    @post = Post.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
  end

  def destroy
  end
end
