require 'docusign_click'
require 'base64'
require 'uri'
require 'addressable/uri'

describe 'DocuSign Ruby Client Tests' do
    def login
        begin
            puts "1"
            if $api_client.nil?
                configuration = DocuSign_Click::Configuration.new
                configuration.host = $host

                puts "2"
                $api_client = DocuSign_Click::ApiClient.new(configuration)
                puts "3"
                $api_client.set_oauth_base_path(DocuSign_Click::OAuth::DEMO_OAUTH_BASE_PATH)
                puts "4"
                # $api_client.get_authorization_uri($integrator_key,'signature',$return_url,'code')
                # $api_client.request_jwt_application_token($integrator_key,File.read($private_key_filename),$expires_in_seconds,'' )
                # code = 'code_here'
                # $api_client.generate_access_token($integrator_key,$secret,code)
            end

        decode_base64_content = Base64.decode64(ENV["PRIVATE_KEY"])
        puts "5"
         File.open($private_key_filename, "wb") do |f|
           f.write(decode_base64_content)
         end
         puts "6"
         token_obj = $api_client.request_jwt_user_token(ENV["INTEGRATOR_KEY_JWT"],ENV["USER_ID"], File.read($private_key_filename),$expires_in_seconds,$scopes)
         user_info = $api_client.get_user_info(token_obj.access_token)
         puts "7"
         
        if !user_info.nil?
            user_info.accounts.each do |account|
                if account.is_default == "true"
                    $base_uri = account.base_uri
                    $account_id = account.account_id

                    # IMPORTANT: Use the base url from the login account to instantiant the api_client
                    base_uri = Addressable::URI.parse($base_uri)
                    $api_client.set_base_path( "%s://%s/clickapi" % [base_uri.scheme, base_uri.host])

                    return account
                end
            end
        end
        rescue => e
          puts "Error during processing: #{$!}"
          # puts "Backtrace:\n\t#{e.backtrace.join("\n\t")}"
        end

        return nil
    end

    def create_api_client
        if $api_client.nil?
            self.login()
        end

        return $api_client
    end

  before(:all) do
    # run before each test
    $host = "https://demo.docusign.net/clickapi"

      $expires_in_seconds = 3600 #1 hour
      $auth_server = 'account-d.docusign.com'
      $private_key_filename = '../docs/private.pem'
    
    $recipient_name = "Ruby SDK"

    # Required for embedded signing url
    $client_user_id = '1234'
    $return_url = 'https://developers.docusign.com/'
    $authentication_method = 'email'
        
    $template_id = ''
    $envelope_id = nil

    $base_uri = nil
    $account_id = nil
    $api_client = nil
    
    $scopes = ["click.manage", "click.send", "signature", "impersonation"]
  end

  after do
    # run after each test
  end

  describe DocuSign_Click::OAuth do
      describe '.login' do
          context 'given correct credentials' do
              it 'return Account' do
                  account = login()

                if !account.nil?
                    $base_uri = account.base_uri
                    $account_id = account.account_id
                end

                expect($account_id).to be_truthy
                expect($base_uri).to be_truthy
              end
          end
      end
  end

  describe DocuSign_Click::AccountsApi do
      describe '.get' do
          context 'clickwrap' do
              it 'successfully returns clickwrap version' do
                api_client = create_api_client()
                accounts_api = DocuSign_Click::AccountsApi.new(api_client)

                options = DocuSign_Click::GetClickwrapsOptions.new

                clickwrap_versions_response = accounts_api.get_clickwraps($account_id, options)

                expect(clickwrap_versions_response).to be_truthy
                if(!clickwrap_versions_response.nil?)
                    if(!clickwrap_versions_response.clickwraps.nil?)
                        expect(clickwrap_versions_response.clickwraps.length > 0).to be_truthy
                    end
                end
              end
          end
      end
end
end