module Remarkt
  class User
    include Mongoid::Document
    include Mongoid::Timestamps

    field :username, type: String
    field :name, type: String
    field :password_salt, type: String
    field :password_hash, type: String

    validates_presence_of :name
    validates_presence_of :username

    validates_uniqueness_of :username

    attr_accessible :username
    attr_accessible :name

    def self.signup!(params)
    	user = Remarkt::User.new
    	
    	user.username = params[:username]
    	user.name = params[:name]
    	user.password_salt = BCrypt::Engine.generate_salt
    	user.password_hash = BCrypt::Engine.hash_secret(params[:password], user.password_salt)

    	user.save!

    	user
    end

    def self.authenticate!(params)

    	user = Remarkt::User.where(username: params[:username]).first
    	if user && user.password_hash == BCrypt::Engine.hash_secret(params[:password], user.password_salt)
    		user
    	else
    		nil
    	end

    end


  end
end