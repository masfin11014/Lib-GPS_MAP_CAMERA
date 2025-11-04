import 'package:map_camera_flutter/map_camera_flutter.dart';

class LocationDetailsWidget extends StatelessWidget {
  const LocationDetailsWidget({
    super.key,
    required this.locationData,
    required this.dateTime,
  });

  final LocationData? locationData;
  final String? dateTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black.withValues(alpha: 0.5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            locationData?.locationName ?? "Loading...",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            locationData?.subLocation ?? "Loading ..",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: const TextStyle(
                color: Colors.white, fontSize: 11, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 1,
          ),
          Text(
            "Lat ${locationData?.latitude ?? "Loading.."}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: const TextStyle(
                color: Colors.white, fontSize: 11, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 1,
          ),
          Text(
            "Long ${locationData?.longitude ?? "Loading.."}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: const TextStyle(
                color: Colors.white, fontSize: 11, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 1,
          ),
          Text(
            dateTime ?? "Loading...",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: const TextStyle(
                color: Colors.white, fontSize: 11, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
