FactoryGirl.define do 
	factory :user do
		first_name 'Billy Bob'
		last_name 'Thorton'
		email 'billy@bob.com'
		password '123456'
		password_confirmation '123456'
	end
end