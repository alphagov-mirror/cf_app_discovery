class CfAppDiscovery
  def self.run(api_endpoint:, uaa_endpoint:, uaa_username:, uaa_password:, paas_domain:, targets_path:)
    auth = Auth.new(
      uaa_endpoint: uaa_endpoint,
      uaa_username: uaa_username,
      uaa_password: uaa_password,
    )

    client = Client.new(
      api_endpoint: api_endpoint,
      api_token: auth.access_token,
    )

    parser = Parser.new(client.apps)

    template = Template.new(
      targets_path: targets_path,
      targets: parser.targets,
      paas_domain: paas_domain,
    )

    template.write_all
  end
end
