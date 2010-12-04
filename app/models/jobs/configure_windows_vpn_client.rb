class ConfigureWindowsVPNClient

  @queue=:windows

  def self.perform(id, client_key, client_cert, ca_cert)
    server = WindowsServer.find(id)
    server.configure_openvpn_client(client_key, client_cert, ca_cert)
  end

end
