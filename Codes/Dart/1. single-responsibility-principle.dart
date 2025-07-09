import 'dart:io';

class Report {
  final String content;

  Report(this.content);

  String getContent() {
    return content;
  }
}

class ReportPrinter {
  void printReport(Report report) {
    print(report.getContent());
  }
}

class ReportSaver {
  void saveToFile(Report report, String filename) {
    final file = File(filename);
    file.writeAsStringSync(report.getContent());
  }
}

void main() {
  // Example usage:
  Report report = Report("This is a sample report.");
  ReportPrinter printer = ReportPrinter();
  ReportSaver saver = ReportSaver();

  printer.printReport(report);
  saver.saveToFile(report, 'report.txt');
}
