<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script src="jquery-3.6.0.min.js"></script>

    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- Bootstrap cdn ���� -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link href="css/��������.css" rel="stylesheet" />
  </head>
  <body>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <br />
    <h1 class="userTitle">
      <i class="fas fa-user-check"></i> ����� ���� ����
    </h1>

    <div class="study">ȸ������ �����ϰ� ���� �оߴ� �����ΰ���?</div>

    <br /><br /><br />

    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script>
      $(document).ready(function () {
        //��з�
        var sel1 = {
          " ": "����",
          lg101: "��ǻ�Ͱ���",
          lg102: "IT�Ϲ�",
          lg103: "��ǻ���Թ�/Ȱ��",
          lg104: "�������/�ؼ�",
          lg105: "OS",
          lg106: "��Ʈ��ũ",
          lg107: "����/��ŷ",
          lg108: "�����ͺ��̽�",
          lg109: "����",
          lg110: "�� ���α׷���",
          lg111: "���α׷��� ���",
          lg112: "����� ���α׷���",
          lg113: "OA/�繫�ڵ�ȭ",
          lg114: "������Ʈ",
          lg115: "�ڰ���/���輭",
        };

        // �ߺз�
        //sel1�� lg101�ϰ��
        var sel2_1 = {
          md201: "��ǻ�Ͱ���/���а���",
          md202: "����Ʈ�������",
          md203: "����ũ�����μ���",
          md204: "�ڷᱸ��/�˰���",
          md205: "�ΰ�����",
        };

        // 102
        var sel2_2 = {
          md206: "IT�Ϲݼ�",
        };

        // 103
        var sel2_3 = {
          md207: "��ǻ���Թ�/Ȱ��",
          md208: "���ͳ��Թ�/Ȱ��",
          md209: "��ǻ�ͱ���",
        };

        // 104
        var sel2_4 = {
          md210: "�������/��ġ�ؼ�",
          md211: "�������/������",
        };

        // 105
        var sel2_5 = {
          md212: "widows",
          md213: "macos",
          md214: "�Ӻ����",
          md215: "arm",
          md216: "���н�",
          md217: "������",
        };

        // 106
        var sel2_6 = {
          md218: "��Ʈ��ũ �Ϲ�",
          md219: "tcp/ip",
        };

        // 108
        var sel2_8 = {
          md220: "�����ͺ��̽� �Ϲ�",
          md221: "oracle",
          md222: "sql",
        };

        // 109
        var sel2_9 = {
          md223: "���ӱ�ȹ",
          md224: "����ϰ���",
          md225: "���Ӱ���",
        };

        // 110
        var sel2_10 = {
          md226: "�����α׷��� �Ϲ�",
          md227: "html/css",
          md228: "javascript",
          md229: "jquery",
          md230: "xml",
          md231: "asp",
          md232: "jsp",
          md233: "php",
          md234: "ajax",
          md235: "flex",
        };

        // 111
        var sel2_11 = {
          md236: "���α׷��� �Ϲ�",
          md237: "���̽�",
          md238: "c",
          md239: "C++",
          md240: "C#",
          md241: "visualbasic",
          md242: "java",
          md243: ".net",
        };

        // 112
        var sel2_12 = {
          md244: "����� ���α׷��� �Ϲ�",
          md245: "������/�����е�",
          md246: "�ȵ���̵�",
          md247: "����ϰ���",
        };

        // 113
        var sel2_13 = {
          md248: "����",
          md249: "�Ŀ�����Ʈ",
        };

        // 114
        var sel2_14 = {
          md250: "������Ʈ ��ȹ",
          md251: "��������",
          md252: "������",
          md253: "ux/ui",
          md254: "Ʈ����/���̽���",
          md255: "��α�/Ȩ������",
          md256: "���θ�/���ڻ�ŷ�",
          md257: "�����۵���",
        };

        // 115
        var sel2_15 = {
          md258: "�繫�ڵ�ȭ",
          md259: "���� ��Ʈ��ũ ����",
          md260: "�׷���/������",
          md261: "��Ÿ�ڰ���",
        };

        // �Һз�
        //sel2�� md205�ϰ��
        var sel3_1 = {
          sm301: "�ΰ����� �Ϲ�",
          sm302: "������/�ӽŷ���",
        };

        // 218
        var sel3_2 = {
          sm303: "��Ʈ��ũ �Ϲ�",
          sm304: "Server",
          sm305: "��������",
        };

        // 225
        var sel3_3 = {
          sm306: "����Ƽ",
          sm307: "�θ���",
          sm308: "���Ӱ��� �Ϲ�",
        };

        // 243
        var sel3_4 = {
          sm309: ".NET �Ϲ�",
          sm310: "VisualC++.NET/VisualC#.NET",
          sm311: "ASP.NET",
        };

        // 258
        var sel3_5 = {
          sm312: "�������μ���",
          sm313: "��ǻ��Ȱ��ɷ�",
          sm314: "�繫�ڵ�ȭ ������",
          sm315: "ITQ",
          sm316: "DIAT",
          sm317: "MOS",
        };

        // 259
        var sel3_6 = {
          sm318: "����ó�����",
          sm319: "�������ȱ��",
          sm320: "������� ����ɻ�",
        };

        // 260
        var sel3_7 = {
          sm321: "��ǻ�ͱ׷��Ƚ� ����ɻ�",
          sm322: "GTQ/�������� ��ɻ�",
        };

        // 261
        var sel3_8 = {
          sm323: "���ڻ�ŷ� ������",
          sm324: "e-test",
          sm325: "�ڵ�",
          sm326: "��ǻ���ڰ��� �Ϲ�",
        };

        //sel1�� �������� �޾ƿ� ���� �ֱ�����..
        // map�迭�� select �±� id�� �Ѱ��ָ� option �±׸� �ٿ���.
        // map[Ű�̸�] = �� Ű�� �ش��ϴ� value�� ��ȯ�Ѵ�.
        //retOption(�����͸�, select�Լ� id)
        function retOption(mapArr, select) {
          if (mapArr != null) {
            var html = "";
            var keys = Object.keys(mapArr);
            for (var i in keys) {
              html +=
                "<option value=" +
                "'" +
                keys[i] +
                "'>" +
                mapArr[keys[i]] +
                "</option>";
            }

            $("select[id='" + select + "']").html(html);
          } else {
            $("#sel2").hide();
            $("#sel3").hide();
          }
        }

        $("select[id='sel1']").on("change", function () {
          // ��� 2)------- ù��° select ���� �ÿ��� ������ ���õǾ��ִ� �ֵ� �����ֱ� ���ؼ�
          // ------- sel3�̶� sel2 �����
          $("#sel2").hide();
          $("#sel3").hide();
          var option = $("#sel1 option:selected").val();
          var subSelName = "";
          if (option == "lg101") {
            subSelName = "sel2_1";
          } else if (option == "lg102") {
            subSelName = "sel2_2";
          } else if (option == "lg103") {
            subSelName = "sel2_3";
          } else if (option == "lg104") {
            subSelName = "sel2_4";
          } else if (option == "lg105") {
            subSelName = "sel2_5";
          } else if (option == "lg106") {
            subSelName = "sel2_6";
          } else if (option == "lg107") {
            // ��� 1) subSelName = "sel2_7"; ---> ��ü�� ��� ������ �߻��ؼ�
            // null������ ����ְ� retOption�̶�� function�ȿ� null���� ���� ó���� ����־���!
            subSelName = null;
          } else if (option == "lg108") {
            subSelName = "sel2_8";
          } else if (option == "lg109") {
            subSelName = "sel2_9";
          } else if (option == "lg110") {
            subSelName = "sel2_10";
          } else if (option == "lg111") {
            subSelName = "sel2_11";
          } else if (option == "lg112") {
            subSelName = "sel2_12";
          } else if (option == "lg113") {
            subSelName = "sel2_13";
          } else if (option == "lg114") {
            subSelName = "sel2_14";
          } else if (option == "lg115") {
            subSelName = "sel2_15";
          } else {
            // ��� 3) sel1 ������ Ŭ������ �� � ����� ������ ����
            $("#sel2").hide();
            $("#sel3").hide();
            return;
          }
          $("#sel2").show();
          retOption(eval(subSelName), "sel2");
        });
        retOption(sel1, "sel1");

        $("select[id='sel2']").on("change", function () {
          // ��� 4) ------- �ι�° select ���� �ÿ��� ������ ���õǾ��ִ� �ֵ� �����ֱ� ���ؼ�
          // ------- sel3 �����
          $("#sel3").hide();
          var option = $("#sel2 option:selected").val();
          var subSelName = "";
          if (option == "md205") {
            subSelName = "sel3_1";
          } else if (option == "md218") {
            subSelName = "sel3_2";
          } else if (option == "md225") {
            subSelName = "sel3_3";
          } else if (option == "md243") {
            subSelName = "sel3_4";
          } else if (option == "md258") {
            subSelName = "sel3_5";
          } else if (option == "md259") {
            subSelName = "sel3_6";
          } else if (option == "md260") {
            subSelName = "sel3_7";
          } else if (option == "md261") {
            subSelName = "sel3_8";
          } else {
            $("#sel3").hide();
            return;
          }
          $("#sel3").show();
          retOption(eval(subSelName), "sel3");
        });
        retOption(sel2, "sel2");
      });
    </script>
    <div class="d-flex justify-content-center">
      <!--��з�-->
      <select name="sel1" id="sel1">
        ����
      </select>
      <!--�ߺз�-->
      <select name="sel2" id="sel2" style="display: none"></select>
      <!--�Һз�-->
      <select name="sel3" id="sel3" style="display: none"></select>
    </div>

    <div class="d-flex justify-content-center">
      <a class="btn btn-primary" href="#" role="button">��� Ȯ��</a>
    </div>
  </body>
</html>