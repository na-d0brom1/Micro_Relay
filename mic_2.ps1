$exe = "$PSScriptRoot\SoundVolumeView.exe"

$mic_1 = "First Micro ID"
$mic_2 = "Second Micro ID"

# выключаем обычный микрофон
& $exe /Disable $mic_1

# включаем гарнитуру
& $exe /Enable $mic_2

# делаем её основной
& $exe /SetDefault $mic_2 0
& $exe /SetDefault $mic_2 1
& $exe /SetDefault $mic_2 2
