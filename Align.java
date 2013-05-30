package seqalign;

import java.io.Serializable;

// Java 1.4 doesn't have a tuple or struct type and lists of multiple types
// are very messy. SALSA requires all objects to be serializable.
class Align implements Serializable {
    public String[] pair;
    public int dist;
}
