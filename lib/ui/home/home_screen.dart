import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ku_dorm_frontend/presentation/user/user_bloc.dart';
import 'package:ku_dorm_frontend/presentation/user/user_state.dart';
import 'package:ku_dorm_frontend/ui/home/widgets/quick_actions_widget.dart';
import 'package:ku_dorm_frontend/ui/home/widgets/recent_activity_widget.dart';
import 'package:ku_dorm_frontend/ui/home/widgets/welcome_banner_widget.dart';
import 'package:ku_dorm_frontend/ui/widgets/payment_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserLoading) {
          return Center(child: CircularProgressIndicator(),);
        }

        if (state is UserLoadFailed) {
          return Center(child: Text(state.message),);
        }

        if(state is UserLoaded) {
          return ListView(
            children: [
              Column(
                spacing: 18,
                children: [
                  WelcomeBannerWidget(fullName: state.userEntity.fullName),
                  PaymentWidget(
                    status: 'ค้างชำระ',
                    amount: 2450,
                    month: 'พฤษภาคม',
                    year: '2026',
                    day: 5,
                  ),
                  QuickActionsWidget(),
                  RecentActivityWidget(),
                  SizedBox(height: 24,)
                ],
              ),
            ],
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}