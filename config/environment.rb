require 'sqlite3'
require 'pry'
require 'active_record'

require_relative "../lib/student.rb"
require_relative 'sql_runner'



DB = {:conn => SQLite3::Database.new("db/students.db")}