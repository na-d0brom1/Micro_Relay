$exe = "$PSScriptRoot\SoundVolumeView.exe"

$mic_1 = "{0.0.1.00000000}.{c7c53a5a-d610-499a-9095-4749925e8746}"
$mic_2 = "{0.0.1.00000000}.{e63ba868-6d8a-4fc9-b1b1-91c4d134dbbf}"

# выключаем обычный микрофон
& $exe /Disable $mic_1

# включаем гарнитуру
& $exe /Enable $mic_2

# делаем её основной
& $exe /SetDefault $mic_2 0
& $exe /SetDefault $mic_2 1
& $exe /SetDefault $mic_2 2