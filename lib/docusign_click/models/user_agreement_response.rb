=begin
#DocuSign Click API

#DocuSign Click lets you capture consent to standard agreement terms with a single click: terms and conditions, terms of service, terms of use, privacy policies, and more. The Click API lets you include this customizable clickwrap solution in your DocuSign integrations.

OpenAPI spec version: v1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Click
  class UserAgreementResponse
    # 
    attr_accessor :account_id

    # 
    attr_accessor :agreed_on

    # 
    attr_accessor :agreement_id

    # 
    attr_accessor :agreement_url

    # 
    attr_accessor :clickwrap_id

    # 
    attr_accessor :client_user_id

    # 
    attr_accessor :consumer_disclosure_html

    # 
    attr_accessor :created_on

    # 
    attr_accessor :declined_on

    # 
    attr_accessor :documents

    # 
    attr_accessor :metadata

    attr_accessor :settings

    # 
    attr_accessor :status

    # 
    attr_accessor :version

    # 
    attr_accessor :version_id

    # 
    attr_accessor :version_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'accountId',
        :'agreed_on' => :'agreedOn',
        :'agreement_id' => :'agreementId',
        :'agreement_url' => :'agreementUrl',
        :'clickwrap_id' => :'clickwrapId',
        :'client_user_id' => :'clientUserId',
        :'consumer_disclosure_html' => :'consumerDisclosureHtml',
        :'created_on' => :'createdOn',
        :'declined_on' => :'declinedOn',
        :'documents' => :'documents',
        :'metadata' => :'metadata',
        :'settings' => :'settings',
        :'status' => :'status',
        :'version' => :'version',
        :'version_id' => :'versionId',
        :'version_number' => :'versionNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'agreed_on' => :'Object',
        :'agreement_id' => :'String',
        :'agreement_url' => :'String',
        :'clickwrap_id' => :'String',
        :'client_user_id' => :'String',
        :'consumer_disclosure_html' => :'String',
        :'created_on' => :'Object',
        :'declined_on' => :'Object',
        :'documents' => :'Array<Document>',
        :'metadata' => :'String',
        :'settings' => :'DisplaySettings',
        :'status' => :'String',
        :'version' => :'String',
        :'version_id' => :'String',
        :'version_number' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'agreedOn')
        self.agreed_on = attributes[:'agreedOn']
      end

      if attributes.has_key?(:'agreementId')
        self.agreement_id = attributes[:'agreementId']
      end

      if attributes.has_key?(:'agreementUrl')
        self.agreement_url = attributes[:'agreementUrl']
      end

      if attributes.has_key?(:'clickwrapId')
        self.clickwrap_id = attributes[:'clickwrapId']
      end

      if attributes.has_key?(:'clientUserId')
        self.client_user_id = attributes[:'clientUserId']
      end

      if attributes.has_key?(:'consumerDisclosureHtml')
        self.consumer_disclosure_html = attributes[:'consumerDisclosureHtml']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'declinedOn')
        self.declined_on = attributes[:'declinedOn']
      end

      if attributes.has_key?(:'documents')
        if (value = attributes[:'documents']).is_a?(Array)
          self.documents = value
        end
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'settings')
        self.settings = attributes[:'settings']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
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
          account_id == o.account_id &&
          agreed_on == o.agreed_on &&
          agreement_id == o.agreement_id &&
          agreement_url == o.agreement_url &&
          clickwrap_id == o.clickwrap_id &&
          client_user_id == o.client_user_id &&
          consumer_disclosure_html == o.consumer_disclosure_html &&
          created_on == o.created_on &&
          declined_on == o.declined_on &&
          documents == o.documents &&
          metadata == o.metadata &&
          settings == o.settings &&
          status == o.status &&
          version == o.version &&
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
      [account_id, agreed_on, agreement_id, agreement_url, clickwrap_id, client_user_id, consumer_disclosure_html, created_on, declined_on, documents, metadata, settings, status, version, version_id, version_number].hash
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
