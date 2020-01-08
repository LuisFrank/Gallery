class Admin::Jewelry < ApplicationRecord
    self.table_name = 'jewelries'
    mount_uploader :photo, PhotoUploader

    scope :publicated , -> { where(show: true) }
end
