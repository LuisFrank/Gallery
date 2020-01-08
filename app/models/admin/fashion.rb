class Admin::Fashion < ApplicationRecord
    self.table_name = 'fashions'
    mount_uploader :photo, PhotoUploader

    scope :publicated , -> { where(show: true) }
end
