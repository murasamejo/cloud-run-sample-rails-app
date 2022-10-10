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

unless Company.find_by(corp_number: 123)
  Company.create(
    corp_number: 123,
    name: 'Google',
    prefecture: 'Tokyo'
  )
end

unless Company.find_by(corp_number: 456)
  Company.create(
    corp_number: 456,
    name: 'Netflix',
    prefecture: 'Hokkaido'
  )
end

unless Company.find_by(corp_number: 789)
  Company.create(
    corp_number: 789,
    name: 'Nintendo',
    prefecture: 'Kyoto'
  )
end
