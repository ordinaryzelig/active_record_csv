require 'spec_helper'

describe ORMFromCSV do

  it 'should import from CSV' do
    Movie.from_csv!(csv_file)
    Movie.all.map(&:csv_attributes).should =~ expected_attributes_from_movies_csv
  end

  it 'should import from CSV file and export exactly the same content' do
    Movie.from_csv!(csv_file)
    Movie.to_csv.should eq(content_of(csv_file))
  end

end
