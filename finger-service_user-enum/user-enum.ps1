cat /usr/share/seclists/Usernames/Names/names.txt | ForEach-Object -Parallel { $user = $_ ; finger $user@10.10.10.76 | grep -E '\w{1,}.*<.*>' >> "$PWD/finger.txt" }
