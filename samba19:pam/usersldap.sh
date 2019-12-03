#! /bin/bash
# @perecanet m06 2019-2020
# afegir usuaris ldap al samba
#################################################################################################
#obtenir usuaris ldap
llistaUsers=$(getent passwd | grep "^[^:]*:\*:")
#per cada un d'ells fer el smbpasswd
echo $llistaUsers
for user in $llistaUsers
do
        nom=$(echo $user | cut -d: -f1)
        echo $nom
        if [ $nom != 'Pou' -o $nom != 'Mas' ]
        then
                echo $nom
                #echo -e "$user\n$user" | smbpasswd -a $user
        fi
done

