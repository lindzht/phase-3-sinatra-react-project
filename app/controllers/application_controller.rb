class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # READ ALL COHORTS 
  get "/cohorts" do
    cohorts = Cohort.all.where('id > ?', 1)
    cohorts.to_json
  end

  # DELETE COHORT
  delete "/cohorts/:id" do
    found = Cohort.find(params[:id])
    found.destroy
    found.to_json
  end

  # ADD NEW COHORTS 
  post "/cohorts" do
    newcohort = Cohort.create(
      region: params[:region],
      start_date: params[:start_date]
    )
    newcohort.to_json
  end
  
  # READ STUDENTS IN COHORT 
  get "/cohorts/:id/students" do
    cohort = Cohort.find(params[:id])
    students = Student.find_students_by_cohort(cohort) 
    students.to_json
  end


  # CREATE STUDENTS IN COHORT 
  post "/students" do
    student = Student.create(
      name: params[:name].capitalize,
      image: params[:image],
      bio: params[:bio],
      sun_sign: params[:sun_sign].capitalize,
      social: params[:social],
      city_state: params[:city_state],
      country: params[:country],
      cohort_id: params[:cohort_id]
    )
    student.to_json
  end

  # PATCH STUDENT IN COHORT
  patch "/students/:id" do
    found = Student.find(params[:id])
    found.update(
      name: params[:name].capitalize,
      image: params[:image],
      bio: params[:bio],
      sun_sign: params[:sun_sign].capitalize,
      social: params[:social],
      city_state: params[:city_state],
      country: params[:country],
    )
    found.to_json
  end

  # DELETE STUDENT IN COHORT
  delete "/students/:id" do
    found = Student.find(params[:id])
    found.destroy
    found.to_json
  end


end
