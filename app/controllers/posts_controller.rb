class PostsController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      title: params[:title], 
      expect: params[:expect], 
      actual: params[:actual],
      strength: 0)
    @post.save
    redirect_to posts_url
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title= params[:title]
    @post.expect= params[:expect]
    @post.actual= params[:actual]
    @post.save
    redirect_to posts_url
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    # head :no_content
    # redirect_to posts_url
  end

  def strength
    @post = Post.find_by(id: params[:id])
    @post.strength = 1
    @post.save
    redirect_to posts_mypage_url
  end
  
  def weakness
    @post = Post.find_by(id: params[:id])
    @post.strength = 2
    @post.save
    redirect_to posts_mypage_url
  end

  def mypage
    @strengths = Post.where(strength: 1)
    @weaknesses = Post.where(strength: 2)
    @normals = Post.where(strength: 0)
  end
end
