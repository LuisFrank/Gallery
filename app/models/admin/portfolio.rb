class Admin::Portfolio < ApplicationRecord
    self.table_name = 'portfolios'
    mount_uploader :photo, PhotoUploader
    default_scope { order(order: :asc) }

    
    scope :publicated , -> { where(show: true) }
end
