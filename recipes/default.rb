script "pdf2json" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
  wget https://pdf2json.googlecode.com/files/pdf2json-0.68.tar.gz
  tar -zxf pdf2json-0.68.tar.gz
  cd pdf2json-0.68
  ./configure
  make
  make install
  EOH
end