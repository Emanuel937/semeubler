<?php
namespace App\Repository;
use App\Entity\Articles;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Articles|null find($id, $lockMode = null, $lockVersion = null)
 * @method Articles|null findOneBy(array $criteria, array $orderBy = null)
 * @method Articles[]    findAll()
 * @method Articles[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticlesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Articles::class);
    }

    // /**
    //  * @return Articles[] Returns an array of Articles objects
    //  */

    public function findFamilleandSoudFamille($queryValue)
    {
        $conn = $this->getEntityManager()->getConnection();

        $sql = '
            SELECT * FROM articles a
            WHERE a.sous_sous_famille =:famille
            ';
        $stmt = $conn->prepare($sql);
        $stmt->execute(['famille' => $queryValue]);

        // returns an array of arrays 
        return $stmt->fetchAllAssociative();
    }
    /**
     *  show all the articles by categories
     */
    public function showFamille(){
        $conn =$this->getEntityManager()->getConnection();
        $sql  ="SELECT DISTINCT famille   FROM articles";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
         return $stmt->fetchAllAssociative();
    }
    public function sousFamille(){
        $conn =$this->getEntityManager()->getConnection();
        $sql  ="SELECT DISTINCT sous_famille   FROM articles LIMIT 6";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAllAssociative();
    }
    public function sousSousFamille(){
        $conn =$this->getEntityManager()->getConnection();
        $sql  ="SELECT DISTINCT sous_sous_famille   FROM articles LIMIT 8";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAllAssociative(); 
    }

}
