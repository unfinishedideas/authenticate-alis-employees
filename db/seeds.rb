# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Every time 'rails :dbseed'is run, 'Division.destroy_all' will delete the previously generated seeds.
Division.destroy_all

d1 = Division.create!(name: 'Accounting')
    20.times do |i|
        Employee.create!(
            name: Faker::TvShows::Seinfeld.character,
            title: Faker::Job.title,
            division_id: d1.id
        )
    end

d2 = Division.create!(name: 'Management')
    6.times do |i|
        Employee.create!(
            name: Faker::Books::Lovecraft.deity,
            title: Faker::Job.title,
            division_id: d2.id
        )
    end

d3 = Division.create!(name: 'Marketing')
    18.times do |i|
        Employee.create!(
            name: Faker::TvShows::BojackHorseman.character,
            title: Faker::Job.title,
            division_id: d3.id
        )
    end

d4 = Division.create!(name: 'Legal')
    4.times do |i|
        Employee.create!(
            name: Faker::JapaneseMedia::DragonBall.character,
            title: Faker::Job.title,
            division_id: d4.id
        )
    end

d5 = Division.create!(name: 'Sales')
    32.times do |i|
        Employee.create!(
            name: Faker::Games::LeagueOfLegends.champion,
            title: Faker::Job.title,
            division_id: d5.id
        )
    end

d6 = Division.create!(name: 'HR')
    12.times do |i|
        Employee.create!(
            name: Faker::Games::Pokemon.name,
            title: Faker::Job.title,
            division_id: d6.id
        )
    end

d7 = Division.create!(name: 'IT')
    20.times do |i|
        Employee.create!(
            name: Faker::TvShows::SiliconValley.character,
            title: Faker::Job.title,
            division_id: d7.id
        )
    end
