json.id category.id
json.name category.name
json.category_budget category.category_budget
json.category_total category.expenses_by_category_id(category.id).total

if category.category_budget < category.expenses_by_category_id(category.id).total
  over = true
else
  over = false
end
json.over over

json.user_id category.user_id
json.testing @cat_over


json.expenses do
  json.array! category.expenses, partial: 'api/expenses/expense', as: :expense
end

json.user category.user.name
# json.user do
#   json.partial! category.user, partial: 'api/user', as: :user
# end
