class Admin::Commercial < ApplicationRecord
    self.table_name = 'commercials'
    mount_uploader :photo, PhotoUploader

    scope :publicated , -> { where(show: true) }
end
