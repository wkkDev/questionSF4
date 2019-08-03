<?php
namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

use App\Entity\User;

class UserFixtures extends Fixture {

    public function load(ObjectManager $manager) {
      $userList = [
        [
          'nick' => 'admin',
          'email' => 'biuro@amin.pl',
          'password' => 'admin',
          'role' => 'ROLE_ADMIN'
        ],
        [
          'nick' => 'zveqa',
          'email' => 'mmo3az.mansor@mxcn.tk',
          'password' => 'zveqa',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'pgavi',
          'email' => 'hiromasa@suhuempek.cf',
          'password' => 'pgavi',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'ypizk',
          'email' => 'fmicloud@onet.tk',
          'password' => 'ypizk',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'edasy',
          'email' => 'caxisik75@best-mail.net',
          'password' => 'edasy',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'myrua',
          'email' => 'btoylhsud4th@10minut.xyz',
          'password' => 'myrua',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'hzuve',
          'email' => 'kagnukarku@desoz.com',
          'password' => 'hzuve',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'umoda',
          'email' => 'kumoda@rp.co',
          'password' => 'umoda',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'ucymb',
          'email' => 'mmo3az@besttandberg.com',
          'password' => 'ucymb',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'jkuja',
          'email' => 'rikakuja@rifkian.cf',
          'password' => 'jkuja',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'izata',
          'email' => 'amirando@prurls.com',
          'password' => 'izata',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'hamza',
          'email' => 'lekidra52@prurls.co',
          'password' => 'hamza',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'gzena',
          'email' => 'mmiralda@tukulyagan.pl',
          'password' => 'gzena',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'asala',
          'email' => 'ulannor@csgodose.com',
          'password' => 'asala',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'ecila',
          'email' => 'xnu65134@bcaoo.pl',
          'password' => 'ecila',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'dvide',
          'email' => 'animatedvideos33@gmail.com',
          'password' => 'dvide',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'hael',
          'email' => 'micgyhaelTuh@gmail.ty',
          'password' => 'hael',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'nantor',
          'email' => 'news@mailinator.com',
          'password' => 'nantor',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'cond',
          'email' => 'example@secondbusiness.it',
          'password' => 'cond',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'obima',
          'email' => 'caxisik@best-mail.net',
          'password' => 'obima',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'dmome',
          'email' => 'maderano@jssdikpd.ga',
          'password' => 'dmome',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'fqabu',
          'email' => 'ress1982@rhyta.de',
          'password' => 'fqabu',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'wcuxi',
          'email' => 'dolorseit@jourrapide.ry',
          'password' => 'wcuxi',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'esifo',
          'email' => 'lorem@gustr.com',
          'password' => 'esifo',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'orybn',
          'email' => 'dolorseit@jourrapide.com',
          'password' => 'orybn',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'wevuram',
          'email' => 'wevuramo45@jourrapide.com',
          'password' => 'wevuram',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'ferihur',
          'email' => 'zavuge7201@yopmail.com',
          'password' => 'ferihur',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'migelea',
          'email' => 'migealmasa@zurej.pl',
          'password' => 'migelea',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'ehefoha',
          'email' => 'theehefoha@ok.com',
          'password' => 'ehefoha',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'pudoqu',
          'email' => 'pudoguGam@op.pl',
          'password' => 'pudoqu',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'otyfoa',
          'email' => 'piWahh5yoo@o2.com',
          'password' => 'otyfoa',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'taurus',
          'email' => 'taurus.buisness@test.de',
          'password' => 'taurus',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'morgan',
          'email' => 'organ@gmail.com',
          'password' => 'morgan',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'xiliary',
          'email' => 'xiliary@met.com.pl',
          'password' => 'xiliary',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'kalos',
          'email' => 'f8b5dcbbd@met.ty',
          'password' => 'kalos',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'ported',
          'email' => 'bottom@polish.pl',
          'password' => 'ported',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'redirects',
          'email' => 'anas_al@redi.pl',
          'password' => 'redirects',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'qudseh',
          'email' => 'qudseh23@tesyy.pl',
          'password' => 'qudseh',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'entry',
          'email' => 'Jane.Smith@lorem.yu',
          'password' => 'entry',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'desired',
          'email' => 'desired.adam@lotus.pl',
          'password' => 'desired',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'charter',
          'email' => 'remember@yousii.pl',
          'password' => 'charter',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'bilJohnson',
          'email' => 'bilJohnsonok@ok.pl',
          'password' => 'bilJohnson',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'luwucu',
          'email' => 'Luwucu@buisness.pl',
          'password' => 'luwucu',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'hirury',
          'email' => 'jonas.hirury@waigton.us',
          'password' => 'hirury',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'kafera',
          'email' => 'kafera.tobias@git.push.com',
          'password' => 'kafera',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'ryloga',
          'email' => 'ryloga78@testy.o2',
          'password' => 'ryloga',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'epafua',
          'email' => 'epafua.atama@lorem.pl',
          'password' => 'epafua',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'uwekej',
          'email' => 'anea.ty@lorum.tu',
          'password' => 'uwekej',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'afysipa',
          'email' => 'afysipa.yuyu@ok.pl',
          'password' => 'afysipa',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'ezybaca',
          'email' => 'Ezybaca.anna@testyy.p2',
          'password' => 'ezybaca',
          'role' => 'ROLE_USER'
        ],
        [
          'nick' => 'fyrugon',
          'email' => 'fyrugon.ukulele@malys.com',
          'password' => 'fyrugon',
          'role' => 'ROLE_USER'
        ]
        ];

        foreach ($userList as $userDetail) {
            $user = new User();
            $user->setUsername($userDetail['nick']);
            $user->setEmail($userDetail['email']);
            $user->setEnabled(true);
            $user->setPlainPassword($userDetail['password']);
            $user->setRoles(array($userDetail['role']));
            $manager->persist($user);
            $manager->flush();
        }
    }
}