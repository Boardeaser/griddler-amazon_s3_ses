module Griddler
  module AmazonS3SES
    @@configuration = nil

    def self.configure
      @@configuration = Configuration.new

      if block_given?
        yield configuration
      end

      configuration
    end

    def self.configuration
      @@configuration || configure
    end

    class Configuration
      attr_accessor :aws_region, :aws_access_key_id, :aws_secret_access_key
    end
  end
end
