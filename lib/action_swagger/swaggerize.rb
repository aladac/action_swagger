# frozen_string_literal: true

module ActionSwagger
  module Swaggerize
    extend ActiveSupport::Concern

    included do
      extend ActionSwagger::Proxy
    end
  end
end
