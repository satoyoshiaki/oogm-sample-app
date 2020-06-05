class Recruitment < ApplicationRecord
    validates :play_now, presence: true
    validates :game_title, presence: true
    validates :comment, presence: true
    validates :machine, presence: true
    validates :image, presence: true
    validates :on_off, presence: true
    validates :purpouse, presence: true
    validates :comment,    length: { in: 1..250 }
    validates :game_title,    length: { in: 1..30 }
    validates :play_now, numericality: true
end
