import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/core/themes/colors.dart';



class ProgressBarWithThumb extends StatefulWidget {
  final int score;

  const ProgressBarWithThumb({super.key, required this.score});

  @override
   
  _ProgressBarWithThumbState createState() => _ProgressBarWithThumbState();
}

class _ProgressBarWithThumbState extends State<ProgressBarWithThumb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    
    _animation =
        Tween<double>(begin: 1.0, end: widget.score.clamp(1, 8).toDouble())
            .animate(_controller)
          ..addListener(() {
            if (mounted) { 
              setState(() {});  
            }
          });

   
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int currentScore =
        _animation.value.round(); 

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        
        children: [
          const SizedBox(height: 10),
         
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                8,
                (index) => Text(
                  '${index + 1}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: (index + 1) <= currentScore
                        ? AppColors.yellow2  
                        : AppColors.black.withOpacity(
                            .3),  
                  ),
                ),
              ),
            ),
          ),

          SliderTheme(
            
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: AppColors.yellow2,
              inactiveTrackColor: Colors.green,
              trackHeight: 6.h,
              thumbColor: AppColors.yellow2,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
            ),
            child: Slider(
              value: _animation
                  .value,  
              min: 1.0,
              max: 8.0,
              divisions: 7,
              onChanged: (value) {
                
              },
            ),
          ),
        ],
      ),
    );
  }
}

