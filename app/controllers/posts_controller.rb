# require_relative 'users_controller'

class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order("created_at DESC")
    @comment = Comment.new
    # @comment = @post.comments
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new

  def new
    # @post = Post.new
    @post = current_user.posts.build

  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
 
    @post = current_user.posts.build(post_params)
    
 
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to posts_url, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def friends
    # @friendship = current_user.friendship.find(friend_id)
    # @status = current_user.friendships
    @friendships = current_user.friendships
    @friendposts = Post.where(:user_id => current_user.friends)
    @inversefriendships = current_user.inverse_friendships
    @posts = Post.order("created_at DESC")
    @comment = Comment.new
    @post = current_user.posts.build
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:post, :user_id)
    end
end
