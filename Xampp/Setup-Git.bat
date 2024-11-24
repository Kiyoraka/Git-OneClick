@echo off
echo Setting up Git repository for XAMPP project...

:: Create .gitignore file
echo # XAMPP Project .gitignore > .gitignore

:: Common XAMPP ignores
echo # XAMPP specific files >> .gitignore
echo .htaccess >> .gitignore
echo php.ini >> .gitignore
echo composer.phar >> .gitignore

:: Temporary and Cache files
echo # Temporary files >> .gitignore
echo /temp/ >> .gitignore
echo /tmp/ >> .gitignore
echo *.tmp >> .gitignore
echo *.temp >> .gitignore
echo /cache/ >> .gitignore

:: Common web development ignores
echo # Development folders and files >> .gitignore
echo /vendor/ >> .gitignore
echo /node_modules/ >> .gitignore
echo .env >> .gitignore
echo .env.local >> .gitignore
echo .env.*.local >> .gitignore
echo .vscode/ >> .gitignore
echo .idea/ >> .gitignore
echo .DS_Store >> .gitignore
echo Thumbs.db >> .gitignore

:: Common file types to ignore
echo # Common file types to ignore >> .gitignore
echo *.log >> .gitignore
echo *.bak >> .gitignore
echo *.swp >> .gitignore
echo *.swo >> .gitignore
echo error_log >> .gitignore
echo debug.log >> .gitignore

:: Common media and large file types
echo # Media and large files >> .gitignore
echo *.mp4 >> .gitignore
echo *.mov >> .gitignore
echo *.avi >> .gitignore
echo *.zip >> .gitignore
echo *.rar >> .gitignore
echo *.7z >> .gitignore
echo uploads/ >> .gitignore
echo /assets/uploads/ >> .gitignore
echo /public/uploads/ >> .gitignore

:: Database files
echo # Database files >> .gitignore
echo *.sql >> .gitignore
echo *.sqlite >> .gitignore
echo phpmyadmin/ >> .gitignore

:: Initialize git repository
git init

:: Create README.md
echo # Project Title > README.md
echo. >> README.md
echo ## Description >> README.md
echo Brief description of your web application... >> README.md
echo. >> README.md
echo ## Setup Instructions >> README.md
echo 1. Clone this repository >> README.md
echo 2. Place in xampp/htdocs directory >> README.md
echo 3. Import the database (if any) >> README.md
echo 4. Configure your local environment >> README.md
echo. >> README.md
echo ## Project Structure >> README.md
echo ```plaintext >> README.md
echo /assets         - Contains CSS, JS, images, and other static files >> README.md
echo /includes      - PHP includes files >> README.md
echo /config        - Configuration files >> README.md
echo /views         - View files >> README.md
echo /controllers   - Controller files >> README.md
echo /models        - Model files >> README.md
echo ``` >> README.md
echo. >> README.md
echo ## Requirements >> README.md
echo - PHP [version] >> README.md
echo - MySQL [version] >> README.md
echo - Apache [version] >> README.md
echo. >> README.md
echo ## Database Setup >> README.md
echo 1. Create a database named [your_database_name] >> README.md
echo 2. Import the SQL file from /database/[filename].sql >> README.md
echo. >> README.md
echo ## Configuration >> README.md
echo 1. Update database credentials in config/database.php >> README.md
echo 2. Configure base URL in config/config.php >> README.md

:: Remove cached files
git rm -r --cached .

:: Add all files respecting .gitignore
git add .

:: Initial commit
git commit -m "Initial project setup with XAMPP configuration"

:: Create main branch
git branch -M main

:: Prompt for GitHub repository URL
set /p repo_url="Enter your GitHub repository URL (e.g., https://github.com/username/repo.git): "

:: Add remote origin
git remote add origin %repo_url%

:: Push to GitHub
git push -u origin main

echo.
echo Repository setup complete!
echo.
echo Important Notes:
echo ----------------
echo 1. Update README.md with your project specific information
echo 2. Check .gitignore if you need to exclude additional files
echo 3. Make sure to update database credentials in your config files
echo 4. Don't forget to create and maintain documentation
echo.
echo Default ignored items include:
echo - Temporary files (/temp/, /tmp/, *.tmp)
echo - Development folders (.vscode/, .idea/, /vendor/, /node_modules/)
echo - Environment files (.env, .env.local)
echo - Media files (*.mp4, *.mov, uploads/)
echo - Database files (*.sql, phpmyadmin/)
echo - Log files (*.log, error_log)
echo.
pause