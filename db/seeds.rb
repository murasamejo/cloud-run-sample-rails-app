unless User.find_by(email: 'john@example.com')
  User.create(
    name: 'John Doe',
    email: 'john@example.com',
    sex: 'male',
    age: 25
  )
end

unless User.find_by(email: 'mary@example.com')
  User.create(
    name: 'Mary Jane',
    email: 'mary@example.com',
    sex: 'female',
    age: 21
  )
end
