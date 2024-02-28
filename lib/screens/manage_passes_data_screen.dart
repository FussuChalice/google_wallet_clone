import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_wallet_clone/helpers/helpers.dart';

class ManagePassesDataScreen extends StatefulWidget {
  const ManagePassesDataScreen({super.key});

  @override
  State<ManagePassesDataScreen> createState() => _ManagePassesDataScreenState();
}

class _ManagePassesDataScreenState extends State<ManagePassesDataScreen> {
  bool _personalizationWithinWallet = true;
  bool _usePassesAcrossGoogle = true;
  bool _personalizationAcrossGoogle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Open feedback page
            },
            icon: const Icon(
              Icons.feedback_outlined,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Manage passes data",
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personalization within Wallet",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge?.fontSize,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            fontSize: 14,
                          ),
                          children: [
                            const TextSpan(
                              text:
                                  "Get helpful tips, suggestions, and more in Wallet based on your passes and how you use them. This data will be saved to your Google Account and can be be removed at any time. ",
                            ),
                            TextSpan(
                              text: "Learn how personalization works",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  URLLauncherHelper.launchURL(
                                      "https://support.google.com/wallet/answer/12059410?visit_id=638447083244673584-2903819243&p=personalize_wallet&rd=1#personalize_wallet");
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Switch(
                  value: _personalizationWithinWallet,
                  onChanged: (value) {
                    setState(() {
                      _personalizationWithinWallet = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Use passes across Google",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge?.fontSize,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            fontSize: 14,
                          ),
                          children: [
                            const TextSpan(
                              text:
                                  "See things like flight updates, point balances, and event notifications in places like Maps, Calendar, and more. ",
                            ),
                            TextSpan(
                              text: "Learn how passes work",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  URLLauncherHelper.launchURL(
                                      "https://support.google.com/wallet/answer/12059410?visit_id=638447083246507820-2381760658&p=passes_across_google&rd=1#passes_across_google&zippy=%2Cuse-passes-across-google");
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Switch(
                  value: _usePassesAcrossGoogle,
                  onChanged: (value) {
                    setState(() {
                      _usePassesAcrossGoogle = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personalization across Google",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge?.fontSize,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            fontSize: 14,
                          ),
                          children: [
                            const TextSpan(
                              text:
                                  "Get better recommendations, results, and more based on your passes and how you use them in places like Maps, Calendar, and Assistant. ",
                            ),
                            TextSpan(
                              text: "Learn how personalization works",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  URLLauncherHelper.launchURL(
                                      "https://support.google.com/wallet/answer/12059410?visit_id=638447083246507820-2381760658&p=personalize_across_google&rd=1#personalize_across_google&zippy=%2Cpersonalization-across-google");
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Switch(
                  value: _personalizationAcrossGoogle,
                  onChanged: (value) {
                    setState(() {
                      _personalizationAcrossGoogle = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
