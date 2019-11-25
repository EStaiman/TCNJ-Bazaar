class Textbook < ApplicationRecord
  validates_presence_of :name, :condition

  def self.search(search)
    if search
      textbook = Textbook.find_by(name: search)
      if textbook
        t = Array.new(1)
	t[0] = textbook
	t
      else
        nil
      end
    else
      Textbook.all
    end
  end
end

  def make_offer(offer, id)
     if offer
      textbook = Textbook.find_by(id: id)
      user = textbook.user
      user = User.find_by(name: user)
      if user.message
        mes = user.message << "\n" << current_user.name << " made an offer of " << offer << " on " << textbook.name
      else
        mes = current_user.name << "made an offer of " << offer.to_s << " on " << title
      end
      user.update_attribute(:message, mes)
    end
  end
