using Gtk;
using matheval;

public class Calculator : Window {
  private Entry _r; private string display ="";
  private Button _1;  private Button _2;  private Button _3;  private Button _4;  private Button _5;
  private Button _6;  private Button _7;  private Button _8;  private Button _9;  private Button _0;
  private Button _equal;  private Button _dot;
  private Button _plus;  private Button _minus;
  private Button _mult;  private Button _div;

  public Calculator (){
    this.title = "Calculator";
    this.border_width = 5;
    create_widgets();
  }
  private void create_widgets (){
    var grid = new Grid();
    this._r = new Entry();
    this._1 = new Button.with_label ("1"); this._1.clicked.connect(on_1);
    this._2 = new Button.with_label ("2"); this._2.clicked.connect(on_2);
    this._3 = new Button.with_label ("3"); this._3.clicked.connect(on_3);
    this._4 = new Button.with_label ("4"); this._4.clicked.connect(on_4);
    this._5 = new Button.with_label ("5"); this._5.clicked.connect(on_5);
    this._6 = new Button.with_label ("6"); this._6.clicked.connect(on_6);
    this._7 = new Button.with_label ("7"); this._7.clicked.connect(on_7);
    this._8 = new Button.with_label ("8"); this._8.clicked.connect(on_8);
    this._9 = new Button.with_label ("9"); this._9.clicked.connect(on_9);
    this._0 = new Button.with_label ("0"); this._0.clicked.connect(on_0);
    this._equal = new Button.with_label ("="); this._equal.clicked.connect(on_equal);
    this._dot = new Button.with_label ("."); this._dot.clicked.connect(on_dot);
    this._plus = new Button.with_label ("+"); this._plus.clicked.connect(on_plus);
    this._minus = new Button.with_label ("-"); this._minus.clicked.connect(on_minus);
    this._mult = new Button.with_label ("*"); this._mult.clicked.connect(on_mult);
    this._div = new Button.with_label ("/"); this._div.clicked.connect(on_div);

    this.add(grid);
    grid.attach(this._r, 0, 0, 4, 1);
    grid.attach(this._1, 0, 1, 1, 1);
    grid.attach(this._2, 1, 1, 1, 1);
    grid.attach(this._3, 2, 1, 1, 1);
    grid.attach(this._4, 0, 2, 1, 1);
    grid.attach(this._5, 1, 2, 1, 1);
    grid.attach(this._6, 2, 2, 1, 1);
    grid.attach(this._7, 0, 3, 1, 1);
    grid.attach(this._8, 1, 3, 1, 1);
    grid.attach(this._9, 2, 3, 1, 1);
    grid.attach(this._0, 1, 4, 1, 1);
    grid.attach(this._dot, 0, 4, 1, 1);
    grid.attach(this._equal, 2, 4, 1, 1);
    grid.attach(this._plus,3, 1, 1, 1);
    grid.attach(this._minus, 3, 2, 1 ,1);
    grid.attach(this._mult, 3, 3, 1, 1);
    grid.attach(this._div, 3, 4, 1, 1);

    show_all();
  }
  void on_1 (Button button){
    this.display+="1";
    this._r.set_text(this.display);
  }
  void on_2 (Button button){
    this.display+="2";
    this._r.set_text(this.display);
  }
  void on_3 (Button button){
    this.display+="3";
    this._r.set_text(this.display);
  }
  void on_4 (Button button){
    this.display+="4";
    this._r.set_text(this.display);
  }
  void on_5 (Button button){
    this.display+="5";
    this._r.set_text(this.display);
  }
  void on_6 (Button button){
    this.display+="6";
    this._r.set_text(this.display);
  }
  void on_7 (Button button){
    this.display+="7";
    this._r.set_text(this.display);
  }
  void on_8 (Button button){
    this.display+="8";
    this._r.set_text(this.display);
  }
  void on_9 (Button button){
    this.display+="9";
    this._r.set_text(this.display);
  }
  void on_0 (Button button){
    this.display+="0";
    this._r.set_text(this.display);
  }
  void on_dot (Button button){
    this.display+=".";
    this._r.set_text(this.display);
  }
  void on_plus (Button button){
    this.display+="+";
    this._r.set_text(this.display);
  }
  void on_minus (Button button){
    this.display+="-";
    this._r.set_text(this.display);
  }
  void on_mult (Button button){
    this.display+="*";
    this._r.set_text(this.display);
  }
  void on_div (Button button){
    this.display+="/";
    this._r.set_text(this.display);
  }
  void on_equal (Button button){
    var e = Evaluator.create (this.display);
    string answer = "%g".printf(e.evaluate_x(0));
    this._r.set_text(answer);
    this.display="";
  }
}

int main (string[] args) {
  Gtk.init (ref args);
  var calculator = new Calculator ();
  calculator.destroy.connect(Gtk.main_quit);
  calculator.show ();
  Gtk.main();
  return 0;
}
