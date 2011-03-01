require 'active_record_to_csv'
require 'orm_from_csv'
require 'active_record'

module ActiveRecordCSV

  # Instantiate new objects from CSV and save each one.
  def from_csv!(file)
    from_csv(file).each do |object|
      object.save!
    end
  end

  ActiveRecord::Base.extend ORMFromCSV
  ActiveRecord::Base.extend ActiveRecordCSV

end
