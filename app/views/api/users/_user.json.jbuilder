json.id user.id
json.name user.name
json.email user.email
json.budget user.budget
json.total_spent @total
json.percentage user.percentage(user.budget, @total)
json.over? user.over?(user.budget, @total)

json.categories do
  json.array! user.categories, partial: 'api/categories/category', as: :category
end
