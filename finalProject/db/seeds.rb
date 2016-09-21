# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Notebook.create(title: 'Remind to do', users_id: nil)

Note.create(title: 'complete this final project 4', body: 'Never give up', notebook_id: '1' )
Note.create(title: 'complete this final project 4', body: 'Never give up', notebook_id: '' )
