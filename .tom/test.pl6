task-run "check json files", "json-lint", %( path =>  "{$*CWD}" );
bash "zef test .";
bash "perl6 -MSparrow6::DSL sparrowfile";
