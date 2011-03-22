class Student < ActiveRecord::Base
has_many:parents
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 attr_accessible:name,:email,:num
    validates:name, :presence=>true,:length=>{:maximum=>20}
    validates:email, :presence=>true,:format=>{:with=>email_regex},:length=>{:maximum=>50}
    validates:num, :presence=>true,:length=>{:maximum=>12,:minimum=>8}
end
