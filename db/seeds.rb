# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cities = City.create([{ name: 'Chicago', state: 'Illinois', country: 'United
  States of America' }, { name: 'Seattle', state: 'Washington', country: 'United
  States of America' }, { name: 'Dallas', state: 'Texas', country: 'United
  States of America' }])
