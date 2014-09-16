class JobPoolController < ApplicationController
  def index
    @jobs=Job.order(:employer)
  end
end
