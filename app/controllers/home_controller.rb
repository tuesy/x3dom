class HomeController < ApplicationController
  layout 'x3dom'

  def index
  end

$tutorials.each do |x|
  self.class_eval <<-EOS
  def #{x}
  end
EOS
  end
end

