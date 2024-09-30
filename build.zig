const std = @import("std");
const zine = @import("zine");

pub fn build(b: *std.Build) !void {
    zine.website(b, .{
        .title = "RyzechDev",
        .host_url = "https://ryzech.net",
        .content_dir_path = "content",
        .layouts_dir_path = "layouts",
        .assets_dir_path = "assets",
        .static_assets = &.{
            "keys/gpg_ryzech.asc",
            "keys/github_ssh.pub",
            "keys/sourcehut_ssh.pub",
            "CNAME",
            "favicon.ico",
        },
        .debug = true,
    });
}
