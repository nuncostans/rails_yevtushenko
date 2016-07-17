class Product < ActiveRecord::Base
  belongs_to :cart

  validates :name, presence: true, allow_blank: false
  validates :price,
            presence: true,
            allow_blank: false,
            numericality: { greater_than: 0,
                            message: 'must be grater then 0' }
  validates :description,
            presence: false,
            allow_blank: true

  has_attached_file :photo,
                    styles: { medium: '300x300>', thumb: '100x100>' },
                    default_url: ":style/missing.png"
  # validates_attachment_content_type :photo, content_type: %r{/\Aimage\/.*\Z/}
  validates_attachment :photo,
                       content_type: { content_type: ['image/jpeg',
                                                      'image/gif',
                                                      'image/png'] }
end
