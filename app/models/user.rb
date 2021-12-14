class User < ApplicationRecord
    def is_admin?
        self.status
    end
end
