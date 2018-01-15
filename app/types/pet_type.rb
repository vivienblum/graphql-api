PetType = GraphQL::ObjectType.define do
  name "Pet"
  description "A pet"
  field :id, types.ID
  field :name, types.String
  field :person do
    type PersonType
    resolve -> (pet, args, ctx) {
      pet.person
    }
  end
end
