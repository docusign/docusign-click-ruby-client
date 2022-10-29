=begin
#DocuSign Click API

#DocuSign Click lets you capture consent to standard agreement terms with a single click: terms and conditions, terms of service, terms of use, privacy policies, and more. The Click API lets you include this customizable clickwrap solution in your DocuSign integrations.

OpenAPI spec version: v1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Click
  class ClickwrapVersion
    # 
    attr_accessor :clickwrap_version_id

    # 
    attr_accessor :created_time

    # 
    attr_accessor :data_fields

    # 
    attr_accessor :last_modified

    # 
    attr_accessor :last_modified_by

    # 
    attr_accessor :owner_user_id

    # 
    attr_accessor :require_reacceptance

    # 
    attr_accessor :scheduled_date

    attr_accessor :scheduled_reacceptance

    # 
    attr_accessor :status

    # 
    attr_accessor :version_id

    # 
    attr_accessor :version_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'clickwrap_version_id' => :'clickwrapVersionId',
        :'created_time' => :'createdTime',
        :'data_fields' => :'dataFields',
        :'last_modified' => :'lastModified',
        :'last_modified_by' => :'lastModifiedBy',
        :'owner_user_id' => :'ownerUserId',
        :'require_reacceptance' => :'requireReacceptance',
        :'scheduled_date' => :'scheduledDate',
        :'scheduled_reacceptance' => :'scheduledReacceptance',
        :'status' => :'status',
        :'version_id' => :'versionId',
        :'version_number' => :'versionNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'clickwrap_version_id' => :'String',
        :'created_time' => :'Object',
        :'data_fields' => :'Array<DataField>',
        :'last_modified' => :'Object',
        :'last_modified_by' => :'String',
        :'owner_user_id' => :'String',
        :'require_reacceptance' => :'BOOLEAN',
        :'scheduled_date' => :'Object',
        :'scheduled_reacceptance' => :'ClickwrapScheduledReacceptance',
        :'status' => :'String',
        :'version_id' => :'String',
        :'version_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'clickwrapVersionId')
        self.clickwrap_version_id = attributes[:'clickwrapVersionId']
      end

      if attributes.has_key?(:'createdTime')
        self.created_time = attributes[:'createdTime']
      end

      if attributes.has_key?(:'dataFields')
        if (value = attributes[:'dataFields']).is_a?(Array)
          self.data_fields = value
        end
      end

      if attributes.has_key?(:'lastModified')
        self.last_modified = attributes[:'lastModified']
      end

      if attributes.has_key?(:'lastModifiedBy')
        self.last_modified_by = attributes[:'lastModifiedBy']
      end

      if attributes.has_key?(:'ownerUserId')
        self.owner_user_id = attributes[:'ownerUserId']
      end

      if attributes.has_key?(:'requireReacceptance')
        self.require_reacceptance = attributes[:'requireReacceptance']
      end

      if attributes.has_key?(:'scheduledDate')
        self.scheduled_date = attributes[:'scheduledDate']
      end

      if attributes.has_key?(:'scheduledReacceptance')
        self.scheduled_reacceptance = attributes[:'scheduledReacceptance']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'versionId')
        self.version_id = attributes[:'versionId']
      end

      if attributes.has_key?(:'versionNumber')
        self.version_number = attributes[:'versionNumber']
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
          clickwrap_version_id == o.clickwrap_version_id &&
          created_time == o.created_time &&
          data_fields == o.data_fields &&
          last_modified == o.last_modified &&
          last_modified_by == o.last_modified_by &&
          owner_user_id == o.owner_user_id &&
          require_reacceptance == o.require_reacceptance &&
          scheduled_date == o.scheduled_date &&
          scheduled_reacceptance == o.scheduled_reacceptance &&
          status == o.status &&
          version_id == o.version_id &&
          version_number == o.version_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [clickwrap_version_id, created_time, data_fields, last_modified, last_modified_by, owner_user_id, require_reacceptance, scheduled_date, scheduled_reacceptance, status, version_id, version_number].hash
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
