puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' },
  { :name => 'prospect' },
  { :name => 'applicant' },
  { :name => 'student' }
])
puts 'SETTING UP DEFAULT USER LOGIN'
admin = User.create! :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << admin.email
prospect = User.create! :email => 'prospect@example.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << prospect.email
applicant = User.create! :email => 'applicant@example.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << applicant.email
student = User.create! :email => 'student@example.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << student.email
admin.add_role :admin
prospect.add_role :prospect
applicant.add_role :applicant
student.add_role :student