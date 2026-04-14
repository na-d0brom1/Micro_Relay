$exe = "$PSScriptRoot\SoundVolumeView.exe"

$mic_1 = "First Micro"
$mic_2 = "Second Micro"

# выключаем гарнитуру
& $exe /Disable $mic_2

# включаем обычный микрофон
& $exe /Enable $mic_1

# делаем его основным
& $exe /SetDefault $mic_1 0
& $exe /SetDefault $mic_1 1
& $exe /SetDefault $mic_1 2
