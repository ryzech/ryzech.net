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
            "gpg_ryzech.asc",
            "github_ssh.pub",
        },
        .debug = true,
    });
}
