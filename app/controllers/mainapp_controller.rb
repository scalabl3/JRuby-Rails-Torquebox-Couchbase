class MainappController < ApplicationController
  def index
    m = MainApp.new()
    x = m.get()
    Rails.logger.debug(x.class.to_s)
    Rails.logger.debug(x.inspect)
  end
end
