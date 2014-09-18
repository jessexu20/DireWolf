class JobpoolController < ApplicationController
  def index
    @jobs=Job.order(:name)
  end
end
