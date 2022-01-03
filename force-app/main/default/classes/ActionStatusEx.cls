public class ActionStatusEx {
   public static Integer staticCounter {
        get {
            if (staticCounter == null) {
                staticCounter = 0;}
            return staticCounter;
        }
        private set;
    }

    public Integer viewStateCounter {
        get {
            if (viewStateCounter == null) {viewStateCounter = 0;}
            return viewStateCounter;
        }
        private set;
    }

    public ActionStatusEx() {}

    public void doCount() {     //action method for VF page
        staticCounter++;
        viewStateCounter ++;
    }
}