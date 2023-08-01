# xcode tools, brew, git, nvm, node, mongodb, postgresql, rn debugger installation.
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git
brew install git-gui
brew install nvm
brew install node
nvm use node
brew tap mongodb/brew
brew install mongodb-community
brew install postgresql
brew install --cask react-native-debugger

# TODO: replace all mac settings config files

# List of apps to dl: vscode, postman, xcode, android studio, DBeaver, mongodb compass, docker

mkdir ~/dev
cd dev

# DEV FOLDER SETUP

github_username="thatsLegit";

declare -a folders=("c" "hackerrank" "java" "javascript" "postman" "python" "rn" "ruby" "stage-2020-oporctunite" "stage-2021-razorfish" "swift" "traversy-media-courses");

declare -a c=("c_progress_bar" "c-libs" "c-chess-engine" "data-structures-c" "learning-c" "sqlite-clone");
declare -a java=("DecisionTree" "HomeShop" "learning-java" "lottery" "MyMenu-IV" "PaellaAPI" "PayDay" "PrgTournament");

declare -a javascript_folders=("javascript/front" "javascript/node" "javascript/testing");
declare -a js_front=("angularPaella" "co-workers-app" "threejs-examples" "threejs-portfolio" "timer");
declare -a js_node=("data-structure-js" "datadog-technical-test" "graph-ql-course" "node-micro-services" "website-check-metrics");
declare -a js_testing=("E2E-express-api-boilerplate" "trying-bdd");

declare -a python=("association-rules" "dental-diagnosis" "M1-2is-Reasoning-Project" "learning-ML" "onboard-code-co-workers" "Random-python-stuff" "twitter");
declare -a rn=("rn-basics-flexbox-deep-dive-start" "rn-first-app" "rn-great-places-app" "rn-guess-a-number-app" "rn-meal-app" "rn-shop-app" "technical-test-langora");
declare -a ruby=("instagram-clone" "koans" "rails-guide");

declare -a stage2020=("oporctunite-api" "oporctunite-react-native" "oporctunite-web" "PHP-codeigniter-ciblog-tutorial");
declare -a stage2021=("dior" "livechat-razorfish");

declare -a traversy_media=("devcamper" "devconnector");

declare -a swift=("udemy-ios-app-course");

for folder in ${folders[@]}; do
  mkdir $folder
done

for folder in ${javascript_folders[@]}; do
  mkdir $folder
done

for project in ${c[@]}; do
    git clone "git@github.com:$github_username/$project.git" ./c;
done

git clone "git@github.com:$github_username/hackerrank.git"
git clone "git@github.com:$github_username/postman.git"

for project in ${java[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./java/$project";
done

git clone "git@github.com:$github_username/js-tutorials.git" ./javascript/js-tutorials

for project in ${js_front[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./javascript/front/$project";
done
for project in ${js_node[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./javascript/node/$project";
done
for project in ${js_testing[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./javascript/testing/$project";
done

for project in ${python[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./python/$project";
done
for project in ${rn[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./rn/$project";
done
for project in ${ruby[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./ruby/$project";
done

# oporctunite-web and ciblog are php codeigniter projects and need a web server to serve it.
# It doesn't include a running web server by default.
for project in ${stage2020[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./stage-2020-oporctunite/$project";
done

for project in ${stage2021[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./stage-2021-razorfish/$project";
done

for project in ${traversy_media[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./traversy-media-courses/$project";
done

for project in ${swift[@]}; do
    git clone "git@github.com:$github_username/$project.git" "./swift/$project";
done

