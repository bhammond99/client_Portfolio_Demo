# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
	)
end

puts "3 Topics Created!"

10.times do |blog|
	Blog.create!(
		title: "My BLog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempor augue at luctus sodales. Aenean sit amet rhoncus nisi, ut tristique tellus. Fusce tristique dolor eget sapien sodales, et varius augue feugiat. Quisque id dolor nec urna feugiat aliquet id ac turpis. Suspendisse ut posuere leo, vitae sagittis nulla. Ut ut sapien eu nibh fringilla malesuada vel non ligula. Cras sollicitudin, mauris id tempus euismod, massa magna porttitor metus, ac consectetur ex lorem ac ligula. Aliquam ut elementum nulla, in vestibulum mauris. Nulla tortor erat, tincidunt a ultricies quis, consectetur sit amet arcu. Duis nec pulvinar orci. Sed pulvinar mattis odio at pulvinar. Suspendisse ornare, dolor hendrerit gravida ultricies, nulla dolor congue ligula, nec pretium nisl odio et elit.",
		topic_id: Topic.last.id
	)
end

puts "10 blog post created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end	

puts "5 skills created"

8.times do |project_item|
	Project.create!(
		title: "Project title: #{project_item}",
		subtitle: "Ruby on Rails",
		body: "Vestibulum ut ipsum magna. Cras malesuada magna in porttitor sollicitudin. Etiam ac velit fermentum, faucibus lacus a, fermentum enim. Morbi et gravida erat. Curabitur mi tellus, ultricies viverra mauris a, rutrum sollicitudin nisl. Nam diam urna, tempor sit amet rhoncus nec, tincidunt ultricies nibh.",
		main_image: "https://placeholdit.co//i/600x400?&bg=333&text=Image File",
		thumb_image: "https://placeholdit.co//i/350x200"
	)
end

1.times do |project_item|
	Project.create!(
		title: "Project title: #{project_item}",
		subtitle: "Angular",
		body: "Vestibulum ut ipsum magna. Cras malesuada magna in porttitor sollicitudin. Etiam ac velit fermentum, faucibus lacus a, fermentum enim. Morbi et gravida erat. Curabitur mi tellus, ultricies viverra mauris a, rutrum sollicitudin nisl. Nam diam urna, tempor sit amet rhoncus nec, tincidunt ultricies nibh.",
		main_image: "https://placeholdit.co//i/600x400?&bg=333&text=Image File",
		thumb_image: "https://placeholdit.co//i/350x200"
	)
end
puts "9 project items created"

3.times do |technology|
	Project.last.technologies.create!(
		name: "Technology #{technology}", 
		)
end	

puts "3 technology items created"








