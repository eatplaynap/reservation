30.times do |n|
  Room.create!(
    name: "room #{n+1}",
    place: "#{n+1}F",
    number: n,
    terms_of_use: "Great room"
  )
end

20.times do |n|
  Entry.create!(
    reserved_date: Date.today - 10 + n.days
  )
end
