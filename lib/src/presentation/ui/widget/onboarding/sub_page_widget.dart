import 'package:fluttertokners/app.dart';
import 'package:fluttertokners/src/presentation/ui/widget/touch_effect.dart';
import 'package:flutter/material.dart';

class SubPageWidget extends StatelessWidget {
  final void Function()? onBackPress;
  final String? title;
  final Widget? description;
  final Widget? content;
  final Widget? bottomBar;

  const SubPageWidget(
      {Key? key,
      this.title,
      this.description,
      this.content,
      this.bottomBar,
      this.onBackPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if(onBackPress != null){
          onBackPress!.call();
        }else{
          Navigator.pop(context);
        }
        return false;
      },
      child: Stack(children: [
        _buildBackground(context),
        Scaffold(
          //extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: TouchEffect(
                onTap: (){
                  if(onBackPress != null){
                    onBackPress!.call();
                  }else{
                    Navigator.pop(context);
                  }
                },
                child: Assets.images.icons.icLogo.svg(width: 32, height: 32),
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
                child: Text(
                  title ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white, fontSize: 32),
                ),
              ),
              description ?? const SizedBox(),
              _buildContent(context),
            ],
          ),
          bottomNavigationBar: bottomBar,
        ),
      ]),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: ColorName.colorF7F7F7,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: content,
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          top: 0,
          child: Assets.images.background.bg01.svg(),
        ),
        Container(
          height: 342,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x000e1220), Color(0xff0c1120)],
              stops: [0, 0.6],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        )
      ],
    );
  }
}
