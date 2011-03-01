class Movie < ActiveRecord::Base

  def csv_attributes
    attributes.keep_if { |field, value| self.class.csv_fields.include?(field) }
  end

  def self.csv_fields
    @csv_fields ||= ['title', 'director_id']
  end

end
