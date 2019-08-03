<?php

namespace App\Entity;
use Symfony\Component\Validator\Constraints as Assert;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\QuestionnaireRepository")
 */
class Questionnaire
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer", length=100)
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $username;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank
     * @Assert\Regex(
     *  pattern = "/^[a-zA-Z]+ [a-zA-Z]+$/",
     *  message = "You must provide your name and surname"
     * )
     */
    private $name;

    /**
     *
     * @ORM\Column(name="age", type="integer", nullable=true, length=100)
     * @Assert\NotBlank
     * @Assert\PositiveOrZero
     * @Assert\Regex(
     *  pattern = "/^[1-9][0-9]?$/",
     *  message = "Enter the correct age"
     * )
     */
    private $age;

    /**
     * @ORM\Column(name="date", type="datetime", options={"default":"CURRENT_TIMESTAMP"})
     */
    private $date;

    public function getId(): ?int {
        return $this->id;
    }

    public function setId($id) {
        return $this->id = $id;
    }

    public function getUsername() {
        return $this->username;
    }

    public function setUsername($username) {
        $this->username = $username;
    }

    public function getName() {
        return $this->name;
    }

    public function setName($name) {
        $this->name = $name;
    }

    /**
     * Set age
     *
     * @param date $age
     */
    public function setAge($age) {
        $this->age = $age;
    }

    /**
     * Get age
     *
     * @return date
     */
    public function getAge() {
        return $this->age;
    }

    public function getDate() {
        return $this->date;
    }

    public function setDate($date) {
        return $this->date = $date;
    }
}
