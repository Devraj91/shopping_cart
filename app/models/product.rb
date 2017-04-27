class Product < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    validates :title,:description , :price , :image , :available, presence: true
    validates :title, length: { minimum: 5 , maximum: 70 }
    scope :available_products, -> { where(available: true)   }

    has_many :line_items
    has_many :orders, through: :line_items
     before_destroy :check_if_proudct_in_cart

     private

     def ensure_not_referenced_by_any_line_item
              if line_items.empty?
                  return true
               else
                   errors.add(:base, 'Line Items is present!!')
                   return false
               end
     end
end
