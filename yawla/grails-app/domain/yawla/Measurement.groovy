package yawla

class Measurement {

    static constraints = {
    }

    String measurement
    String unit
    String mtype
    java.sql.Timestamp mtime = new java.sql.Timestamp(System.currentTimeMillis())
}
