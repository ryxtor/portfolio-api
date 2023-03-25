# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

return if Skill.find_by(name: "Ruby").present?

ruby = Skill.create(name: "Ruby")
rails = Skill.create(name: "Rails")
javascript = Skill.create(name: "JavaScript")
react = Skill.create(name: "React")
redux = Skill.create(name: "Redux")
html = Skill.create(name: "HTML")
css = Skill.create(name: "CSS")
postgresql = Skill.create(name: "PostgreSQL")
bootstrap = Skill.create(name: "Bootstrap")
tailwind = Skill.create(name: "Tailwind")

bookdev = Project.new(name: 'Book Dev', description: 'This is a web page that let you make an appointment with a developer. This app uses API calls to its back-end to get the data regarding users, developers, and skills.', github_link: 'https://github.com/awaisanwar544/final-capstone-ui', live_demo: 'https://book-dev.herokuapp.com/')
bookdev.image.attach(io: File.open('app/assets/images/bookdev.png'), filename: 'bookdev.png')
bookdev.skills.push(rails, react, tailwind)
bookdev.save

budgetapp = Project.new(name: 'Budget App', description: 'This is a Budget web mobile app where you can register, login, create categories, add transactions and see the total amount for each category.', github_link: 'https://github.com/ryxtor/budget-app', live_demo: 'https://budget-app-ryxtor.herokuapp.com/')
budgetapp.image.attach(io: File.open('app/assets/images/budget_app.png'), filename: 'budget_app.png')
budgetapp.skills.push(rails, postgresql, bootstrap)
budgetapp.save

recipe_app = Project.new(name: 'Recipe App', description: 'This is an app to store your recipes and make them public! After login, you can create new recipes with the food you added to your favorite foods. You can also store the ingredients you currently have in an inventory and compare the recipe you want to follow with your inventory to get a custom shopping list with the items you need!', github_link: 'https://github.com/ryxtor/recipe-app', live_demo: 'https://recipe-app-microverse.herokuapp.com/')
recipe_app.image.attach(io: File.open('app/assets/images/recipe_app.png'), filename: 'recipe_app.png')
recipe_app.skills.push(rails, postgresql, bootstrap)
recipe_app.save

space_travelers = Project.new(name: 'Space Travelers Hub', description: '"Space Travelers Hub" is a website that work with real live data from the SpaceX API. The users can book rockets and join selected space missions.', github_link: 'https://github.com/yersel500/space-travelers-hub', live_demo: 'https://loquacious-axolotl-f182b5.netlify.app/')
space_travelers.image.attach(io: File.open('app/assets/images/space_travelers.png'), filename: 'space_travelers.png')
space_travelers.skills.push(react, redux, javascript)
space_travelers.save

tv_shows = Project.new(name: 'TV Shows', description: 'In this project we made a Tv shows webpage where you can like or comment the different shows.', github_link: 'https://github.com/ryxtor/JS-group-capstone-project-Lucas-Omar', live_demo: 'https://ryxtor.github.io/JS-group-capstone-project-Lucas-Omar/dist/')
tv_shows.image.attach(io: File.open('app/assets/images/tv_shows.png'), filename: 'tv_shows.png')
tv_shows.skills.push(javascript, html, css)
tv_shows.save

leaderboard = Project.new(name: 'Leaderboard', description: 'This is a tool for fun purposes, you can add a new score to the leaderboard using API for storage. The design is based on the Elden Ring video game.', github_link: 'https://github.com/ryxtor/Leaderboard', live_demo: 'https://ryxtor.github.io/Leaderboard/dist/')
leaderboard.image.attach(io: File.open('app/assets/images/leaderboard.png'), filename: 'leaderboard.png')
leaderboard.skills.push(javascript, html, css)
leaderboard.save