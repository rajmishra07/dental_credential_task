class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:edit_personal,:edit_disclosure, :edit_education,:edit_liability, :edit_work_history,:edit_office, :show, :update]
  
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def edit_personal
    
  end

  def edit_education
    
  end

  def edit_work_history
  
  end
  def edit_office
  
  end

  def edit_liability
    
  end

  def edit_disclosure
    
  end

  def show_save
    @doctor = Doctor.find(params[:id])
  end

  def save_doctor
  @doctor = Doctor.find(params[:id])

  if @doctor.update(doctor_params)
    render json: { success: true }
  else
    render json: { success: false, errors: @doctor.errors.messages }
  end
end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      flash[:notice] = 'Doctor added successfully.'
      redirect_to doctors_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # The doctor is already set by the callback
  end

  def update
    if @doctor.update(doctor_params)
      flash[:notice] = 'Doctor updated successfully.'
      redirect_to doctors_path
    else
      render :edit, status: :unprocessable_entity
    end
  end



  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
  params.require(:doctor).permit(
    :full_name, :username, :email, :admin, :has_office, :profile, :last_updated, :primary_state,
    :primary_location, :roles, :school_name, :end_date, :speciality_school_name, :speciality_end_date,
    :is_endodontist, :is_oral_surgeon, :is_orthodontist, :is_pediatric_dentist, :is_periodontist,
    :is_prosthodontist, :are_you_periodontist, :are_you_endodontist, :are_you_oral_surgeon,
    :are_you_orthodontist, :is_pedodontist, :are_you_prosthodontist, :is_dental_anesthesiologist,
    :conscious_sedation, :general_anesthesia, :iv_sedation, :board_certified, :certifying_board,
    :certification_expiration_date, :cpr_certificate_number, :cpr_effective_date, :cpr_expiration_date,
    :anesthesia_license_number, :anesthesia_certification_issue_date, :anesthesia_certification_expiration_date,
    :has_hospital_privileges, :hospital_name, :street_address, :city, :state, :zip, :phone, :doctor,
    :ssn, :last_name, :first_name, :date_of_birth, :middle_initial, :todays_date, :languages_spoken1,
    :languages_spoken2, :languages_spoken3, :dea_number, :dea_issue_date, :dea_expiration_date,
    :state_license_number, :license_issuing_state, :license_expiration_date, :controlled_substance_issue_date,
    :medicaid_number, :npi_number, :state_controlled_substance_number, :controlled_substance_expiration_date,
    :professional_degree, :is_male, :is_female, :is_owner, :is_associate, :is_dds, :is_dmd,
    :is_general_dentist, :specialty, :has_other, :other_details, :practice_start_date, :practice_name,
    :office_street_address, :office_suite_bldg, :office_city, :office_state, :office_zip, :office_county,
    :office_phone, :office_fax, :previous_employer_1_name, :previous_employer_1_street_address,
    :previous_employer_1_city, :previous_employer_1_state, :previous_employer_1_zip, :previous_employer_1_phone,
    :previous_employer_1_start_date, :previous_employer_1_end_date, :previous_employer_2_name,
    :previous_employer_2_suite, :previous_employer_2_state, :previous_employer_2_zip, :previous_employer_2_phone,
    :previous_employer_2_start_date, :previous_employer_2_end_date, :previous_employer_3_name,
    :previous_employer_3_start_date, :previous_employer_3_end_date, :work_history_gaps, :malpractice_insurance,
    :insurance_carrier_name, :insurance_expiration_date, :coverage_per_occurrence, :coverage_aggregate,
    :policy_number, :liability_coverage_cancelled, :presently_pending, :liability_actions_past_5_years,
    :malpractice_occurrence, :license_relinquished, :membership_voluntarily_relinquished,
    :dea_certificates_denied, :board_certification_suspended, :clinical_privileges_denied,
    :ever_been_disciplined, :dea_or_state_suspended, :action_against_you, :ever_been_denied_membership,
    :ever_been_convicted, :are_you_currently_engage, :have_you_ever_recieved_treatment_alcohol,
    :do_you_use, :risk_to_the_safety, :do_you_comply_with_federal
  )
end

end
