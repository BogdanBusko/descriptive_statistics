module DescriptiveStatistics
  def descriptive_statistics(&block)
    return { :number => self.ds_number(&block),
             :sum => self.ds_descriptive_sum(&block),
             :variance => self.ds_variance(&block),
             :standard_deviation => self.ds_standard_deviation(&block),
             :min => self.ds_min(&block),
             :max => self.ds_max(&block),
             :mean => self.ds_mean(&block),
             :mode => self.ds_mode(&block),
             :median => self.ds_median(&block),
             :range => self.ds_range(&block),
             :q1 => self.ds_percentile(25, &block),
             :q2 => self.ds_percentile(50, &block),
             :q3 => self.ds_percentile(75, &block) }
  end
end
