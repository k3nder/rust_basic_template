system::command("git", [ "init" ]);
system::command("git", [ "add", "." ]);
system::command("git", [ "commit", "-m", "\"Initial commit\"" ]);

let gh_repo_create = variable::prompt("Create github repo?", "TRUE", [
    "TRUE","FALSE"
]);
let license = variable::get("license");
let description = variable::get("description");
let name = variable::get("project-name");


while switch gh_repo_create {
    "TRUE" => {
        let res = system::command("gh", [ "repo", "create", name, "--source", ".", "--description", description, "--public", "--push", "--remote", "origin" ]);
        false
    }
    _ => false,
} {
    license = variable::prompt("Create github repo?", "TRUE", [
        "TRUE",
        "FALSE",
      ]).to_lower_case();
}