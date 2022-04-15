# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  include ActionSwagger::Swaggerize

  primary_abstract_class
end
