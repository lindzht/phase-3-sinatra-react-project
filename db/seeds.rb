puts "🌱 Seeding spices..."

# Seed your database here

#COHORTS
c1 = Cohort.create(region: "East West", start_date: "10-10-2022")
c2 = Cohort.create(region: "East West", start_date: "10-14-2022")
c3 = Cohort.create(region: "East West", start_date: "12-12-2022")


#STUDENTS
s1 = Student.create(name: 'Lindsay', image: "placeholder", bio: 'this is my bio', sun_sign: 'leo', social: 'lindsay@1', cohort_id: c1.id)
s2 = Student.create(name: 'Jonny', image: "placeholder", bio: 'this is not my bio', sun_sign: 'capricorn', social: 'jonny@2', cohort_id: c1.id)
s3 = Student.create(name: 'Adam', image: "placeholder", bio: 'is this my bio', sun_sign: 'leo', social: "don't have one", cohort_id: c2.id)
s4 = Student.create(name: 'Sam', image: "placeholder", bio: "i don\'t know adam", sun_sign: 'capricorn', social: 'sam@1', cohort_id: c3.id)


puts "✅ Done seeding!"
