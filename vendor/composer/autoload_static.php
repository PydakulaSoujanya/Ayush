<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInite469f71c5b4af1404b372f759aee7d9f
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInite469f71c5b4af1404b372f759aee7d9f::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInite469f71c5b4af1404b372f759aee7d9f::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInite469f71c5b4af1404b372f759aee7d9f::$classMap;

        }, null, ClassLoader::class);
    }
}
