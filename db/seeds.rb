    # t.string "name"
    # t.decimal "amount", precision: 11, scale: 2
    # t.string "comment"
    # t.integer "user_id"
    # t.integer "category_id"

# expense = Expense.new(name: "Expense 1", amount: 30.99)
# expense.save
expense = Expense.new(name: "Expense 2", amount: 25.00)
expense.save
expense = Expense.new(name: "Expense 3", amount: 9.13)
expense.save
expense = Expense.new(name: "Expense 4", amount: 40.00)
expense.save
expense = Expense.new(name: "Expense 5", amount: 15.00)
expense.save