dynamic screenText = "";
dynamic firstNum;
dynamic secondNum;

double add(String fnum, String snum) {
  double pfnum = double.parse(fnum);
  double psnum = double.parse(snum);

  return pfnum + psnum;
}

double sub(String fnum, String snum) {
  double pfnum = double.parse(fnum);
  double psnum = double.parse(snum);

  return pfnum - psnum;
}

double mult(String fnum, String snum) {
  double pfnum = double.parse(fnum);
  double psnum = double.parse(snum);

  return pfnum * psnum;
}

double div(String fnum, String snum) {
  double pfnum = double.parse(fnum);
  double psnum = double.parse(snum);

  return pfnum / psnum;
}

void calculate(String btnText) {
  switch (btnText) {
    case '+':
  }
}
