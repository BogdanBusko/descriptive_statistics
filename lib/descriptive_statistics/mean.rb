module DescriptiveStatistics
  def ds_mean(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.mean_empty_collection_default_value if values.empty?

    values.ds_sum / values.ds_number
  end
end
