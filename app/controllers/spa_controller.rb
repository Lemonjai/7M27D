class SpaController < ApplicationController
  def main
    @blogs = Blog.all.order("created_at desc")
    @works = Work.all.order("created_at desc")
    @projects = Project.all.order("created_at desc")
  end
end
