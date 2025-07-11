## 0.10.5

* Fix timeout by moving it inside async lock scope to prevent useless retries
* Updates inapp module dependency to 0.10.5

## 0.10.4

* Add a fix to prevent app from launching deeplinks in incognito
* Update readiness test for attestor 
* Fix fonts abrupt visual swap when required fonts are loaded
* Fix UI crash because of missing redaction
* Updates inapp module dependency to 0.10.4

## 0.10.3

* Fix param key text overflow verification review
* Add liveliness checks of javascript calls sent to attestor webview
* Updates inapp module dependency to 0.10.3

## 0.10.2

* Add humanized summary of values shown in the verification review UI
* Add async lock around json & xml path evaluations to avoid rpc request deadlock
* Update user login interaction requirement detection
* Fix handling of requests where response selection either doesn't have match or redaction options
* Updates inapp module dependency to 0.10.2

## 0.10.0

* Updates inapp module dependency to 0.10.0
* Bug fixes and performance improvements
* Add retries on timeout when creating claim creation request
* Throw unsupported warning for non 64 bit runtime platforms
* Add device logging id as a fallback device identifier
* Print logs to attached app debugging consoles when logs upload fails 
* Update exceptions cases
* Add check for 4xx errors when throwing ReclaimExpiredSessionException exception
* Fix attestor startup causing requests to get stuck by pre-initializing a separate single browser rpc client for json path and xpath evaluation
* Update copy for manual review, add feature flags for customizing manual review messages and prompt before manual review submission

## 0.9.2

* Fixing issues with incognito (regression)
* Fix manual verification
* Update verification review screen
* Fix hawkeye headers bug with a workaround
* Updates inapp module dependency to 0.9.2

## 0.9.1

* Updates inapp module dependency to 0.9.1

## 0.9.0

* Add resolvedVersion to fetch providers override
* Updates inapp module dependency to 0.9.0

## 0.8.3

* Updates inapp module dependency to 0.8.3
* Add support for versioned providers
* Update [BREAKING] session init handler
* Updates the UI with a verification review banner in the verification flow
* Remove [BREAKING] `acceptAiProviders`, and `webhookUrl` from ReclaimVerification Request
* Update formatting with swift-format

## 0.7.0

* Updates inapp module dependency to 0.7.0

## 0.6.0

* Update claim creation updates UI
* Bug fixes and performance improvements
* Updates inapp module dependency to 0.6.0

## 0.5.0

* Add devtools ordering preference for params displayed in UI 
* Fix display of different params with same key
* Update [BREAKING] session initialization and logging api
* Collect performance metrics and send it to session logs
* Add provider script environment
* Add claim creation types to reclaim verification options

## 0.4.0

* Add updated version of reclaim verifier sdk to 0.4.0
* Removed `isResponseRedactionRegexEscapingEnabled` from features override
* Updated verification flow UI
* Fixed support for cascading requests (fixed number)
* Add param interpolation for xpath and jsonpath

## 0.3.0

- Add setter for ReclaimVerificationOptions which can be used in ReclaimVerification.

## 0.2.1

- Update [BREAKING] capability token verification

## 0.2.0

- Updated breaking changes in the use of the module apis
- Added use of capability access token
- Add new way to fetch provider information from the host app
- Add host notifications for session identity updates

## 0.1.4

- Documentation updates.

## 0.1.3

- Documentation updates.

## 0.1.2

- Initial release of the Reclaim InApp SDK with overrides.
