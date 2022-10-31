module DescriptiveStatistics
  def ds_variance(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.variance_empty_collection_default_value if values.empty?

    mean = values.ds_mean
    values.map { |sample| (mean - sample) ** 2 }.reduce(:+) / values.ds_number
  end
end
