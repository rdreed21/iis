powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
  action :run
end

service 'w3svc' do
  action [:enable, :start]
end

file 'c:\inetpub\wwwroot\Default.htm' do
  content '<html>
  <body>
    <h1>hello world</h1>
  </body>
</html>'
end