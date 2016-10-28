default['kibana']['plugins']['logtrail']['config'] = {
  "es" => {
    "default_index" => "logstash-*",
    "allow_url_parameter" => false,
    "timezone" => "UTC"
  },
  "tail_interval_in_seconds" => 10,
  "max_buckets" => 500,
  "nested_objects" => false,
  "default_time_range_in_days" => 0,
  "fields" => {
    "mapping" => {
      "timestamp" => "@timestamp",
      "display_timestamp" => "@timestamp",
      "hostname" => "hostname",
      "program" => "syslog5424_app",
      "message" => "message"
    }
  }
}
