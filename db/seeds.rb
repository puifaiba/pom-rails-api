User.destroy_all
Task.destroy_all
Interval.destroy_all


user1 = User.create!(email: "test@test.com", password: "password1", first_name: "Polly", last_name: "Wolly", dob: "2014-12-01", role: 1)
user2 = User.create!(email: "tester@test.com", password: "password2", first_name: "Choppo", last_name: "Whoppo", dob: "2016-09-03", role: 1)
user3 = User.create!(email: "testing@test.com", password: "password3", first_name: "Ravi", last_name: "Wavi", dob: "2020-12-23", role: 0, therapist_id: user1.id)
user4 = User.create!(email: "tests@test.com", password: "password4", first_name: "Pepe", last_name: "Wepe", dob: "2020-12-23", role: 0, therapist_id: user2.id)

task1 = Task.create!(name: "Final Project", description: "A Rails/React app", due_date: Time.now, status: "In progress", user_id: user3.id)
task2 = Task.create!(name: "Final Project", description: "A Rails/React app", due_date: Time.now, status: "Done", user_id: user4.id)

interval1 = Interval.create!(date: Time.now, focus_duration: 25, break_duration: 5, long_break_duration: 15, category: "work", on_task: true, comment: "completed on time", task_id: task1.id)
interval2 = Interval.create!(date: Time.now, focus_duration: 30, break_duration: 15, long_break_duration: 30, category: "study", on_task: false, diversion: "social media", comment: "completed on time", task_id: task2.id)