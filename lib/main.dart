import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:whatsapp_clone/data/models/user_model.dart';
import 'package:whatsapp_clone/presentation/bloc/auth/auth_cubit.dart';
import 'package:whatsapp_clone/presentation/bloc/get_device_number/get_device_number_cubit.dart';
import 'package:whatsapp_clone/presentation/bloc/user/user_cubit.dart';
import 'package:whatsapp_clone/presentation/bloc/whats_app_observer.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

import 'injection_container.dart' as di;
import 'presentation/bloc/phone_auth/phone_auth_cubit.dart';

void main() async {
  Bloc.observer = WhatsAppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.sl<AuthCubit>()..appStarted(),
        ),
        BlocProvider(
          create: (_) => di.sl<PhoneAuthCubit>(),
        ),
        BlocProvider<UserCubit>(
          create: (_) => di.sl<UserCubit>()..getAllUsers(),
        ),
        BlocProvider<GetDeviceNumberCubit>(
          create: (_) => di.sl<GetDeviceNumberCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter WhatsApp Clone',
        theme: ThemeData(primaryColor: primaryColor),
        routes: {
          "/": (context) {
            return BlocBuilder<AuthCubit, AuthState>(
              builder: (context, authState) {
                if (authState is Authenticated) {
                  return BlocBuilder<UserCubit, UserState>(
                    builder: (context, userState) {
                      if (userState is UserLoaded) {
                        final currentUserInfo = userState.users.firstWhere(
                            (user) => user.uid == authState.uid,
                            orElse: () => UserModel());
                        return HomeScreen(
                          userInfo: currentUserInfo,
                        );
                      }
                      return Container();
                    },
                  );
                }
                if (authState is UnAuthenticated) {
                  return WelcomeScreen();
                }
                return Container();
              },
            );
          },
        },
      ),
    );
  }
}
