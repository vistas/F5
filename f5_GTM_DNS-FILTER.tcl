when DNS_REQUEST {
  set req [string tolower [DNS::question name]]
  if {$req  contains ".domain.ext" }{
     log local0. "ALLOW query: $req"
   }
  else {
     log local0. "DROP query: $req"
     drop
   }
}
