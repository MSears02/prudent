# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = BudgetCategory.create([
  {Name: 'God', IsDebit: true, sort: 1},
  {Name: 'Groceries', IsDebit: true, sort: 2},
  {Name: 'Miscellaneous', IsDebit: true, sort: 3},
  {Name: 'Internet', IsDebit: true, sort: 4},
  {Name: 'Car Payment', IsDebit: true, sort: 5},
  {Name: 'Income', IsDebit: false, sort: 6},
  {Name: 'Car Insurance', IsDebit: true, sort: 7},
  {Name: 'Gas', IsDebit: true, sort: 8},
  {Name: 'Audible', IsDebit: true, sort: 9}])

budget = Budget.create(Title: 'USAA Account', StartingBalance: '1708.95', CurrentBalance: '1708.95')

bi = BudgetItem.create(amount: 150.00, DueDate: '2017-01-01', StartDate: '2017-01-01', EndDate: '2017-01-29', BudgetCategory_id: 1, IsReocurring: 1, IsCollection: 0)
budget.BudgetItems << bi

bi = BudgetItem.create(amount: 14.00, DueDate: '2017-01-01', StartDate: '2017-01-12', EndDate: '2017-01-12', BudgetCategory_id: 9, IsReocurring: 0, IsCollection: 0)
budget.BudgetItems << bi
