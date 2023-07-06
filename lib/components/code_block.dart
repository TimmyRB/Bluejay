import 'package:bluejay/extra/code_dark_theme.dart';
import 'package:bluejay/extra/code_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';

class BlueCodeBlock extends StatelessWidget {
  const BlueCodeBlock({
    Key? key,
    required this.code,
    this.language = CodeBlockLanguage.plaintext,
    this.icon = Icons.code,
    this.actions = const [],
    this.actionSpacing = 4.0,
    this.showActionBar = true,
  }) : super(key: key);

  final String code;
  final CodeBlockLanguage language;
  final IconData? icon;
  final List<Widget> actions;
  final double actionSpacing;
  final bool showActionBar;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: HighlightView(
              code,
              language: language.toPrettyString(),
              tabSize: 2,
              textStyle: const TextStyle(
                fontFamily: 'UberMoveMono',
                package: 'bluejay',
              ),
              theme: Theme.of(context).brightness == Brightness.light
                  ? blueCodeLightTheme
                  : blueCodeDarkTheme,
            ),
          ),
          if (showActionBar)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (icon != null)
                    Icon(
                      icon,
                      size: 16.0,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  if (icon != null) const SizedBox(width: 4.0),
                  Text(
                    language.toPrettyString().toUpperCase(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontFamily: 'UberMoveMono',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      package: 'bluejay',
                    ),
                  ),
                  const Spacer(),
                  ...actions.map((_) => SizedBox(width: actionSpacing)),
                  ...actions.map(
                    (e) => ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 24.0,
                        maxHeight: 24.0,
                      ),
                      child: Theme(
                        data: ThemeData(
                          iconTheme: IconThemeData(
                            size: 16.0,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                        child: e,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

enum CodeBlockLanguage {
  oneC,
  abnf,
  accesslog,
  actionscript,
  ada,
  all,
  angelscript,
  apache,
  applescript,
  arcade,
  arduino,
  armasm,
  asciidoc,
  aspectj,
  autohotkey,
  autoit,
  avrasm,
  awk,
  axapta,
  bash,
  basic,
  bnf,
  brainfuck,
  cal,
  capnproto,
  ceylon,
  clean,
  clojureRepl,
  clojure,
  cmake,
  coffeescript,
  coq,
  cos,
  cpp,
  crmsh,
  crystal,
  cs,
  csp,
  css,
  d,
  dart,
  delphi,
  diff,
  django,
  dns,
  dockerfile,
  dos,
  dsconfig,
  dts,
  dust,
  ebnf,
  elixir,
  elm,
  erb,
  erlangRepl,
  erlang,
  excel,
  fix,
  flix,
  fortran,
  fsharp,
  gams,
  gauss,
  gcode,
  gherkin,
  glsl,
  gml,
  gn,
  go,
  golo,
  gradle,
  graphql,
  groovy,
  haml,
  handlebars,
  haskell,
  haxe,
  hsp,
  htmlbars,
  http,
  hy,
  inform7,
  ini,
  irpf90,
  isbl,
  java,
  javascript,
  jbossCli,
  json,
  juliaRepl,
  julia,
  kotlin,
  lasso,
  ldif,
  leaf,
  less,
  lisp,
  livecodeserver,
  livescript,
  llvm,
  lsl,
  lua,
  makefile,
  markdown,
  mathematica,
  matlab,
  maxima,
  mel,
  mercury,
  mipsasm,
  mizar,
  mojolicious,
  monkey,
  moonscript,
  n1ql,
  nginx,
  nimrod,
  nix,
  nsis,
  objectivec,
  ocaml,
  openscad,
  oxygene,
  parser3,
  perl,
  pf,
  pgsql,
  php,
  plaintext,
  pony,
  powershell,
  processing,
  profile,
  prolog,
  properties,
  protobuf,
  puppet,
  purebasic,
  python,
  q,
  qml,
  r,
  reasonml,
  rib,
  roboconf,
  routeros,
  rsl,
  ruby,
  ruleslanguage,
  rust,
  sas,
  scala,
  scheme,
  scilab,
  scss,
  shell,
  smali,
  smalltalk,
  sml,
  solidity,
  sqf,
  sql,
  stan,
  stata,
  step21,
  stylus,
  subunit,
  swift,
  taggerscript,
  tap,
  tcl,
  tex,
  thrift,
  tp,
  twig,
  typescript,
  vala,
  vbnet,
  vbscriptHtml,
  vbscript,
  verilog,
  vhdl,
  vim,
  vue,
  x86asm,
  xl,
  xml,
  xquery,
  yaml,
  zephir,
}

extension CodeBlockLanguageExtension on CodeBlockLanguage {
  String toPrettyString() {
    String lang = name.split('.').last;

    if (lang == 'oneC') {
      lang = '1c';
    }

    if (lang.contains(RegExp(r'[A-Z]'))) {
      lang = lang.replaceAllMapped(
        RegExp(r'[A-Z]'),
        (match) => '-${match.group(0)?.toLowerCase()}',
      );
    }

    return lang;
  }
}
