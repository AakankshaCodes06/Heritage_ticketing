import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import path from 'path';
import runtimeErrorOverlay from '@replit/vite-plugin-runtime-error-modal';

const getDirname = (importMetaUrl: string): string => {
  return path.dirname(new URL(importMetaUrl).pathname);
};

const currentDir = getDirname(import.meta.url);

export default defineConfig({
  root: path.resolve(currentDir, 'client'), // ✅ Set root to client
  plugins: [
    react(),
    runtimeErrorOverlay(),
  ],
  resolve: {
    alias: {
      '@': path.resolve(currentDir, 'src'), // ✅ Updated to match new root
      '@shared': path.resolve(currentDir, '..', 'shared'),
      '@assets': path.resolve(currentDir, '..', 'attached_assets'),
    },
  },
  build: {
    outDir: path.resolve(currentDir, 'dist'),
    emptyOutDir: true,
    rollupOptions: {
      input: path.resolve(currentDir, 'client', 'index.html'),
    },
  },
  optimizeDeps: {
    include: [
      'react',
      'react-dom',
      'react/jsx-runtime',
      'react/jsx-dev-runtime',
    ],
  },
  server: {
    hmr: {
      overlay: false,
    },
  },
});
