<?php

namespace App\Entity;

use App\Repository\ArticlesRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ArticlesRepository::class)
 */
class Articles
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=300, nullable=true)
     */
    private $famille;

    /**
     * @ORM\Column(type="string", length=300, nullable=true)
     */
    private $sous_famille;

    /**
     * @ORM\Column(type="string", length=300, nullable=true)
     */
    private $sous_sous_famille;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFamille(): ?string
    {
        return $this->famille;
    }

    public function setFamille(?string $famille): self
    {
        $this->famille = $famille;

        return $this;
    }

    public function getSousFamille(): ?string
    {
        return $this->sous_famille;
    }

    public function setSousFamille(?string $sous_famille): self
    {
        $this->sous_famille = $sous_famille;

        return $this;
    }

    public function getSousSousFamille(): ?string
    {
        return $this->sous_sous_famille;
    }

    public function setSousSousFamille(?string $sous_sous_famille): self
    {
        $this->sous_sous_famille = $sous_sous_famille;

        return $this;
    }
}
