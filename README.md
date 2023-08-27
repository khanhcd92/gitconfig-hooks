# gitconfig-hooks

1. Create a global gitconfig folder
```
mkdir ~/gitconfig/hooks
```

2. Copy pre-commit file to path ~/gitconfig/hooks
```
cp pre-commit.sh ~/gitconfig/hooks/pre-commit
```
3. Create a folder pre-commit.d in path ~/gitconfig/hooks
```
mkdir ~/gitconfig/hooks/pre-commit.d
```
4. Copy git_validation_email.sh file to path ~/gitconfig/hooks/pre-commit.d
```
cp pre-commit.d/git_validation_email.sh ~/gitconfig/hooks/pre-commit.d
```
5. Give permission execute to pre-commit file
```
chmod +x ~/gitconfig/hooks/pre-commit
```
6. Add hook path to git global
```
git config --global core.hooksPath ~/gitconfig/hooks
```
7. Validate with your repository