#! /bin/bash
authconfig --enableshadow --enablelocauthorize --enableldapauth --ldapserver='ldapserver' --ldapbase='dc=edt,dc=org' --enablemkhomedir --updateall
