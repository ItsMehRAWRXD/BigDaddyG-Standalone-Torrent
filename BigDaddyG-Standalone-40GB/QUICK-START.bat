@echo off
echo ╔═══════════════════════════════════════════════════════════════════╗
echo ║         BIGDADDYG 40GB MODEL - QUICK START                        ║
echo ╚═══════════════════════════════════════════════════════════════════╝
echo.
echo Choose installation method:
echo.
echo 1. Install with Ollama (Recommended)
echo 2. Use with LM Studio
echo 3. Integrate with BigDaddyG IDE
echo 4. Exit
echo.
set /p choice="Enter choice (1-4): "

if "%choice%"=="1" goto ollama
if "%choice%"=="2" goto lmstudio
if "%choice%"=="3" goto bigdaddyg
goto end

:ollama
echo.
echo 📥 Installing with Ollama...
echo.
echo Step 1: Make sure Ollama is installed
echo   Download from: https://ollama.ai/
echo.
echo Step 2: Copy model file
copy bigdaddyg-40gb-model.gguf "%USERPROFILE%\.ollama\models\blobs\"
echo.
echo Step 3: Create Modelfile
echo FROM ./bigdaddyg-40gb-model.gguf > Modelfile
echo.
echo Step 4: Import into Ollama
ollama create bigdaddyg:40gb -f Modelfile
echo.
echo ✅ Done! Test with:
echo    ollama run bigdaddyg:40gb
pause
goto end

:lmstudio
echo.
echo 📥 Use with LM Studio:
echo 1. Open LM Studio
echo 2. File → Import Model
echo 3. Select bigdaddyg-40gb-model.gguf
echo 4. Start chatting!
pause
goto end

:bigdaddyg
echo.
echo 🚀 Integrating with BigDaddyG IDE:
echo.
echo Step 1: Clone BigDaddyG IDE
git clone https://github.com/ItsMehRAWRXD/BigDaddyG-IDE.git
echo.
echo Step 2: Copy model
mkdir BigDaddyG-IDE\models
copy bigdaddyg-40gb-model.gguf BigDaddyG-IDE\models\
echo.
echo Step 3: Install and run
cd BigDaddyG-IDE
call npm install
call npm start
pause
goto end

:end
