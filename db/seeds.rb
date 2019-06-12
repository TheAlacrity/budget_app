    # t.string "name"
    # t.decimal "amount", precision: 11, scale: 2
    # t.string "comment"
    # t.integer "user_id"
    # t.integer "category_id"
User.delete_all
Expense.delete_all
Category.delete_all

user = User.create(name: "Joe", email: "joe@budget.com", password: "password", password_confirmation: "password")
user = User.create(name: "John", email: "john@budget.com", password: "password", password_confirmation: "password")


expense = Expense.new(name: "Expense 1", amount: 30.99, comment: "", user_id: "", category_id: "")
expense.save
expense = Expense.new(name: "Expense 2", amount: 25.00, comment: "", user_id: "", category_id: "")
expense.save
expense = Expense.new(name: "Expense 3", amount: 9.13, comment: "", user_id: "", category_id: "")
expense.save
expense = Expense.new(name: "Expense 4", amount: 40.00, comment: "", user_id: "", category_id: "")
expense.save
expense = Expense.new(name: "Expense 5", amount: 15.00, comment: "", user_id: "", category_id: "")
expense.save

