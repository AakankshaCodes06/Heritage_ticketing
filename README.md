# Tick It - Indian Heritage Site Booking Platform

A responsive ticket booking website designed for heritage and archaeological sites in India. Built with React, TypeScript, Tailwind CSS, and Express.

## Features

- Browse popular heritage sites
- Book tickets with a multi-step form
- View booking confirmations
- About section with information and testimonials
- Contact form
- Responsive design for all devices

## Tech Stack

- **Frontend**: React, TypeScript, Tailwind CSS, shadcn/ui components
- **Backend**: Express
- **State Management**: React Query
- **Routing**: Wouter

## Deployment on Vercel

### Prerequisites

- GitHub Account
- Vercel Account (can sign up with GitHub)

### Deploying to Vercel

1. **Push your code to GitHub**:
   - Create a new repository on GitHub
   - Push this codebase to your repository

2. **Connect Vercel to your GitHub repository**:
   - Log in to Vercel
   - Click "New Project"
   - Import your GitHub repository

3. **Configure the build settings**:
   - Framework Preset: Other
   - Build Command: `npm run build`
   - Output Directory: `dist`
   - Install Command: `npm install`

4. **Environment Variables**:
   - Add `NODE_ENV=production` to your environment variables

5. **Deploy**:
   - Click "Deploy"
   - Vercel will build and deploy your application
   - Once completed, you'll get a URL to access your deployed site

## Running Locally

1. Clone the repository
2. Install dependencies: `npm install`
3. Start the development server: `npm run dev`
4. Open [http://localhost:5000](http://localhost:5000) in your browser

## Project Structure

- `client/`: Frontend React application
  - `src/components/`: UI components
  - `src/lib/`: Utility functions and data
  - `src/pages/`: Application pages
- `server/`: Backend Express application
- `shared/`: Shared types and schemas

## License

MIT#   H e r i t a g e _ t i c k e t i n g  
 