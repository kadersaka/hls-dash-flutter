import 'package:flutter/material.dart';
import 'package:testflutter3/pages/rafsan_template_dash_page.dart';
import 'package:testflutter3/pages/rafsan_template_hls_subtitles_page.dart';
class UrlFoorm extends StatefulWidget {
  const UrlFoorm({super.key});

  @override
  State<UrlFoorm> createState() => _UrlFoormState();
}

class _UrlFoormState extends State<UrlFoorm> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('enter url'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('in this apk i open .m3u8 file as hls and other extensions as dash player',
          style: TextStyle(
            color: Colors.red,
          ),
          ),
          TextFormField(
            controller: textController,
            decoration: const InputDecoration(
            hintText: "Custom Name"),
            // onChanged: (value) => state.didChange(value),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
                if(textController.text.isEmpty){

                }
                else{
                  if(textController.text.contains('m3u8')){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RafsanHlsTemplateSubtitlesPage(url: textController.text,)),);
                  }
                  else{
                     Navigator.push(context, MaterialPageRoute(builder: (context) => RafsanTemplateDashPage(url: textController.text,)),);
                  }

                }
              }, child: Text("Play")),

        ],
      ),
    );
  }
}
