json.id category.id
json.name category.name
json.category_budget category.category_budget
json.user_id category.user_id


json.user do
  json.partial! category.user, partial: 'api/user', as: :user
end



