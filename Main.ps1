add-type -AssemblyName System.Windows.Forms

# カーソルの初期位置を取得
$initialPosition = [System.Windows.Forms.Cursor]::Position

# カーソルの位置が変化しないか監視するループ
while ($true) {
    # 4分間待機
    Start-Sleep -Seconds (4 * 60)

    # カーソルの現在位置を取得
    $currentPosition = [System.Windows.Forms.Cursor]::Position

    # カーソルの位置が変化しなかった場合にカーソルを1ピクセル右に移動
    if ($currentPosition.X -eq $initialPosition.X -and $currentPosition.Y -eq $initialPosition.Y) {
        # 新しい位置を計算
        $newX = $currentPosition.X + 1
        $newPosition = New-Object System.Drawing.Point($newX, $currentPosition.Y)
        [System.Windows.Forms.Cursor]::Position = $newPosition
    }

    # カーソルの現在位置を新たな初期位置として設定
    $initialPosition = $currentPosition
}