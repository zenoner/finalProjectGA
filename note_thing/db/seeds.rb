# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

x = Notebook.create(title: 'Remind to do', user_id: nil)
Note.create(title: 'complete this final project 4', body: 'Never give up', notebook_id: x.id )

y = Notebook.create(title: 'To Buy', user_id: nil)
Note.create(title: 'food', body: 'eggs and milk', notebook_id: y.id )
Note.create(title: 'toys', body: 'legos', notebook_id: y.id )

z = Notebook.create(title: 'People to Call', user_id: nil)
Note.create(title: 'John', body: 'reminder for party', notebook_id: z.id )
Note.create(title: 'Bryan', body: 'happy birthday', notebook_id: z.id )
