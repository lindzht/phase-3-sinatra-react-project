class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # COHORTS 
  get "/cohorts" do
    cohorts = Cohort.all
    cohorts.to_json
  end

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
    # students = Student.all.where("cohort_id = ?", cohort)
    students.to_json
  end

  
  # # FIND A STUDENT
  # get "/students/:id" do
  #   found = Student.find(params[:id])
  #   found.to_json
  # end

  # CREATE STUDENTS IN COHORT 
  post "/students" do
    student = Student.create(
      name: params[:name],
      image: params[:image],
      bio: params[:bio],
      sun_sign: params[:sun_sign],
      social: params[:social],
      cohort_id: params[:cohort_id]
    )
    student.to_json
  end

  # PATCH STUDENT IN COHORT
  patch "/students/:id" do
    found = Student.find(params[:id])
    found.update(
      bio: params[:bio]
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
