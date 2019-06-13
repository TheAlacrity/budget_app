    # t.string "name"
    # t.decimal "amount", precision: 11, scale: 2
    # t.string "comment"
    # t.integer "user_id"
    # t.integer "category_id"
User.delete_all
Expense.delete_all
Category.delete_all

user_1 = User.create(name: "Joe", email: "joe@budget.com", password: "password", password_confirmation: "password", budget: 5000)
user_2 = User.create(name: "John", email: "john@budget.com", password: "password", password_confirmation: "password", budget: 3800)

category_1 = Category.create(name: "fixed_expenses", category_budget: 3000, user_id: user_1.id)
category_2 = Category.create(name: "recreation", category_budget: 500, user_id: user_1.id)
category_3 = Category.create(name: "food", category_budget: 1000, user_id: user_1.id)
category_4 = Category.create(name: "savings", category_budget: 500, user_id: user_1.id)

category_1_b = Category.create(name: "fixed_expenses", category_budget: 2500, user_id: user_2.id)

category_2_b = Category.create(name: "recreation", category_budget: 300, user_id: user_2.id)

category_3_b = Category.create(name: "food", category_budget: 800, user_id: user_2.id)

category_4_b = Category.create(name: "savings", category_budget: 200, user_id: user_2.id)

expense = Expense.new(name: "Fixed Expense", amount: category_1.category_budget, comment: "", user_id: user_1.id, category_id: category_3.id)
expense.save

expense = Expense.new(name: "Family dinner", amount: 30.99, comment: "", user_id: user_1.id, category_id: category_3.id)
expense.save

expense = Expense.new(name: "Dragonfruit", amount: 25.00, comment: "", user_id: user_1.id, category_id: category_3.id)
expense.save

expense = Expense.new(name: "Bubbletea breakfast", amount: 9.13, comment: "", user_id: user_2.id, category_id: category_3.id)
expense.save

expense = Expense.new(name: "Expense 4", amount: 40.00, comment: "", user_id: user_1.id, category_id: category_3.id)
expense.save

expense = Expense.new(name: "Expense 5", amount: 15.00, comment: "", user_id: user_2.id, category_id: category_2.id)
expense.save

