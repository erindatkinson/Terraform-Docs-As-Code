#!/bin/bash


echo "Setting up configs"
git config --global user.email "${DEPLOY_EMAIL}"
git config --global user.name "${DEPLOY_NAME}"


echo "Building Docs"
timestamp="$(date +"%s")"

mkdir -p "work-${timestamp}"
terraform-docs --sort-inputs-by-required  --with-aggregate-type-defaults md table "${MODULE_VARS_CONF_PATH}" >> "work-${timestamp}/inputs.md"
terraform-docs --sort-inputs-by-required  --with-aggregate-type-defaults md table "${MODULE_OUTPUTS_CONF_PATH}" >> "work-${timestamp}/outputs.md"

mkdir -p docs
echo -e "# ${MODULE_NAME} module\n" > docs/inputs.md
cat "work-${timestamp}/inputs.md" >> docs/inputs.md

echo -e "# ${MODULE_NAME} module\n" > docs/outputs.md
cat "work-${timestamp}/outputs.md" >> docs/outputs.md
rm -rf "work-${timestamp}"

echo "Committing Docs back to PR"
git add docs/
git commit -m "Automation - Generating Docs"
git push origin "${GITHUB_REF}"