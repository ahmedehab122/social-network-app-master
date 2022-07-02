
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blueAccent,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) =>
    Container(
      height: 40,
      width: width,
      child: MaterialButton(
        onPressed: (){function;},
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
    );

Widget defaultTextButton({
  required Function function,
  required String text,
}) =>
    TextButton(
      onPressed: (){function;},
      child: Text(
        text,
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function ? onSubmit,
  Function? onTap,
  Function ?onChange,
  bool isPassword = false,
  required Function validate,
  required String label,
  required IconData prefix,
  IconData ?suffix,
  Function? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      obscureText: isPassword,
     // validator: validate ,
      controller: controller,
      keyboardType: type,
      onTap:() {onTap;},
      enabled: isClickable,
    //  onChanged: onChange,
    //  onFieldSubmitted: onSubmit,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: (){suffixPressed;},
                icon: Icon(
                  suffix,
                  color: Colors.grey,
                ))
            : null,
        prefixIcon: Icon(
          prefix,
        ),
      ),
    );

Widget defaultAppBar({
  required BuildContext context,
  String? title,
  List<Widget>?actions,
}) {
  return AppBar(
    leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon: const Icon(
          Icons.arrow_back_ios
      ),
    ),
    titleSpacing: 5,
    title: Text(
        title!
    ),
    actions: actions,
  );
}




Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );




void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

void showToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0,
    );
enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }

  return color;



}






