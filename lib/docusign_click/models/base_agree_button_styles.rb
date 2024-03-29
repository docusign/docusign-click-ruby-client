=begin
#DocuSign Click API

#Elastic signing (also known as DocuSign Click)  lets you capture consent to standard agreement terms with a single click: terms and conditions, terms of service, terms of use, privacy policies, and more. The Click API lets you include this customizable elastic template solution in your DocuSign integrations.

OpenAPI spec version: v1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Click
  class BaseAgreeButtonStyles
    # Control the background color of the element.
    attr_accessor :background_color

    # Control the border of the element.
    attr_accessor :border

    # Control the border color of the element.
    attr_accessor :border_color

    # Control the border radius of the element.
    attr_accessor :border_radius

    # Control the border style of the element.
    attr_accessor :border_style

    # Control the border width of the element.
    attr_accessor :border_width

    # Control the display of the box shadow of the agree button.
    attr_accessor :box_shadow

    # Control the fore-ground color of the element.
    attr_accessor :color

    # Control the font family of the text.
    attr_accessor :font_family

    # Control the font size of the text.
    attr_accessor :font_size

    # Control the font style of the text.
    attr_accessor :font_style

    # Control the font weight of the text.
    attr_accessor :font_weight

    # Control the height of the agree button.
    attr_accessor :height

    # Control the margin of the element.
    attr_accessor :margin

    # Control the opacity of the element
    attr_accessor :opacity

    # Control the outline of the element
    attr_accessor :outline

    # Conrol the outline offset of the element
    attr_accessor :outline_offset

    # Control the padding of the element.
    attr_accessor :padding

    # Control the width of the agree button.
    attr_accessor :width

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'background_color' => :'backgroundColor',
        :'border' => :'border',
        :'border_color' => :'borderColor',
        :'border_radius' => :'borderRadius',
        :'border_style' => :'borderStyle',
        :'border_width' => :'borderWidth',
        :'box_shadow' => :'boxShadow',
        :'color' => :'color',
        :'font_family' => :'fontFamily',
        :'font_size' => :'fontSize',
        :'font_style' => :'fontStyle',
        :'font_weight' => :'fontWeight',
        :'height' => :'height',
        :'margin' => :'margin',
        :'opacity' => :'opacity',
        :'outline' => :'outline',
        :'outline_offset' => :'outlineOffset',
        :'padding' => :'padding',
        :'width' => :'width'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'background_color' => :'String',
        :'border' => :'String',
        :'border_color' => :'String',
        :'border_radius' => :'String',
        :'border_style' => :'String',
        :'border_width' => :'String',
        :'box_shadow' => :'String',
        :'color' => :'String',
        :'font_family' => :'String',
        :'font_size' => :'String',
        :'font_style' => :'String',
        :'font_weight' => :'Object',
        :'height' => :'String',
        :'margin' => :'String',
        :'opacity' => :'String',
        :'outline' => :'String',
        :'outline_offset' => :'String',
        :'padding' => :'String',
        :'width' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'backgroundColor')
        self.background_color = attributes[:'backgroundColor']
      end

      if attributes.has_key?(:'border')
        self.border = attributes[:'border']
      end

      if attributes.has_key?(:'borderColor')
        self.border_color = attributes[:'borderColor']
      end

      if attributes.has_key?(:'borderRadius')
        self.border_radius = attributes[:'borderRadius']
      end

      if attributes.has_key?(:'borderStyle')
        self.border_style = attributes[:'borderStyle']
      end

      if attributes.has_key?(:'borderWidth')
        self.border_width = attributes[:'borderWidth']
      end

      if attributes.has_key?(:'boxShadow')
        self.box_shadow = attributes[:'boxShadow']
      end

      if attributes.has_key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.has_key?(:'fontFamily')
        self.font_family = attributes[:'fontFamily']
      end

      if attributes.has_key?(:'fontSize')
        self.font_size = attributes[:'fontSize']
      end

      if attributes.has_key?(:'fontStyle')
        self.font_style = attributes[:'fontStyle']
      end

      if attributes.has_key?(:'fontWeight')
        self.font_weight = attributes[:'fontWeight']
      end

      if attributes.has_key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.has_key?(:'margin')
        self.margin = attributes[:'margin']
      end

      if attributes.has_key?(:'opacity')
        self.opacity = attributes[:'opacity']
      end

      if attributes.has_key?(:'outline')
        self.outline = attributes[:'outline']
      end

      if attributes.has_key?(:'outlineOffset')
        self.outline_offset = attributes[:'outlineOffset']
      end

      if attributes.has_key?(:'padding')
        self.padding = attributes[:'padding']
      end

      if attributes.has_key?(:'width')
        self.width = attributes[:'width']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          background_color == o.background_color &&
          border == o.border &&
          border_color == o.border_color &&
          border_radius == o.border_radius &&
          border_style == o.border_style &&
          border_width == o.border_width &&
          box_shadow == o.box_shadow &&
          color == o.color &&
          font_family == o.font_family &&
          font_size == o.font_size &&
          font_style == o.font_style &&
          font_weight == o.font_weight &&
          height == o.height &&
          margin == o.margin &&
          opacity == o.opacity &&
          outline == o.outline &&
          outline_offset == o.outline_offset &&
          padding == o.padding &&
          width == o.width
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [background_color, border, border_color, border_radius, border_style, border_width, box_shadow, color, font_family, font_size, font_style, font_weight, height, margin, opacity, outline, outline_offset, padding, width].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_Click.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
