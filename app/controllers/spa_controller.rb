class SpaController < ApplicationController
  def main
    @blogs = Blog.all.order("created_at desc")
  end
end
