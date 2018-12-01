NEW_VERSION ?=$(shell git describe --tags --dirty)
DIST_DIR ?=github_dist
REPOSITORY ?=scanf/cal
BUILD_DIR ?=.build

all: lint format
	swift build

clean:
	swift package clean

release:
	swift build -c release

test:
	swift test

github_release: release
	mkdir -pv ${DIST_DIR}
	zip -9 ${DIST_DIR}/cal-${NEW_VERSION}.zip ${BUILD_DIR}/x86_64-apple-macosx10.10/release/cal
	# How to handle Linux?
	git push github master
	githubrelease release ${REPOSITORY} create ${NEW_VERSION} --publish --name "Awesom-o ${NEW_VERSION}" "${DIST_DIR}/*"
	git push github --tags

lint:
	swiftlint

lint-fix:
	swiftlint autocorrect

format:
	swiftformat .
