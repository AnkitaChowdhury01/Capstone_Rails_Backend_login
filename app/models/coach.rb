class Coach < ApplicationRecord
    attr_accessor :password



 validates :coach_id ,presence: true

 validates :password ,presence: true,confirmation: true, length: {  in: 5..10}, on: create



    def self.authenticate(coach_id,password)

        coach = find_by_coach_id(coach_id)

        return coach if coach && coach.password_valid?(password)

      end

     

      def password_valid?(password)

        self.password == password

      end

      def password

        return if password.blank?

         self.password = password

   end
end
