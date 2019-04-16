require 'pry'

class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(email_to_save, age_to_save)
      @email = email_to_save # si l’e-mail passe le check => on le sauve dans l'instance
      @age = age_to_save
      @@all_users << self

  end

  def self.find_by_email(email_to_find)
    @@all_users.each do | user |
          return user if user.email == email_to_find
    end
  end

  def self.all
    @@all_users.map { | user | puts user.email }
  end

end

