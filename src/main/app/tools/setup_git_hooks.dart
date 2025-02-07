import 'dart:io';

Future<void> main() async {
  final preCommitHook = File('../../../.git/hooks/pre-commit');
  await preCommitHook.parent.create();
  await preCommitHook.writeAsString(
    '''
#!/bin/sh
set -e
exec ./src/main/app/submodules/flutter/bin/dart format --set-exit-if-changed ./src/main/app/lib
exec ./src/main/app/submodules/flutter/bin/dart analyze ./src/main/app/lib
''',
  );

  if (!Platform.isWindows) {
    final result = await Process.run('chmod', ['a+x', preCommitHook.path]);
    stdout.write(result.stdout);
    stderr.write(result.stderr);
    exitCode = result.exitCode;
  }
}