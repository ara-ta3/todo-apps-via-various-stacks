PNPM=pnpm
NPX=npx

server:
	$(PNPM) vite

lint/prettier:
	$(NPX) prettier --check 'src/**/*.{ts,tsx,json,css}'

lint: lint/prettier

lint/prettier/fix:
	$(NPX) prettier --write 'src/**/*.{ts,tsx,json,css}'

lint/fix: lint/prettier/fix
