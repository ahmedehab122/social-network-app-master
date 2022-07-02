
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/cubit/cubit.dart';
import 'package:social_network/cubit/state.dart';
import 'package:social_network/edit_profile%20screen.dart';
import 'package:social_network/models/profile_model.dart';
import 'package:social_network/posts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
          var userModel = AppBloc.get(context).userModel;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 210,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                      Align(
                      alignment: AlignmentDirectional.topCenter,

                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft:Radius.circular(4),
                            topRight:Radius.circular(4),


                          ),
                          image: DecorationImage(
                            image: NetworkImage(userModel.cover),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 63,
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            userModel.image
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                userModel.name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                userModel.bio,
                style: Theme.of(context).textTheme.caption,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              '100',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            const SizedBox(height: 2,),
                            Text(
                              'Posts',
                              style: Theme.of(context).textTheme.caption,
                            ),

                          ],
                        ),
                        onTap: (){},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              '2000',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            const SizedBox(height: 2,),
                            Text(
                              'Photos',
                              style: Theme.of(context).textTheme.caption,
                            ),

                          ],
                        ),
                        onTap: (){},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              '10k',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            const SizedBox(height: 2,),
                            Text(
                              'Followers',
                              style: Theme.of(context).textTheme.caption,
                            ),

                          ],
                        ),
                        onTap: (){},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              '124',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            const SizedBox(height: 2,),
                            Text(
                              'Followings',
                              style: Theme.of(context).textTheme.caption,
                            ),

                          ],
                        ),
                        onTap: (){},
                      ),
                    ),



                  ],
                ),
              ),
              Row(

                children: [

                  Expanded(
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: (){},
                      child: Row(
                        children: const [
                          Icon(Icons.add,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text('Add Story', style: TextStyle(color: Colors.black),),
                        ],
                      ),


                    ),

                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(

                    child: OutlinedButton(

                      onPressed: (){
                        navigateTo(context,const PostsScreen(),);
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.people_alt_outlined),
                          SizedBox(width: 10,),
                          Text('Add Photos'),
                        ],
                      ),


                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                   OutlinedButton(

                    onPressed: (){
                      /*navigateTo(context,
                          EditProfileScreen());*/
                    },
                    child: Row(
                      children: const [
                        Icon(
                            Icons.edit_outlined
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Edit')
                      ],
                    ),


                  ),


                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children:
                [
                  OutlinedButton(
                    onPressed: (){
                      FirebaseMessaging.instance.subscribeToTopic('announcements');
                    },
                    child: (const Text('Follow')),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                    onPressed: (){
                      FirebaseMessaging.instance.unsubscribeFromTopic('announcements');

                    },
                    child: (const Text('unFollow')),
                  ),

                ],
              ),



            ],

          ),
        );
      },

    );
  }


}


