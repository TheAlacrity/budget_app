json.id expense.id
json.name expense.name
json.amount expense.amount
json.user_id expense.user_id
json.category_id expense.category_id



json.user expense.user.name
# json.user do
#   json.partial! expense.user, partial: 'api/user', as: :user
# end
json.category_name expense.category.name
# json.category do
#   json.partial! expense.category, partial: 'api/category', as: :category
# end