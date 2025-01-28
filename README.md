
# Deploying My Portfolio Website on GitHub Pages

This document contains the steps to build and deploy a Flutter web app to GitHub Pages. Follow these instructions whenever you want to make changes to your portfolio website and push the new build to GitHub Pages.


## Steps to Update and Deploy a New Build

### 1. **Make Your Changes in Flutter**

Before you deploy your website, make sure that your portfolio website is updated with all the changes you want to show.

1. Open your Flutter project.
2. Modify the website as needed.

### 2. **Build the Web Version of Your App**

Once you're ready to deploy your changes, you need to build the web version of your Flutter app.

Run the following command in your terminal:

```bash
flutter build web --release
```

This will generate a production-ready version of your Flutter app in the `build/web` directory.

---

### 3. **Switch to the `gh-pages` Branch**

Make sure you're on the correct branch where the web build should be deployed (the `gh-pages` branch):

```bash
git checkout gh-pages
```

This switches you to the `gh-pages` branch, where we will deploy the new build.

---

### 4. **Remove Old Files (Optional)**

If you want to start fresh and make sure only the latest build is deployed, you can remove any old files:

```bash
git rm -rf .
```

This removes all files from the `gh-pages` branch. You can skip this step if you're okay with keeping the previous files.

---

### 5. **Copy the New Build Files to `gh-pages` Branch**

Copy the newly built files from the `build/web` directory into the root of your `gh-pages` branch.

```bash
cp -r build/web/* .
```

This will copy everything from `build/web/` into your `gh-pages` branch.

---

### 6. **Commit the Changes**

Now that the new build is copied into the `gh-pages` branch, you need to stage and commit the changes.

```bash
git add .
git commit -m "Deploy updated Flutter web app"
```

---

### 7. **Push the `gh-pages` Branch**

Finally, push the `gh-pages` branch to GitHub to update the live website.

```bash
git push origin gh-pages --force
```

The `--force` flag is used to overwrite any previous contents in the `gh-pages` branch (since you're deploying new content).

---

### 8. **Verify the Changes**

After pushing the new build to GitHub, the changes will be live on your GitHub Pages website.

You can visit your portfolio site at:

```
https://am333n.github.io/my_portfolio
```

---

## Additional Information

- **GitHub Pages URL:**  
   `https://am333n.github.io/my_portfolio`

- **To switch back to the `main` branch after deployment:**  
   ```bash
   git checkout main
   ```

- **To make any changes in the future, simply repeat the above steps**:  
   1. Make your changes in Flutter.
   2. Build the web version.
   3. Switch to `gh-pages`.
   4. Copy the new build.
   5. Commit and push.

---

## Troubleshooting

- **If you're getting an error about "non-fast-forward" or "divergent branches":**  
   Follow these steps:
   ```bash
   git pull origin gh-pages --allow-unrelated-histories
   ```

- **If the site is not updating after pushing changes:**  
   Clear your browser cache or try using an incognito window to see the latest version.

---

By following these steps, you can easily update your portfolio website whenever you make changes in the future!

```

---

### What to Do with This File:

1. **Save it in your repository**: Save this README in the root directory of your repository to keep track of the steps for deployment.

2. **Use it every time you need to deploy**: Whenever you make changes to your Flutter website, refer to this README and follow the steps to deploy the new build to GitHub Pages.

3. **Commit the README**: Don't forget to commit this README file, so it stays in the repository for future reference:
   
   ```bash
   git add README.md
   git commit -m "Added deployment instructions for GitHub Pages"
   git push origin main
   ```

Now, with this guide, you'll always have a clear path for deploying new versions of your portfolio website! Let me know if you need any adjustments. 😊