class Admin::Biography < ApplicationRecord
    self.table_name = 'biographies'
    scope :publicated , -> { where(visible: true) }
end
