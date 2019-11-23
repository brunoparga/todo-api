# frozen_string_literal: true

class Todo < ApplicationRecord
  validates :task, presence: true, length: { minimum: 5 }

  def mark_as_done!
    self.done = true
    save
  end
end
