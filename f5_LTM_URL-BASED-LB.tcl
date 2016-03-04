when HTTP_REQUEST {
  set uri_info [strng tolower [HTTP::uri]]
  switch -glob $uri_info {
    "/touch" {
      HTTP::redirect "https://[HTTP::host][HTTP::uri]/"
    }
    "/touch/*" -
    /cis*" {
      pool pool_9081
    }
    "/Dispatch*" {
      pool pool_9085
    }
  }
}
