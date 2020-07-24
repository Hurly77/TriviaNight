# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#triviagames
TriviaGame.create(name: "Film")
#likes
#users
#games
#categories
Categories.create(id:1, category: "Entertainment: Film")
#Questions
#easy
Quesion.create(question: "In the 1995 film &quot;Balto&quot;, who are Steele&#039;s accomplices?", difficulty: "easy", correct_answer: "Kaltag, Nikki, and Star", incorrect_answers: ["Dusty, Kirby, and Ralph", "Nuk, Yak, and Sumac", "Jenna, Sylvie, and Dixie"], points: 20, category_id: 1)

Question.create(question: "Who starred as Bruce Wayne and Batman in Tim Burton&#039;s 1989 movie &quot;Batman&quot;?", difficulty: "easy", correct_answer: "Michael Keaton", incorrect_answers:["George Clooney", "Val Kilmer", "Adam West"], points: 20, category_id: 1)

Question.create(questiont: "In the 1992 film &quot;Army of Darkness&quot;, what name does Ash give to his double-barreled shotgun?", correct_answer: "Boomstick", incorrect_answers: ["Bloomstick", "Blastbranch", "2-Pump Chump"], points: 20, category_id: 1)

Question.create("question": "When does &quot;Rogue One: A Star Wars Story&quot; take place chronologically in the series?", difficulty: "easy", correct_answer: "Between Episode 3 and 4", incorrect_answers: ["After Episode 6", "Before Episode 1", "Between Episode 4 and 5"], points: 20, category_id: 1)

Question.create(question: "Which of these actors/actresses is NOT a part of the cast for the 2016 movie &quot;Suicide Squad&quot;?", difficulty: "easy", correct_answer: "Scarlett Johansson", incorrect_answers: ["Jared Leto", "Will Smith", "Margot Robbie"], points: 20, category_id: 1)

Question.create(difficulty: "easy", "question": "Which actress danced the twist with John Travolta in &#039;Pulp iction&#039;?", correct_answer: "Uma Thurman", incorrect_answers: ["Kathy Griffin", "Pam Grier", "Bridget Fonda"], points: 20, category_id: 1)

Question.create(question: "Who directed &quot;E.T. the Extra-Terrestrial&quot; (1982)?", difficulty: "easy", correct_answer: "Steven Spielberg", incorrect_answers: ["Stanley Kubrick", "James Cameron","Tim Burton"], points: 20, category_id: 1)
#medium
#hard
#rounds