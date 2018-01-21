class FeedbacksController < ApplicationController
  # before_action :logged_in_user, only: [:create]
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      flash[:info] = "Your feedback has been saved sucessfully"
      render 'new'
    else
       flash[:info] = "Feedback not saved!"
       render 'new'
    end
  end

  private

  def feedback_params
	  params.require(:feedback).permit(:name, :surname, :hobby, :description)
  end
end
