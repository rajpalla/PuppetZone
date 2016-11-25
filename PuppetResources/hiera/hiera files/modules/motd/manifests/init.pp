class motd (
  $message = "Welcome",
) {
    file { '/etc/motd':
      ensure  => 'file',
      content => $message,
    }
}
