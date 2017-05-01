class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: %i(bnet)

  def self.from_omniauth(auth)
    first_or_create(battle_tag: auth.info.battletag, battle_id: auth.info.id)
  end
end
