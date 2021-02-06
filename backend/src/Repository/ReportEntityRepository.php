<?php

namespace App\Repository;

use App\Entity\ReportEntity;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ReportEntity|null find($id, $lockMode = null, $lockVersion = null)
 * @method ReportEntity|null findOneBy(array $criteria, array $orderBy = null)
 * @method ReportEntity[]    findAll()
 * @method ReportEntity[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ReportEntityRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ReportEntity::class);
    }

    // /**
    //  * @return ReportEntity[] Returns an array of ReportEntity objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('r.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?ReportEntity
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
