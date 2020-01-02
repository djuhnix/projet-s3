<?php

/*!!!!!!!!!!!!! A IMPLEMENTE !!!!!!!!!!!!!*/

class Proposition
{
    /**
     * Description de la proposition de projet ou de stage.
     *
     * @var string
     */
    private $description;
    private $accepte;

    public static function createFromId(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_PROPOSITION as _id,
                   Description as descritpion,
                   accepte as accepte
            FROM PROPOSITION
            WHERE ID_PROPOSITION = ?
SQL
        );
        $stmt->execute([$id]);
        $stmt->setFetchMode(PDO::FETCH_CLASS, 'Proposition');
        $object = $stmt->fetch();
        if (false === $object) {
            throw new Exception('Proposition inconnu : '.$id);
        }

        return $object;
    }
    /**
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * @param string $description
     */
    public function setDescription($description)
    {
        $this->description = $description;
    }

    /**
     * @return mixed
     */
    public function getAccepte()
    {
        return $this->accepte;
    }

    /**
     * @param bool $accepte
     */
    public function setAccepte($accepte)
    {
        $this->accepte = $accepte;
    }


}
