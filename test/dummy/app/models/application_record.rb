# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  include ActiveSwagger::Swaggerize

  primary_abstract_class
end
