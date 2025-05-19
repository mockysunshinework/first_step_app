class Diary < ApplicationRecord
  belongs_to :user

  has_paper_trail # 編集履歴を有効化

  validates :title, :body, :written_on, presence: true

  scope :publicly_visible, -> { where(public: true) }
  scope :locked, -> { where(locked: true) }

  def editable?
    !locked?
  end
end
