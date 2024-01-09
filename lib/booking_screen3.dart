import 'package:app_movie/transaksi_screen.dart';
import 'package:app_movie/widgets/SeatWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BookingScreen3 extends StatelessWidget {
  final selectedSeat = ValueNotifier<List<String>>([]);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.teal.shade900,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          title: Text(
            "Select Seat",
            style: GoogleFonts.ptSans(
                fontSize: 25, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5.0, right: 10, top: 1),
                      child: Icon(
                        Icons.movie,
                        color: Colors.teal.shade900,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 2.5),
                            child: Text(
                              'STUDIO XXI BANJARMASIN - Studio 5',
                              style: GoogleFonts.ptSans(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Date: Monday, 09 Jan 2024 | Time: 09:30 AM',
                            style: GoogleFonts.ptSans(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Text(
                                '2D',
                                style: GoogleFonts.ptSans(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              // SizedBox(width: 10),
                              // Text('3D'),
                            ],
                          )
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 20, vertical: 10),
                    //   child: Icon(
                    //     Icons.arrow_forward_ios,
                    //     size: 20,
                    //     color: Colors.teal.shade900,
                    //   ),
                    // ),
                  ],
                ),
              ),
              ValueListenableBuilder<List<String>>(
                valueListenable: selectedSeat,
                builder: (context, value, _) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 24),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          //color: AppColor.primaryColor,
                          color: Colors.teal.shade900,
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          alignment: Alignment.center,
                          child: Text(
                            "Screen",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        const Expanded(child: SizedBox()),

                        /// lets make 8 seat horizontal
                        /// and 6 seat vertical
                        for (int i = 1; i <= 6; i++) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              for (int j = 1; j <= 8; j++) ...[
                                SeatWidget(
                                  seatNumber:
                                      "${String.fromCharCode(i + 64)}$j",
                                  width: (MediaQuery.of(context).size.width -
                                          48 -
                                          66) /
                                      8,
                                  height: (MediaQuery.of(context).size.width -
                                          48 -
                                          66) /
                                      8,
                                  isAvailable: i != 6,
                                  isSelected: value.contains(
                                    "${String.fromCharCode(i + 64)}$j",
                                  ),
                                  onTap: () {
                                    if (value.contains(
                                      "${String.fromCharCode(i + 64)}$j",
                                    )) {
                                      selectedSeat.value = List.from(value)
                                        ..remove(
                                          "${String.fromCharCode(i + 64)}$j",
                                        );
                                    } else {
                                      selectedSeat.value = List.from(value)
                                        ..add(
                                          "${String.fromCharCode(i + 64)}$j",
                                        );
                                    }
                                  },
                                ),
                                // make gap, and in the center wider gap
                                if (i != 8) SizedBox(width: j == 4 ? 16 : 4)
                              ]
                            ],
                          ),
                          if (i != 6) const SizedBox(height: 6)
                        ],
                        const Expanded(child: SizedBox()),
                        const SeatInfoWidget(),
                        const SizedBox(height: 24),
                      ],
                    ),
                  );
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Text(
                                "Total Price",
                                style: GoogleFonts.roboto(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 25),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TransactionScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              // primary: AppColor.primaryColor,
                              primary: Colors.teal.shade900,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(12),
                            ),
                            child: ValueListenableBuilder<List<String>>(
                              valueListenable: selectedSeat,
                              builder: (context, value, _) {
                                final totalRupiah = value.length * 40;
                                final formattedTotal = NumberFormat.currency(
                                  locale: 'id',
                                  symbol: 'Rp',
                                ).format(totalRupiah);

                                return Text(
                                  "$formattedTotal",
                                  style: GoogleFonts.lexend(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
