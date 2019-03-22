class MultiplesController < ApplicationController
before_action :set_travel

  def create
    add_more_multiples(multiples_params[:multiples])
    flash[:error] = "Failed uploading images" unless @travel.save
    redirect_to current_user
  end

  def destroy
    remove_multiple_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting image" unless @travel.save
    redirect_to current_user
  end

  private

  def set_travel
    @travel = Travel.find(params[:travel_id])
  end

  def add_more_multiples(new_multiples)
    @travel = Travel.find(params[:travel_id])
    multiples = @travel.multiples
    multiples+=new_multiples
    @travel.multiples = multiples
  end

  def multiples_params
    params.require(:travel).permit({multiples: []}) # allow nested params as array
  end

  def remove_multiple_at_index(index)
    remain_multiples = @travel.multiples # copy the array
    deleted_multiple = remain_multiples.delete_at(index) # delete the target image
    deleted_multiple.try(:remove!) # delete image from S3
    @travel.multiples = remain_multiples # re-assign back
    @travel.remove_multiples! if remain_multiples.empty?
  end

end
