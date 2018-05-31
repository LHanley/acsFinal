# acsFinal

# Project Title and purpose

One Paragraph of project description goes 

### Difficulties or opportunities you encountered along the way.

The toughest part was...

### Most interesting piece of your code and explanation for what it does.

```Java
public Score() {
    try {
      scan = new Scanner(new File("Desktop/APData/data/cs.csv"));


      while (scan.hasNext())
      {
        String[] line = new String[6];
        line = scan.nextLine().split(",");
        scores.put(line[0], new HashMap());

        int count = 1;
        for (int i = 5; i > 0; i--)
        {
          scores.get(line[0]).put(i, Double.parseDouble(line[count]));
          count++;
        }
      }
    }
    catch(Exception E) {
      E.printStackTrace();
      System.out.println("no");
    }
  }
```
This is the code that moves down the tree as decisions are made.  It gets each value from both left and right and also casts the value to a String.  If the progressions arrives at the leaf nodes, those values are printed.
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Lucas Hanley and Hung Dovu** 


## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
