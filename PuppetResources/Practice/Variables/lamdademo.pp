each($facts['partitions']) | $key, $value | {
  notify {
    "${key} =  ${value['size']}" :
  }
}

each($facts['partitions']) | $key, $value | {
  if($value['mount']) {
    notify {
      "${key} =  ${value['size']}" :
    }

  }

}
