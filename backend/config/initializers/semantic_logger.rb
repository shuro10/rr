config.rails_semantic_logger.add_file_appender = false
config.semantic_logger.add_appender(io: $stdout, level: config.log_level, formatter: :json)
