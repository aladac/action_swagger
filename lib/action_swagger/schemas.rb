# frozen_string_literal: true

module ActionSwagger
  VALID_TYPES = %i[string number integer array object].freeze
  Error = Class.new(StandardError)

  module Schemas
    @swagger_attributes = {}
    @swaggerize = {}

    def swagger_attribute(name, options)
      check_column(name, options[:type])
      ActionSwagger::Schemas.swagger_attributes[to_s] ||= {}
      ActionSwagger::Schemas.swagger_attributes[to_s].merge!({ name => options })
    end

    def swaggerize(mode)
      ActionSwagger::Schemas.swaggerize[to_s] = mode
    end

    def check_column(column, _type)
      column_names.include?(column.to_s) or raise(Error, "No #{column} column on model")
    end

    def swagger_attributes
      ActionSwagger::Schemas.swagger_attributes[to_s]
    end

    def swaggerize?
      ActionSwagger::Schemas.swaggerize[to_s]
    end

    def column_attributes
      attrs = {}

      columns.each do |column|
        attrs[column.name.to_sym] = { type: column.sql_type_metadata.type }
      end
      attrs
    end

    def swagger_schema
      return column_attributes if swaggerize? == :columns
      return swagger_attributes if swaggerize? == :defined

      swagger_attributes.merge(column_attributes)
    end

    def swagger_reference
      "#/models/#{self}"
    end

    def swagger_attribute_names
      swagger_schema.keys.map(&:to_s)
    end

    def self.swagger_attributes
      @swagger_attributes
    end

    def self.swaggerize
      @swaggerize
    end
  end
end
