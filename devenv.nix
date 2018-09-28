let
  user = builtins.getEnv "USER";
in {
  name = if (builtins.stringLength user) == 0 then "__dev__" else user;
}
