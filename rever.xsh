$PROJECT = 'cb_mpl_stylesheet'
$ACTIVITIES = [
    'version_bump',
    'changelog',
    'tag',
    'push_tag',
    'ghrelease',
    'conda_forge',
]

$VERSION_BUMP_PATTERNS = [
    ('bg_mpl_stylesheet/__init__.py', r'__version__\s*=.*', "__version__ = '$VERSION'"),
    ('setup.py', r'version\s*=.*,', "version='$VERSION',")
]

$CHANGELOG_FILENAME = 'CHANGELOG.rst'
$CHANGELOG_IGNORE = ['TEMPLATE.rst']
$TAG_REMOTE = 'git@github.com:connorjbracy/cb-mpl-stylesheets.git'

$GITHUB_ORG = 'connorjbracy'
$GITHUB_REPO = 'cb-mpl-stylesheets'

$FORGE_FEEDSTOCK = 'git@github.com:connorjbracy/cb-mpl-stylesheets-feedstock.git'
$FORGE_FEEDSTOCK_ORG = 'connorjbracy'
$FORGE_PROTOCOL = 'ssh'
$FORGE_SOURCE_URL = 'https://github.com/$GITHUB_ORG/$GITHUB_REPO/releases/download/$VERSION/$PROJECT-$VERSION.tar.gz'
$FORGE_HASH_TYPE = 'sha256'
$FORGE_PULL_REQUEST = True
$FORGE_RERENDER = True
$FORGE_USE_GIT_URL = False

$SPHINX_HOST_DIR = 'docs/build'
$GHPAGES_REPO = 'git@github.com:connorjbracy/cb-mpl-stylesheets.git'
$GHPAGES_BRANCH = 'gh-pages'
$GHPAGES_COPY = (
    ('$SPHINX_HOST_DIR/html', '$GHPAGES_REPO_DIR'),
)
