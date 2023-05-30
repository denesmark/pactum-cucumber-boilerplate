const { request, settings } = require('pactum');
const { Before } = require('@cucumber/cucumber');

Before(() => {
  request.setBaseUrl('https://petstore.swagger.io');
  settings.setReporterAutoRun(false);
});