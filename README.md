# gitconfig-hooks

1. Create a global gitconfig folder, then create folder hooks
```
mkdir ~/gitconfig
mkdir ~/gitconfig/hooks
```

Note: 
- Windows: create gitconfig folder in path C:\User\\<username>

2. Copy file pre-commit to folder gitconfig/hooks from 1
```
cp pre-commit.sh ~/gitconfig/hooks/pre-commit
```

Note: 
- Windows: C:\User\\<username>\gitconfig/hooks
3. Copy folder pre-commit.d folder to folder gitconfig/hooks from 1
```
cp -r pre-commit.d ~/gitconfig/hooks
```
Note: 
- Windows: C:\User\<username>\gitconfig\hooks

4. Give permission execute to pre-commit file
```
chmod +x ~/gitconfig/hooks/pre-commit
```
Note:
- Windows: No need to process this step
5. Add hook path to git global
```
git config --global core.hooksPath ~/gitconfig/hooks
```

Note:
- Windows:
  ```
  git config --global core.hooksPath C:\User\<username>\gitconfig\hooks
  ```
6. Validate with your repository