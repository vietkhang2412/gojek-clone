
// import 'package:app_social/widget/custom_text_label.dart';
// import 'package:flutter/material.dart';
// import 'package:gojek_clone/core/values/colors.dart';
// import 'package:gojek_clone/core/values/dimens.dart';
// import 'package:scale_size/scale_size.dart';

// class BaseScreen extends StatelessWidget {
//   static double toolbarHeight = 50.sw;

//   // body của màn hình
//   final Widget? body;

//   // title của appbar có 2 kiểu String và Widget
//   // title là kiểu Widget thì sẽ render widget
//   // title là String
//   final dynamic title;

//   // trường hợp có AppBar đặc biệt thì dùng customAppBar
//   final Widget? customAppBar;

//   // callBack của onBackPress với trường hợp  hiddenIconBack = false
//   final Function? onBackPress;

//   // custom widget bên phải của appBar
//   final List<Widget>? rightWidgets;

//   // loadingWidget để show loading toàn màn hình
//   final Widget? loadingWidget;
//   final Widget? loadingWidget2;
//   final Widget? loadingWidget3;

//   // show thông báo
//   final Widget? messageNotify;
//   final Widget? floatingButton;
//   final Widget? customBottomNavigationBar;
//   // nếu true => sẽ ẩn backIcon , mặc định là true
//   final bool hiddenIconBack;
//   final bool hideNavigationBar;

//   final Color colorTitle;
//   final Color colorAppBar;
//   final Color? iconBackColor;
//   final bool hideAppBar;
//   final Color? backgroundcolor;



//   const BaseScreen(
//       {Key? key,
//       this.body,
//       this.title = "",
//       this.customAppBar,
//       this.backgroundcolor,
//       this.onBackPress,
//       this.colorAppBar = AppColors.white,
//       this.rightWidgets,
//       this.hiddenIconBack = false,
//       this.colorTitle = AppColors.white,
//       this.loadingWidget,
//       this.loadingWidget2,
//       this.loadingWidget3,
//       this.iconBackColor,
//       this.hideAppBar = false,
//       this.messageNotify,
//       this.customBottomNavigationBar,
//       this.hideNavigationBar = true,
//       this.floatingButton})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final scaffold = Scaffold(
//         appBar: hideAppBar ? null : (customAppBar == null ? baseAppBar(context) : customAppBar),
//         backgroundColor: backgroundcolor ?? Colors.transparent,
//         body: GestureDetector(
//           behavior: HitTestBehavior.translucent,
//           onTap: () {
//             FocusScope.of(context).requestFocus(FocusNode());
//           },
//           child: Stack(
//             children: [
//               body ?? Container(),
//               Positioned(
//                 top: AppDimens.SIZE_0,
//                 right: AppDimens.SIZE_0,
//                 left: AppDimens.SIZE_0,
//                 bottom: AppDimens.SIZE_0,
//                 child: loadingWidget ?? Container(),
//               ),
//               Positioned(
//                 top: AppDimens.SIZE_0,
//                 right: AppDimens.SIZE_0,
//                 left: AppDimens.SIZE_0,
//                 bottom: AppDimens.SIZE_0,
//                 child: loadingWidget2 ?? Container(),
//               ),
//               Positioned(
//                 top: AppDimens.SIZE_0,
//                 right: AppDimens.SIZE_0,
//                 left: AppDimens.SIZE_0,
//                 bottom: AppDimens.SIZE_0,
//                 child: loadingWidget3 ?? Container(),
//               ),
//               messageNotify ?? Container()
//             ],
//           ),
//         ),
//         floatingActionButton: floatingButton ?? null,
//         bottomNavigationBar: hideNavigationBar ? null : (customBottomNavigationBar == null ? baseAppBar(context) : customBottomNavigationBar),
//     );

//     return Stack(
//       children: [
//         // Positioned.fill(child: Container(color: backgroundColor,)),
//         Container(
//           width: 1.width,
//           height: toolbarHeight + 1.top,
//           color: AppColors.base_color,
//         ),
//         scaffold
//       ],
//     );
//   }

//   baseAppBar(BuildContext context) {
//     var widgetTitle;
//     if (title is Widget) {
//       widgetTitle = title;
//     } else {
//       widgetTitle = CustomTextLabel(
//         this.title?.toString(),
//         maxLines: 2,
//         fontWeight: FontWeight.w600,
//         fontSize: 16,
//         textAlign: TextAlign.center,
//         color: colorTitle,
//       );
//     }
//     return AppBar(
//       elevation: 0,
//       toolbarHeight: toolbarHeight,
//       backgroundColor: colorAppBar ?? Colors.transparent,
//       title: widgetTitle,
//       leading: hiddenIconBack
//           ? Container()
//           : InkWell(
//               onTap: () {
//                 Navigator.pop(context);
//                 onBackPress?.call();
//               },
//               child: Container(
//                 width: 50.sw,
//                 alignment: Alignment.center,
//                 child: Icon(
//                   Icons.arrow_back_ios,
//                   size: 20,
//                   color: iconBackColor ?? AppColors.black,
//                 )
//               ),
//             ),
//       centerTitle: true,
//       actions: rightWidgets ?? [],
//     );
//   }
//   baseBottomNavigationBar(BuildContext context) {

//   }
// }
