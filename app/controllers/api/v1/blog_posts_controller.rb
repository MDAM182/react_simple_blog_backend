class Api::V1::BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
    render json: @blog_posts
    # render json: BlogPostSerializer.new(@blog_posts)
  end]

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
        render json: @blog_post
    else
        render json: {error: 'Error Creating Blog Post'}
    end

end

def show
    @blog_post = BlogPost.find(params[:id])
    render json: @blog_post
end

def destroy
  @blog_post =  BlogPost.find(params[:id])
  @blog_post.destroy
end

def update
  @blog_post = BlogPost.find(params[:id])

  @blog_post.update(title: params[:title], content: params[:content])
  # binding.pry
  if @blog_post.save
    render json: @blog_post
  else
    render json: {error: @blog_post.error}
  end
end





private

  def blog_post_params
      params.require(:blog_post).permit(:title, :content)
  end
end
