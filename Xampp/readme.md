# XAMPP Project Git Setup 🌐

This version is specifically designed for XAMPP projects, providing a comprehensive set of ignore patterns for common web development files and folders.

## Information 📜

The script will properly manage the following categories:

### XAMPP Specific Files 🔧
```gitignore
# XAMPP specific files
.htaccess
php.ini
composer.phar
```

### Temporary and Cache Files 📁
```gitignore
# Temporary files
/temp/
/tmp/
*.tmp
*.temp
/cache/
```

### Development Files 💻
```gitignore
# Development folders and files
/vendor/
/node_modules/
.env
.env.local
.env.*.local
.vscode/
.idea/
.DS_Store
Thumbs.db
```

### Common File Types 📄
```gitignore
# Common file types to ignore
*.log
*.bak
*.swp
*.swo
error_log
debug.log
```

### Media and Large Files 🎥
```gitignore
# Media and large files
*.mp4
*.mov
*.avi
*.zip
*.rar
*.7z
uploads/
/assets/uploads/
/public/uploads/
```

### Database Files 💾
```gitignore
# Database files
*.sql
*.sqlite
phpmyadmin/
```

## Explanation 📜

- The script automatically ignores common temporary files in any directory named `temp` or `tmp`
- Media files with extensions like `.mp4`, `.mov`, etc., will be ignored globally
- Database files (`.sql`, `.sqlite`) are ignored to prevent sensitive data from being committed
- Environment files (`.env`) are ignored to protect sensitive configuration
- Upload directories are ignored to prevent large binary files from bloating the repository
- Development environment files (`.vscode`, `.idea`) are ignored to keep the repository clean

## How to Customize 🛠️

1. To add additional folders to ignore, add a new line in the format:
   ```batch
   echo /your/folder/path/ >> .gitignore
   ```

2. To ignore specific file types, add a new line:
   ```batch
   echo *.file_extension >> .gitignore
   ```

3. To ignore a specific file:
   ```batch
   echo exact_file_name.ext >> .gitignore
   ```

## Examples of Custom Ignores 📝

```gitignore
# Ignore specific project folders
/project/secret/
/admin/backup/
/assets/private/

# Ignore specific file types
*.pdf
*.docx
*.psd

# Ignore specific files
sensitive_config.php
database_credentials.ini
api_keys.json
```

## Important Notes ⚠️

- All paths in .gitignore should use forward slashes (/) even on Windows
- Patterns starting with / match from the repository root
- Patterns ending with / match only directories
- Wildcards (* and ?) can be used for pattern matching
- Add comments with # to explain what's being ignored

## Tips for Best Practices 💡

1. Always keep sensitive data out of version control
2. Ignore build artifacts and compiled files
3. Don't ignore configuration templates
4. Keep your .gitignore organized with clear sections
5. Document any special ignore patterns specific to your project

Remember: You can always modify the .gitignore file manually after running the script if you need to add or remove specific patterns for your project needs.