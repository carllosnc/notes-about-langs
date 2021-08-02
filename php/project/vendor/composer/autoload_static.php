<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit1b755f60e73167fbc624ae6bafe3d021
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit1b755f60e73167fbc624ae6bafe3d021::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit1b755f60e73167fbc624ae6bafe3d021::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit1b755f60e73167fbc624ae6bafe3d021::$classMap;

        }, null, ClassLoader::class);
    }
}
