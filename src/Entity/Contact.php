<?php
namespace App\Entity;
use Symfony\Component\Validator\Constraints as Assert;

class Contact {
    /**
     * @Assert\NotBlank()
     */
    public $name;

    /**
     * @Assert\NotBlank()
     */
    public $email;

    /**
     * @Assert\NotBlank()
     */
    public $content;
}
