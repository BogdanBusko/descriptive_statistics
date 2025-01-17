module DescriptiveStatistics
  def ds_standard_deviation(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.standard_deviation_empty_collection_default_value if values.empty?

    Math.sqrt(values.ds_variance)
  end
end
