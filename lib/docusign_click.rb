=begin
#DocuSign Click API

#Elastic signing (also known as DocuSign Click)  lets you capture consent to standard agreement terms with a single click: terms and conditions, terms of service, terms of use, privacy policies, and more. The Click API lets you include this customizable elastic template solution in your DocuSign integrations.

OpenAPI spec version: v1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

# Common files
require 'docusign_click/client/api_client'
require 'docusign_click/client/api_error'
require 'docusign_click/version'
require 'docusign_click/configuration'

# Client Files
require 'docusign_click/client/auth/oauth'

# Models
require 'docusign_click/models/agree_button_styles'
require 'docusign_click/models/agreement_statement_styles'
require 'docusign_click/models/base_agree_button_styles'
require 'docusign_click/models/bulk_clickwrap_request'
require 'docusign_click/models/clickwrap_agreements_response'
require 'docusign_click/models/clickwrap_delete_response'
require 'docusign_click/models/clickwrap_request'
require 'docusign_click/models/clickwrap_scheduled_reacceptance'
require 'docusign_click/models/clickwrap_transfer_request'
require 'docusign_click/models/clickwrap_version'
require 'docusign_click/models/clickwrap_version_delete_response'
require 'docusign_click/models/clickwrap_version_response'
require 'docusign_click/models/clickwrap_version_summary_response'
require 'docusign_click/models/clickwrap_versions_delete_response'
require 'docusign_click/models/clickwrap_versions_paged_response'
require 'docusign_click/models/clickwrap_versions_response'
require 'docusign_click/models/clickwraps_delete_response'
require 'docusign_click/models/container_styles'
require 'docusign_click/models/data_field'
require 'docusign_click/models/disclosure_link_styles'
require 'docusign_click/models/display_settings'
require 'docusign_click/models/document'
require 'docusign_click/models/document_link_styles'
require 'docusign_click/models/document_link_styles_focus'
require 'docusign_click/models/error_details'
require 'docusign_click/models/header_styles'
require 'docusign_click/models/service_information'
require 'docusign_click/models/service_version'
require 'docusign_click/models/user_agreement_request'
require 'docusign_click/models/user_agreement_response'
require 'docusign_click/models/user_agreement_response_style'

# APIs
require 'docusign_click/api/accounts_api'

module DocuSign_Click
  class << self
    # Customize default settings for the SDK using block.
    #   DocuSign_Click.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end