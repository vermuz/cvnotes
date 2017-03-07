.PHONY: ready
ready:
	openssl des3 -d -in notesencrypt -out resume.txt

.PHONY: cleanup
cleanup:
	openssl des3 -in resume.txt -out notesencrypt
	rm resume.txt

