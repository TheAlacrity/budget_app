json.id category.id
json.name category.name
json.category_budget category.category_budget
json.category_spent category.expenses_by_category_id(category.id).total





json.percentage category.percentage(category.id)



json.over? category.over?(category.id)


json.user_id category.user_id


json.expenses do
  json.array! category.expenses, partial: 'api/expenses/expense', as: :expense
end

json.user category.user.name
# json.user do
#   json.partial! category.user, partial: 'api/user', as: :user
# end
