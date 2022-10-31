module DescriptiveStatistics
  def ds_median(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.median_empty_collection_default_value if values.empty?

    values.ds_percentile(50)
  end
end
