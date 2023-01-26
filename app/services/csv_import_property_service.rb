class CsvImportPropertyService
  require 'csv'

  def call(file)
    file = File.open(file)
    csv = CSV.parse(file, headers: true, col_sep: ";")
    csv.each do |row|
      property_hash = {}
      property_hash[:price_current] = row['price_current']
      property_hash[:subdivision] = row['subdivision']
      property_hash[:region] = row['region']
      property_hash[:district] = row['district']
      property_hash[:map_area] = row['map_area']
      property_hash[:property_type] = row['property_type']
      property_hash[:mls_id] = row['mls_id']
      property_hash[:year_built] = row['year_built']
      property_hash[:bathrooms] = row['bathrooms']
      property_hash[:half_bathrooms] = row['half_bathrooms']
      property_hash[:number_of_rooms] = row['number_of_rooms']
      property_hash[:lot_sqft] = row['lot_sqft']
      property_hash[:closed_area] = row['closed_area']
      property_hash[:open_area] = row['open_area']
      property_hash[:style] = row['style']
      property_hash[:remodelled] = row['remodelled']
      property_hash[:posession] = row['posession']
      property_hash[:remarks_es] = row['remarks_es']
      property_hash[:monthly_assessment] = row['monthly_assessment']
      property_hash[:interior_features] = row['interior_features']
      property_hash[:exterior_featrues] = row['exterior_featrues']
      property_hash[:other_services] = row['other_services']
      property_hash[:lot_shape] = row['lot_shape']
      property_hash[:web_title_es] = row['web_title_es']
      property_hash[:access] = row['access']
      property_hash[:roof] = row['roof']
      property_hash[:flooring] = row['flooring']
      property_hash[:water] = row['water']
      property_hash[:construction] = row['construction']
      property_hash[:parking_spaces] = row['parking_spaces']
      property_hash[:internal_features] = row['internal_features']
      property_hash[:link] = row['link']
      property_hash[:leter] = row['leter']
      property_hash[:a1] = row['a1']
      property_hash[:a2] = row['a2']
      property_hash[:a3] = row['a3']
      property_hash[:a4] = row['a4']
      property_hash[:a5] = row['a5']
      property_hash[:a6] = row['a6']
      property_hash[:a8] = row['a8']
      property_hash[:a9] = row['a9']
      property_hash[:a10] = row['a10']
      property = Property.create(property_hash)
    end
  end
end
