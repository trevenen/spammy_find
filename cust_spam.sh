while true; do
echo "Get email queues sorted."
echo "sudo exim -bp | exiqsumm -s -c"
read -p "Enter domain:" domain
if test "$domain"="$domain"
then
clear
echo -e "sudo exim -bp | exiqsumm -s -c"
echo "https://somedc.com/cgi/admin/user/cpanel/$domain"
echo -e  "Email Body and Header commands"
echo -e "for i in \$(sudo exim -bp | grep  $domain | head -1 | awk '{print \$3}');do sudo exim -Mvh \$i; sudo exim -Mvb \$i;done"
echo -e "for i in \$(sudo exim -bp | grep -B1 $domain | head -1 | awk '{print \$3}');do sudo exim -Mvh \$i; sudo exim -Mvb \$i;done"
echo -e "sudo exim -bp | grep -B1 $domain | grep 1Y | awk '{print \$3}' | xargs sudo exim -Mrm"
echo -e "sudo service exim restart"
echo -e ""
echo "---------SPAMMING/HACKED--------------
Customer can secure his website files from malware infections by following the steps given below:
- secure/change your all mailbox passwords immediately.
- remove un-wanted mailboxes from your account.
- generate a strong password combination for account, FTP, database and mailboxes.
- scan local computer with good antivirus, antispyware programs and clean bad programs.
- keep the software up-to-date with vendors/developers, and seek their support/forums for any known vulnerabilities/fixes/workarounds available.
- If customer is using third party themes/templates/plugins, he must be sure to use secured themes, plugins and templates.
Additionally, if they are using any old scripts in their website, they may enable remote attackers to exploit the outdated code in an effort to alter the contents of a specific file. Please make sure that all of their scripts and open source applications are of the latest version available and include all available patches to protect against any known vulnerabilities.
---------SPAMMING/HACKED--------------"
else
exit
fi;
done
