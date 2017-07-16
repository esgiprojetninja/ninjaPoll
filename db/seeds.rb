# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    name: "Admin",
    email: "admin@admin.com",
    admin: true,
    password: "fooBar",
    password_confirmation: "fooBar"
)

main_poll = Poll.create(
    name: "Enquête SNCF sur le niveau de satisfaction des voyageurs de la ligne Paris - Bordeaux",
    description: "Cette enquête est menée afin de mieux connaître les attentes, les usages et le ressenti usagers."
)

pq1 = PollQuestion.create(
    text: "Quel âge avez-vous ?",
    question_type: "int",
    polls: [main_poll]
)
pq2 = PollQuestion.create(
    text: "Combien de fois faites-vous le trajet par mois ?",
    question_type: "int",
    polls: [main_poll]
)
pq3 = PollQuestion.create(
    text: "Sur 10, comment noteriez-vous la ponctualité des trains ?",
    question_type: "range",
    polls: [main_poll]
)
pq4 = PollQuestion.create(
    text: "Sur 10, comment noteriez-vous la résolution des incidents ?",
    question_type: "range",
    polls: [main_poll]
)
pq5 = PollQuestion.create(
    text: "Sur 10, comment noteriez-vous l'accès à l'information ?",
    question_type: "range",
    polls: [main_poll]
)
pq6 = PollQuestion.create(
    text: "Sur 10, comment noteriez-vous la qualité des échanges avec les équipes à bord ?",
    question_type: "range",
    polls: [main_poll]
)
pq7 = PollQuestion.create(
    text: "Sur 10, comment noteriez-vous la carte du wagon bar ?",
    question_type: "range",
    polls: [main_poll]
)
pq8 = PollQuestion.create(
    text: "Si vous avez des remarques supplémentaires, merci de nous en faire part.",
    question_type: "text",
    polls: [main_poll]
)

for i in 0..20
    puts "coucou"
    a = Answer.create(
        poll: main_poll,
        poll_question: pq1,
        int_value: rand(99)
    )
    puts a
    Answer.create(
        poll: main_poll,
        poll_question: pq2,
        int_value: rand(30)
    )
    Answer.create(
        poll: main_poll,
        poll_question: pq3,
        int_value: rand(10)
    )
    Answer.create(
        poll: main_poll,
        poll_question: pq4,
        int_value: rand(10)
    )
    Answer.create(
        poll: main_poll,
        poll_question: pq5,
        int_value: rand(10)
    )
    Answer.create(
        poll: main_poll,
        poll_question: pq6,
        int_value: rand(10)
    )
    Answer.create(
        poll: main_poll,
        poll_question: pq7,
        int_value: rand(10)
    )
    Answer.create(
        poll_id: main_poll,
        poll_question_id: pq8,
        text_value: "Tout va bien, madame la marquise"
    )
end
