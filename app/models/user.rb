class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :user_type_id
end
