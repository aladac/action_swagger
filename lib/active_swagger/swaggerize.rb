# frozen_string_literal: true

module ActiveSwagger
  module Swaggerize
    extend ActiveSupport::Concern

    included do
      extend ActiveSwagger::Proxy
    end
  end
end
