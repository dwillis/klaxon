class StaticController < ApplicationController
  before_filter :authorize

  def index
    @users = User.all
  end

  def help
    path = File.join(Rails.root, 'data', 'help.md')
    markdown = File.read(path)
    @html = Kramdown::Document.new(markdown).to_html
  end

end
