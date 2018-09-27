let
  user = builtins.getEnv "USER";
in {
  envName = if (builtins.stringLength user) == 0 then "__dev__" else user;
}
