# frozen_string_literal: true

class Todo < ApplicationRecord
  validates :task, presence: true, length: { minimum: 5 }

  def toggle_done!
    self.done = !done
    save
  end
end
