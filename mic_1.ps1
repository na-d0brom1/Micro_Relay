$exe = "$PSScriptRoot\SoundVolumeView.exe"

$mic_1 = "First Micro ID"
$mic_2 = "Second Micro ID"

# выключаем микрофон
& $exe /Disable $mic_2

# включаем микрофон
& $exe /Enable $mic_1

# делаем его основным
& $exe /SetDefault $mic_1 0
& $exe /SetDefault $mic_1 1
& $exe /SetDefault $mic_1 2
