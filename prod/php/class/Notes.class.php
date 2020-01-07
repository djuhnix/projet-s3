<?php

require_once('autoload.inc.php') ;
//require_once('MyPDO.template.php') ;
//require_once('MyPDO.class.php') ;

class Note extends Entity
{
	/**
	 * @var string $idModule
	 */
	private $idModule;
	/**
	 * @var Module $module
	 *
	 */
	private $module;
	/**
	 * @var int $idEtudiant
	 */
	private $idEtudiant;
	/**
	 * @var Etudiant $etudiant
	 */
	private $etudiant;
	/**
	 * @var float $noteCC
	 */
	private $noteCC;
	/**
	 * @var float $noteTP
	 */
	private $noteTP;

	/**
	 * @param int $idModule
	 * @return array
	 * @throws Exception
	 */
	public static function createFromId(int $idModule) : array
	{
		$stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT  ID_MODULE as idModule,
                    etudiant_id_pers as idEtudiant,
                    note_cc as noteCC,
                    note_tp as noteTP
            FROM inscrire i
            WHERE id_module= ? 
SQL
		);
		// execute module query
		$stmt->setFetchMode(PDO::FETCH_CLASS, Note::class);
		$stmt->execute([$idModule]);

		return $stmt->fetchAll();
	}

	/**
	 * @param int $id
	 * @return Note[]
	 * @throws Exception
	 */
	public function getFromModuleId(int $id) : array
	{
		$stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT i.id_module as idModule,
                    etudiant_id_pers as idEtudiant,
                    note_cc as noteCC,
                    note_tp as noteTP
            FROM inscrire i  JOIN Module m on m.id_module = i.id_module
            WHERE m.id_module = ?
SQL
		);
		$stmt->setFetchMode(PDO::FETCH_CLASS, Note::class);
		$stmt->execute([$id]);

		return  $stmt->fetchAll();
	}

	/**
	 * @param int $id
	 * @return Etudiant[]
	 * @throws Exception
	 */
	public function getFromEtId(int $id)
	{
		$stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT id_module as idModule,
                    etudiant_id_pers as idEtudiant,
                    note_cc as noteCC,
                    note_tp as noteTP
            FROM inscrire i JOIN etudiant e on e.id_pers = i.etudiant_id_pers
            WHERE etudiant_id_pers= ?
SQL
		);
		$stmt->setFetchMode(PDO::FETCH_CLASS, Note::class);
		$stmt->execute(([$id]));

		return  $stmt->fetchAll();
	}

	public function getTitleModule():string
	{
		return $this->module;
	}

	public function getNoteCc():float
	{
		return $this->noteCC;
	}
	public function getNoteTP():float
	{
		return $this->noteTP;
	}

	public function getMoyenne():float
	{
		$val=$this->noteCC;
		$val2=$this>noteTP;
		$moyenne=($val+$val2)/2;
		return $moyenne;
	}
	/**
	 * @return Module
	 */
	public function getModule(): Module
	{
		return $this->module;
	}
	public function setNoteCC(float $note2):void
	{
		$this->noteCC=$note2;
	}
	public function setNoteTP($note2):void
	{
		$this->noteTP=$note2;
	}

	public function persist(): bool
	{
		$stmt = MyPDO::getInstance()->prepare(<<<SQL
        INSERT INTO inscrire (id_module, etudiant_id_pers, note_cc, note_tp)
        VALUES (
                :id_module,
                :etudiant_id_pers,
                :noteCC,
                :noteTP
            );
SQL
		);
		return $stmt->execute([
			':id_module' => $this->idModule,
			':etudiant_id_pers' => $this->idEtudiant,
			':noteCC' => $this->noteCC,
			':noteTP' => $this->noteTP,
		]);
	}

	/**
	 * @return Note[]
	 * @throws Exception
	 */
	public static function getAll() : array
	{
		$stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT id_module as idModule,
                    etudiant_id_pers as idEtudiant,
                    note_cc as noteCC,
                    note_tp as noteTP
            FROM inscrire
SQL
		);
		$stmt->setFetchMode(PDO::FETCH_CLASS, Note::class);
		$stmt->execute();

		return $stmt->fetchAll();
	}

	/**
	 * @return Note[]
	 * @throws Exception
	 */
	public static function Afficher() : string
	{

	}


}
