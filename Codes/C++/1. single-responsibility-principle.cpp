#include <iostream>
#include <fstream>
#include <string>

class Report {
public:
    std::string content;

    Report(const std::string& text) : content(text) {}

    std::string getContent() const {
        return content;
    }
};

class ReportPrinter {
public:
    void print(const Report& report) {
        std::cout << report.getContent() << std::endl;
    }
};

class ReportSaver {
public:
    void saveToFile(const Report& report, const std::string& filename) {
        std::ofstream file(filename);
        file << report.getContent();
        file.close();
    }
};
