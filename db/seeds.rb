# Popula o banco com estados e cidades brasileiras

require 'net/http'
require 'net/https' # for ruby 1.8.7
require 'json'

# Busca informações de um json com as informações
def states
  http = Net::HTTP.new('raw.githubusercontent.com', 443); http.use_ssl = true
  JSON.parse http.get('/zigotto/br_populate/master/states.json').body
end

# Confere se a cidade é uma capital
def capital?(city, state)
  city == state["capital"]
end

# Grava as informações no banco
ActiveRecord::Base.transaction do
  states.each do |state|
    state_obj = State.find_or_create_by(acronym: state["acronym"], name: state["name"])

    state["cities"].map { |city| City.find_or_create_by(name: city, state: state_obj, capital: capital?(city, state)) }
  end
end
