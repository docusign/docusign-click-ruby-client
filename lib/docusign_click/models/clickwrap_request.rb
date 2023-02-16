=begin
#DocuSign Click API

#Elastic signing (also known as DocuSign Click)  lets you capture consent to standard agreement terms with a single click: terms and conditions, terms of service, terms of use, privacy policies, and more. The Click API lets you include this customizable elastic template solution in your DocuSign integrations.

OpenAPI spec version: v1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Click
  # Request body for working with clickwrap.
  class ClickwrapRequest
    # The name of the clickwrap. This field is required.
    attr_accessor :clickwrap_name

    # An array of data fields available to be inserted into the documents.
    attr_accessor :data_fields

    # Display settings for the clickwrap. This object is required.
    attr_accessor :display_settings

    # An array of documents. This object is required.
    attr_accessor :documents

    # Specifies whether `scheduledReacceptance` and `scheduledDate` should be cleared. May be one of:  - `\"scheduledReacceptance\"` - `\"scheduledDate\"` - `\"scheduledReacceptance,scheduledDate\"` 
    attr_accessor :fields_to_null

    # Not used.
    attr_accessor :is_major_version

    # When **true,** indicates that the clickwrap is shared with one or more users in the account.
    attr_accessor :is_shared

    # Not used.
    attr_accessor :name

    # When **true,** requires signers who have previously agreed to this clickwrap to sign again. The version number is incremented.
    attr_accessor :require_reacceptance

    # The time and date when this clickwrap is activated.
    attr_accessor :scheduled_date

    # Specifies the interval between reacceptances in days, weeks, months, or years.
    attr_accessor :scheduled_reacceptance

    # Clickwrap status. This property is read-only. Possible values:  - `active` - `inactive` - `deleted`
    attr_accessor :status

    # Not used. To update the user ID of a clickwrap, use the [updateClickwrap](/docs/click-api/reference/accounts/clickwraps/updateclickwrap/) endpoint.
    attr_accessor :transfer_from_user_id

    # Not used. To update the user ID of a clickwrap, use the [updateClickwrap](/docs/click-api/reference/accounts/clickwraps/updateclickwrap/) endpoint.
    attr_accessor :transfer_to_user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'clickwrap_name' => :'clickwrapName',
        :'data_fields' => :'dataFields',
        :'display_settings' => :'displaySettings',
        :'documents' => :'documents',
        :'fields_to_null' => :'fieldsToNull',
        :'is_major_version' => :'isMajorVersion',
        :'is_shared' => :'isShared',
        :'name' => :'name',
        :'require_reacceptance' => :'requireReacceptance',
        :'scheduled_date' => :'scheduledDate',
        :'scheduled_reacceptance' => :'scheduledReacceptance',
        :'status' => :'status',
        :'transfer_from_user_id' => :'transferFromUserId',
        :'transfer_to_user_id' => :'transferToUserId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'clickwrap_name' => :'String',
        :'data_fields' => :'Array<DataField>',
        :'display_settings' => :'DisplaySettings',
        :'documents' => :'Array<Document>',
        :'fields_to_null' => :'String',
        :'is_major_version' => :'BOOLEAN',
        :'is_shared' => :'BOOLEAN',
        :'name' => :'String',
        :'require_reacceptance' => :'BOOLEAN',
        :'scheduled_date' => :'Object',
        :'scheduled_reacceptance' => :'ClickwrapScheduledReacceptance',
        :'status' => :'String',
        :'transfer_from_user_id' => :'String',
        :'transfer_to_user_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'clickwrapName')
        self.clickwrap_name = attributes[:'clickwrapName']
      end

      if attributes.has_key?(:'dataFields')
        if (value = attributes[:'dataFields']).is_a?(Array)
          self.data_fields = value
        end
      end

      if attributes.has_key?(:'displaySettings')
        self.display_settings = attributes[:'displaySettings']
      end

      if attributes.has_key?(:'documents')
        if (value = attributes[:'documents']).is_a?(Array)
          self.documents = value
        end
      end

      if attributes.has_key?(:'fieldsToNull')
        self.fields_to_null = attributes[:'fieldsToNull']
      end

      if attributes.has_key?(:'isMajorVersion')
        self.is_major_version = attributes[:'isMajorVersion']
      end

      if attributes.has_key?(:'isShared')
        self.is_shared = attributes[:'isShared']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
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

      if attributes.has_key?(:'transferFromUserId')
        self.transfer_from_user_id = attributes[:'transferFromUserId']
      end

      if attributes.has_key?(:'transferToUserId')
        self.transfer_to_user_id = attributes[:'transferToUserId']
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
          clickwrap_name == o.clickwrap_name &&
          data_fields == o.data_fields &&
          display_settings == o.display_settings &&
          documents == o.documents &&
          fields_to_null == o.fields_to_null &&
          is_major_version == o.is_major_version &&
          is_shared == o.is_shared &&
          name == o.name &&
          require_reacceptance == o.require_reacceptance &&
          scheduled_date == o.scheduled_date &&
          scheduled_reacceptance == o.scheduled_reacceptance &&
          status == o.status &&
          transfer_from_user_id == o.transfer_from_user_id &&
          transfer_to_user_id == o.transfer_to_user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [clickwrap_name, data_fields, display_settings, documents, fields_to_null, is_major_version, is_shared, name, require_reacceptance, scheduled_date, scheduled_reacceptance, status, transfer_from_user_id, transfer_to_user_id].hash
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
