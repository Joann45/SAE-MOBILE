<?php
namespace class\db;

use PDO;
use PDOException;

class SupabaseLoader {
    private static $connection = null;

    public static function getConnection(): PDO {
        $password = 'al94oV8tpbY69eI1'; 
        $host = 'aws-0-eu-west-3.pooler.supabase.com';
        $port = '6543';
        $dbname = 'postgres';
        $user = 'postgres.uqphmrdxocqjbcbucdju';

        if (self::$connection === null) {
            try {
                $dsn = "pgsql:host=$host;port=$port;dbname=$dbname";
                self::$connection = new PDO($dsn, $user, $password);
            } catch (PDOException $e) {
                die("Erreur de connexion à la base de données : " . $e->getMessage());
            }
        }

        return self::$connection;
    }
}
SupabaseLoader::getConnection();