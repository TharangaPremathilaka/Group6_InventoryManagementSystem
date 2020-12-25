
package MyFrames;


public class BillSearch {
 
    

    private int bno;
    private String cname;
    private double amt;
    private String pdate;
    
    public BillSearch(int bno,String cname,double amt, String pdate)
    {
        this.bno=bno;
        this.cname=cname;
        this.amt=amt;
        this.pdate=pdate;
        
        
    }
            
    public int getbno()
    {
        return bno;
    }
    public String getcname()
    {
        return cname;
    }
    public double getamt()
    {
        return amt;
    }
    public String pdate()
    {
        return pdate;
    }
  }


