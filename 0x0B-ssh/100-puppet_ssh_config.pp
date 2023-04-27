# Set the config of a ssh_file
class ssh_config {
  ssh::client::config { '/etc/ssh/ssh_config':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    match  => [
      {
        # Configure the host you want to connect to without a password
        host     => 'your.server.com',
        options  => {
          'IdentityFile' => '~/.ssh/school',
          'PasswordAuthentication' => 'no',
        },
      },
    ],
  }
}
