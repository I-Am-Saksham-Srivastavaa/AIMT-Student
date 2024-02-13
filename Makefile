BASE_HREF = '/'
GITHUB_REPO = git@github.com:I-Am-Saksham-Srivastavaa/AIMT-Student.git
BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')
CUSTOM_DOMAIN = student.ambalika.tech

deploy-web:
@echo "Clean existing repository ... "
flutter clean

@echo "Getting packages ... "
flutter pub get

@echo "Creating CNAME file ... "
echo "$(CUSTOM_DOMAIN)" > build/web/CNAME 

@echo "Building for web ... "
flutter build web -- base-href $(BASE_HREF) -- release

@echo "Deploying to git repository"
cd build/web && \
git init && \
git add . && \
git commit -m "Deploy Version $(BUILD_VERSION)" && \
git branch -M main && \
git remote add origin $(GITHUB_REPO) && \
git push -u -- force origin main

cd .. /..
@echo ". Finished Deploy"

.PHONY: deploy-web
