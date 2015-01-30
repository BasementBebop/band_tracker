class Band < ActiveRecord::Base
  has_and_belongs_to_many :venues

  private
  define_method(:capitalize_name) {
    self.name=(name().capitalize())
  }

end
