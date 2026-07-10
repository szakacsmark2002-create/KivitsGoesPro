# KivitsGoesPro

Kivit's Goes Uren — Admin Ultimate 1.3, uploaded and prepared for Render deployment.

## Deploy on Render

1. Open **New → Blueprint** in Render.
2. Select `szakacsmark2002-create/KivitsGoesPro`.
3. Select branch `BlackBooxV4`.
4. Apply the Blueprint.

Render reads `render.yaml`, builds the Docker image and serves the application through Nginx.

## Login

- ID: `Mark001`
- Password: `Ciobycuy1`

## Included

- planning and time registration;
- Administrator Ultimate controls;
- 15, 30 and 60 minute break presets;
- custom breaks and total break calculation;
- employee, request and profile modules;
- Kivits Goes branding;
- PWA manifest and service worker.

## Important limitation

This exact interface stores users, shifts, breaks and requests in the browser's `localStorage`. It works online, but data is not synchronized between different devices. Do not enter real employee information until authentication and storage are moved to a central backend/database.
