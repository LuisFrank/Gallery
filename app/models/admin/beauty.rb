class Admin::Beauty < ApplicationRecord
    self.table_name = 'beauties'
    mount_uploader :photo, PhotoUploader

    scope :publicated , -> { where(show: true) }
end
