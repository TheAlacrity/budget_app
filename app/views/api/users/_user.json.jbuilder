json.id user.id
json.name user.name
json.email user.email
json.budget user.budget
json.total @total
json.over @over


json.categories do
  json.array! user.categories, partial: 'api/categories/category', as: :category
end
