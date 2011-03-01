module Macros

  def content_of(file)
    file.read
  end

  def fixtures_file(file_name)
    File.open(File.join(Pathname(__FILE__).dirname.expand_path, 'fixtures', file_name))
  end

  def csv_file
    fixtures_file('movies.csv')
  end

  def expected_attributes_from_movies_csv
    expected_attributes = [
      {'title' => 'Black Swan', 'director_id' => 0},
      {'title' => 'Inception', 'director_id' => 1},
    ]
  end

end
