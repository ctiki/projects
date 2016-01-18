<?php
	class Model
	{
        public function __construct()
        {
        }

        public function Delete($tableName, $indexFieldName, $indexFieldValue)
        {
            $sth = Database::$DB->prepare("DELETE FROM {$tableName} WHERE {$indexFieldName} = :id");
            $sth->bindValue('id', $indexFieldValue);
            $sth->execute();
        }
        public function Update($assocArray, $tableName, $indexFieldName, $indexFieldValue)
        {
            $setArray = array();
            foreach($assocArray as $key => $value)
                $setArray [] = "$key = '{$value}'";
            $setString = implode(',', $setArray);
            $sth = Database::$DB->prepare("UPDATE {$tableName} SET {$setString} WHERE {$indexFieldName} = :id");
            $sth->bindValue('id', $indexFieldValue);
            $result = $sth->execute();
            return $result;
        }
        public function Insert($assocArray, $tableName)
        {
            $fieldsArray = array_keys($assocArray);
            $valuesArray = array_values($assocArray);
            $fields = implode(",", $fieldsArray);
            $values = "'".implode("','", $valuesArray)."'";
            $sth = Database::$DB->prepare("INSERT INTO {$tableName} ({$fields}) VALUES ($values)");
            $sth->execute();
        }
        public function GetAllRecords($table)
        {
            $sth = Database::$DB->prepare("SELECT * FROM {$table}");
            $sth->execute();
            $rows = array();
            while($row = $sth->fetch(PDO::FETCH_ASSOC))
                $rows []= $row;
            return $rows;
        }
        public function GetRecordByFieldName($table, $fieldName, $value)
        {
            $sth = Database::$DB->prepare("SELECT * FROM {$table} WHERE {$fieldName} = :val");
            $sth->bindParam('val', $value);
            $sth->execute();
            return $sth->fetch(PDO::FETCH_ASSOC);
        }
        public function GetRecordsByFieldName($table, $fieldName, $value)
        {
            $sth = Database::$DB->prepare("SELECT * FROM {$table} WHERE {$fieldName} = :val");
            $sth->bindParam('val', $value);
            $sth->execute();
            $rows = array();
            while($row = $sth->fetch(PDO::FETCH_ASSOC))
                $rows []= $row;
            return $rows;
        }
        public function GetRecordsInFields($table, $fieldsArray)
        {
            if(is_array($fieldsArray)){
                $fieldsStr = implode(",", $fieldsArray);
                $sth = Database::$DB->prepare("SELECT $fieldsStr FROM {$table}");
                $sth->execute();
                $rows = array();
                while($row = $sth->fetch(PDO::FETCH_ASSOC))
                    $rows []= $row;
                return $rows;
            }
        }
	}