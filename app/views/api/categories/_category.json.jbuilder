json.id category.id
json.name category.name
json.category_budget category.category_budget
json.user_id category.user_id
json.total @expenses_total
json.over @over

json.expenses do
  json.array! category.expenses, partial: 'api/expenses', as: :expenses
end

json.user do
  json.partial! category.user, partial: 'api/user', as: :user
end



