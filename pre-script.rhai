// we can see existing variables.
// note that template and Rhai variables are separate!
let crate_type = variable::get("crate_type");

file::rename(crate_type + "/.github", ".github");
file::rename(crate_type + "/.idea", ".idea");

file::delete("bin");
file::delete("lib");
