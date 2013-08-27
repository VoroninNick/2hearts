class Team < ActiveRecord::Base
  attr_accessible :avatar, :full_name, :position, :short_descr

  has_attached_file :avatar,
      :styles => {
          admin:      '65x65#',
          thumb:      '100x100#',
          show:       '141x177#'
      }
end
