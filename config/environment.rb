require 'sqlite3'
require 'pry'
require 'active_record'

require_relative "../lib/student.rb"
require_relative 'sql_runner'

DB = ActiveRecord::Base.establish_connection(
      :adapter => "sqlite3",
      :database => "../db/students"
    )

  DB = ActiveRecord::Base.connection

  if ENV["ACTIVE_RECORD_ENV"] == "test"
    ActiveRecord::Migration.verbose = false
  end


DB = {:conn => SQLite3::Database.new("db/students.db")}