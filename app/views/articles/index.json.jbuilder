json.owner_name @owner.name
json.artciles do
  json.array! @articles, partial: 'articles/article', as: :article
end
