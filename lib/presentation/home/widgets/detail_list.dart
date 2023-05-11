import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/bloc/weather/weather_bloc.dart';
import 'package:open_weather/core/styles/constant_style.dart';
import 'package:open_weather/domain/entities/daily_weather.dart';
import 'package:open_weather/presentation/home/widgets/date_box.dart';
import 'package:open_weather/presentation/home/widgets/info_tile.dart';

class DetailList extends StatefulWidget {
  final List<DailyWeather>? data;
  final VoidCallback? onBack;

  const DetailList({
    super.key,
    this.data,
    this.onBack,
  });

  @override
  State<DetailList> createState() => _DetailListState();
}

class _DetailListState extends State<DetailList> {
  int currentIndex = 0;

  void updateCurrentIndex(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ConstantStyle.height40,
          child: Row(
            children: [
              Expanded(
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    return DateBox(
                      isSelected: index == currentIndex,
                      data: widget.data?[index],
                      onTap: () => updateCurrentIndex(index),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(),
                ),
              ),
              IconButton(
                onPressed: widget.onBack,
                icon: const Icon(Icons.list),
              ),
            ],
          ),
        ),
        const SizedBox(height: ConstantStyle.height10),
        InfoTile(
          label: 'Wind',
          value: context.read<WeatherBloc>().state.generalWeather?.daily?[currentIndex].wind_speed.toString(),
        ),
        InfoTile(
          label: 'Pressure',
          value: context.read<WeatherBloc>().state.generalWeather?.daily?[currentIndex].pressure.toString(),
        ),
        InfoTile(
          label: 'Hummidity',
          value: context.read<WeatherBloc>().state.generalWeather?.daily?[currentIndex].humidity.toString(),
        ),
        InfoTile(
          label: 'UV Index',
          value: context.read<WeatherBloc>().state.generalWeather?.daily?[currentIndex].uvi.toString(),
        ),
        InfoTile(
          label: 'Sunrise',
          value: context.read<WeatherBloc>().state.generalWeather?.daily?[currentIndex].sunrise.toString(),
        ),
        InfoTile(
          label: 'Sunset',
          value: context.read<WeatherBloc>().state.generalWeather?.daily?[currentIndex].sunset.toString(),
        ),
      ],
    );
  }
}
