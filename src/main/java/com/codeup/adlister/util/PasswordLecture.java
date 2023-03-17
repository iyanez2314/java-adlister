package com.codeup.adlister.util;

import org.mindrot.jbcrypt.BCrypt;

public class PasswordLecture {
    public static void main(String[] args) {
        // hashing a password
//        String password = "password";
//        String hash = BCrypt.hashpw(password, BCrypt.gensalt(12));
//        System.out.println(hash);

        // salt and log_rounds
        String salt1 = BCrypt.gensalt(12);
        String salt2 = BCrypt.gensalt(12);
        String salt3 = BCrypt.gensalt(12);
        System.out.println(salt1);
//        System.out.println(salt2);
//        System.out.println(salt3);
//
//        System.out.println("=====================");

        System.out.println(BCrypt.hashpw("getmein", salt1));
//        System.out.println(BCrypt.hashpw("getmein", salt1));
//
//        System.out.println(BCrypt.hashpw("password", salt1));
//        System.out.println(BCrypt.hashpw("password", salt1));
//
//        System.out.println("====================");
//
//        System.out.println(BCrypt.hashpw("getmein", salt2));
//        System.out.println(BCrypt.hashpw("getmein", salt2));
////
//        System.out.println("====================");
//
//        System.out.println(BCrypt.hashpw("getmein", salt3));
//        System.out.println(BCrypt.hashpw("getmein", salt3));

//        System.out.println(salt1);
//        System.out.println(BCrypt.hashpw("password", salt1));
//        System.out.println(BCrypt.hashpw("password", salt1));
//        System.out.println(BCrypt.hashpw("password", salt1));
//        System.out.println(BCrypt.hashpw("password", salt1));
//        System.out.println(BCrypt.hashpw("password", salt1));

//        String salt2 = BCrypt.gensalt(12);
//        System.out.println(salt2);
//        System.out.println(BCrypt.hashpw("password", salt2));
//        System.out.println(salt1);
//        System.out.println(salt2);
//        System.out.println(BCrypt.hashpw("password", salt1));
//        System.out.println(BCrypt.hashpw("password", salt2));

        // $2a$10$e.9EKJlYg9utnxB6Ao6s3e
//        String fixedSalt = "$2a$10$e.9EKJlYg9utnxB6Ao6s3e";
//        String hash2 = BCrypt.hashpw("password", fixedSalt);
//        System.out.println("$2a$10$e.9EKJlYg9utnxB6Ao6s3edsBJUF6HMZML1rGsT3PELqYZGKkyb26");
//        System.out.println(hash2);

        // Verifying Password
//        String hash = BCrypt.hashpw("password123", BCrypt.gensalt(12));
//        System.out.println(hash);
//        boolean match = BCrypt.checkpw("password", hash);
//        System.out.println(hash);
//        System.out.println(match);

//        boolean match2 = BCrypt.checkpw(password, hash2);
//        System.out.println(hash2);
//        System.out.println(match);

        // must store hashed passwords before saving to database
        // do not hash passwords more than once
        // may do the hashing in the Model or Dao or Servlet (but only once)


    }
}
