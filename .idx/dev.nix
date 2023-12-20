{ pkgs, ... }: {
    channel = "stable-23.05"; # "stable-23.05" or "unstable"
    packages = [
        pkgs.flutter
        pkgs.dart
    ];
    # Sets environment variables in the workspace
    env = {};
    idx.extensions = [
        "daltonmenezes.aura-theme"
        "nash.awesome-flutter-snippets"
        "gruntfuggly.activitusb"
        "edwinhuish.better-comments-next"
        "felixangelov.bloc"
        "usernamehw.errorlens"
        "pkief.material-icon-theme"
        "jeroen-meijer.pubspec-assist"
        "ms-ceintl.vscode-language-pack-es"
    ];
    
    idx.previews = {
        enable = true;
        previews = [
            {
                command = [
                    "npm"
                    "run"
                    "start"
                    "--"
                    "--port"
                    "$PORT"
                    "--host"
                    "0.0.0.0"
                    "--disable-host-check"
                ];
                id = "web";
                manager = "web";
            }
            {
                id = "android";
                manager = "android";
            }
            {
                id = "ios";
                manager = "ios";
            }
        ];
    };
}