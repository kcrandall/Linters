changed_java_files=$(git diff --name-only --diff-filter=ACMR | grep ".*java$" || true)
current_dir=$(pwd)
parent_path=$(cd "$(dirname " ${BASH_SOURCE[0]}")"; pwd-P ) 
cd $parent_pathå
java -jar $parent_path/linter/google-java-format-all-deps.jar --replace $changed_java_files
cd $current_dir