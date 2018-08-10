# sudo cp limit.max* /Library/LaunchDaemons
# sudo chown root:wheel /Library/LaunchDaemons/limit.max*
# sudo launchctl load -w /Library/LaunchDaemons/limit.maxfiles.plist
# sudo launchctl load -w /Library/LaunchDaemons/limit.maxproc.plist

sudo nvram boot-args="serverperfmode=1 $(nvram boot-args 2>/dev/null | cut -f 2-)"
nvram boot-args #エラーがでなければパフォーマンスモード有効
