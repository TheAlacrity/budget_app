json.id category.id
json.name category.name
json.category_budget category.category_budget
json.user_id category.user_id

json.ex @expense_total
json.test @test

json.expenses do
  json.array! category.expenses, partial: 'api/expenses/expense', as: :expense
end

json.user category.user.name
# json.user do
#   json.partial! category.user, partial: 'api/user', as: :user
# end
