# list all tasks
default:
  @just --list

# Starts the frontend development server (Vite)
dev-frontend:
	echo "Starting frontend development server..." && \
	cd frontend && \
	yarn && \
	yarn run dev

# Starts the backend development server (Uvicorn with reload)
dev-backend:
	echo "Starting backend development server..." && \
	cd backend && \
	langgraph dev

# Starts both frontend and backend development servers
dev: dev-frontend dev-backend
	echo "Starting both frontend and backend development servers..."