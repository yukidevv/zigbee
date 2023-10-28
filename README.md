# Zigbee(カーソルモニタリングスクリプト)

このPowerShellスクリプトは、カーソルの位置を監視し、  
カーソルが一定時間（デフォルトは4分）動かない場合に、カーソルを1ピクセル右に移動させます。

# 使用方法
スタートアップの自動起動を想定。  
スタートアップフォルダ内に新規ショートカットを以下で作成  
```
conhost --headless powershell.exe -nop  -win hidden -noni -f %USERPROFILE%\Desktop\zigbee\Main.ps1
```
※Desktop配下を想定しているので"-f"部分は適宜変更してください。  

# カスタマイズ
待機時間を調整するには、Start-Sleep -Seconds の引数を変更してください。  
デフォルトでは4分（4 * 60秒）です。  

カーソルの移動距離を調整するには、$newX の値を変更してください。