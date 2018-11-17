class ReservationRequestsController < ApplicationController
  before_action :set_reservation_request, only: [:show, :edit, :update, :destroy, :approve, :disapprove]

  def index
    if current_user.common?
      @reservation_requests = current_user.reservation_requests
    else
      @reservation_requests = ReservationRequest.all
    end
  end
  
  def new
    @reservation_request = ReservationRequest.new
  end

  def create
    @reservation_request = ReservationRequest.new reservation_request_params
    @reservation_request.user = current_user
    if @reservation_request.save
      redirect_to reservation_requests_path
    else
      render "notification_messages/errors/errors", locals: {resource: @reservation_request}
    end
  end
  
  def edit
  end
  
  def update
    if @reservation_request.update reservation_request_params
      redirect_to reservation_requests_path
    else
      render "notification_messages/errors/errors", locals: {resource: @reservation_request}
    end
  end

  def destroy
    
  end

  def approve
    @reservation_request.update(status: :accepted)
    redirect_to reservation_requests_path
  end
  
  def disapprove
    @reservation_request.update(status: :rejected)
    redirect_to reservation_requests_path
  end

  def map
    
  end

  private

  def set_reservation_request
    @reservation_request = ReservationRequest.find(params[:id])
  end

  def reservation_request_params
    params.require(:reservation_request).permit(:course_id, :laboratory_classroom_id ,:estimated_date, :starting_time, :ending_time, :description, :special_requirements, :person_in_charge)
  end
end
