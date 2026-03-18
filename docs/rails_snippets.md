# Rails Snippets

### For records that have duplicate values in a column
```
Model.select(:attr).group(:attr).having("count(*) > 1")
```

### Count scheduled retries for a Sidekiq job
```
Sidekiq::RetrySet.new
  .select { |j| j.display_class == "AJob" }
  .count
```

### Delete scheduled retries for a Sidekiq job
```
Sidekiq::RetrySet.new
  .select { |j| j.display_class == "AJob" }
  .map(&:delete)
```