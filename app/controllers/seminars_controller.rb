class SeminarsController < ApplicationController
  def new
    @seminar = Seminar.new
  end

  def create
    @seminar = Seminar.new(seminar_params)
    if @seminar.save
      redirect_to root_path
    else
      redirect_to new_seminar_path
    end
  end

  private
  def seminar_params
    params.require(:seminar).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :birth_date, :postal_code, :prefecture_id, :city, :block, :building, :mail, :company_name, :company_phone, :company_address, :phone_number, :user_id).merge(user_id: current_user.id)
  end
end
