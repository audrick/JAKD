# == Schema Information
#
# Table name: players
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  photo           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Player < ActiveRecord::Base
  has_secure_password
end
