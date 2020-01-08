class Admin::Portfolio < ApplicationRecord
    self.table_name = 'portfolios'
    mount_uploader :photo, PhotoUploader

    scope :publicated , -> { where(show: true) }
end
