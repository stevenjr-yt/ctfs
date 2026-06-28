Git Repository Forensics Challenge
=====================================
A developer accidentally committed sensitive data, then tried to remove it.
But git never truly deletes objects...

Tools: git, git cat-file, git log, git fsck

Hints:
- Run: git fsck --lost-found  (finds dangling/unreachable objects)
- Run: git log --all --oneline --graph  (see all commits)
- Check ORIG_HEAD: cat .git/ORIG_HEAD  (this might have the dangling commit SHA)
- Then: git cat-file -p <commit_sha>  (inspect the commit)
- Then: git cat-file -p <tree_sha>    (inspect the tree)
- Then: git cat-file blob <blob_sha>  (read the file contents!)

The deleted commit SHA starts with: 4f0fa6cc...
