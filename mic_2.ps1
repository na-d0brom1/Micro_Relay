$exe = "$PSScriptRoot\SoundVolumeView.exe"

$mic_1 = "First Micro ID"
$mic_2 = "Second Micro ID"

# выключаем микрофон
& $exe /Disable $mic_1

# включаем микрофон
& $exe /Enable $mic_2

# делаем основным
& $exe /SetDefault $mic_2 0
& $exe /SetDefault $mic_2 1
& $exe /SetDefault $mic_2 2
