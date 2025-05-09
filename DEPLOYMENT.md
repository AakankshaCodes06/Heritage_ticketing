# Tick It - Deployment Guide

## Deployment to Vercel

This guide will help you deploy the Tick It website to Vercel.

### Prerequisites

- [Vercel](https://vercel.com) account (you can sign up with your GitHub account)
- The project ZIP file (`tickit-deployment.zip`) that was created

### Deployment Steps

#### Option 1: Deploy via Vercel Dashboard

1. **Extract the ZIP file**
   - Extract `tickit-deployment.zip` to a local folder on your computer

2. **Create a new Git repository**
   - Initialize a Git repository in the extracted folder
   - Push the code to GitHub, GitLab, or Bitbucket

3. **Log in to Vercel**
   - Go to [vercel.com](https://vercel.com) and log in to your account

4. **Create a new project**
   - Click on "Add New Project" 
   - Import your Git repository
   - Vercel will detect that it's a Node.js project

5. **Configure project settings**
   - Framework Preset: Other
   - Build Command: `npm run build`
   - Output Directory: `dist`
   - Root Directory: `./` (leave as default)

6. **Environment Variables**
   - Add the environment variable: `NODE_ENV` with value `production`

7. **Deploy**
   - Click "Deploy"
   - Vercel will build and deploy your application
   - Once completed, you'll receive a URL to access your deployed site

#### Option 2: Deploy using Vercel CLI

1. **Install Vercel CLI**
   ```
   npm install -g vercel
   ```

2. **Extract the ZIP file**
   - Extract `tickit-deployment.zip` to a local folder on your computer

3. **Navigate to the project directory**
   ```
   cd path/to/extracted/folder
   ```

4. **Log in to Vercel CLI**
   ```
   vercel login
   ```

5. **Deploy the project**
   ```
   vercel
   ```

6. **Follow the CLI prompts**
   - When asked about the framework, select "Other"
   - When asked for the build command, enter: `npm run build`
   - When asked for the output directory, enter: `dist`

7. **Set environment variables**
   ```
   vercel env add NODE_ENV production
   ```

8. **Redeploy with the environment variables**
   ```
   vercel --prod
   ```

## Troubleshooting

If you encounter any issues during deployment, check the following:

1. **Build Errors**
   - Check the Vercel deployment logs for specific error messages
   - Make sure all dependencies are correctly listed in package.json

2. **Runtime Errors**
   - Check browser console for JavaScript errors
   - Verify environment variables are correctly set

3. **Vercel Configuration**
   - Ensure `vercel.json` is properly formatted
   - Verify the Node.js version (Vercel uses Node 18 by default)

For more help, refer to the [Vercel documentation](https://vercel.com/docs) or contact support.

## Post-Deployment

After successful deployment:

1. **Configure a custom domain** (optional)
   - In the Vercel dashboard, go to your project settings
   - Click on "Domains" and follow the instructions to add your domain

2. **Set up HTTPS** (automatic)
   - Vercel automatically provides SSL certificates for your domains

3. **Monitor your application**
   - Use the Vercel dashboard to monitor performance, errors, and analytics