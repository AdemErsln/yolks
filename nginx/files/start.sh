#!/bin/ash

echo -e  " .--..--..--..--..--..--..--..--..--..--. "
echo -e  "/ .. \.. \.. \.. \.. \.. \.. \.. \.. \.. \"
echo -e  "\ \/\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ \/ /"
echo -e  " \/ /`--'`--'`--'`--'`--'`--'`--'`--'\/ / "
echo -e  " / /\                                / /\ "
echo -e  "/ /\ \  _   _  ____ ___ _   ___  __ / /\ \"
echo -e  "\ \/ / | \ | |/ ___|_ _| \ | \ \/ / \ \/ /"
echo -e  " \/ /  |  \| | |  _ | ||  \| |\  /   \/ / "
echo -e  " / /\  | |\  | |_| || || |\  |/  \   / /\ "
echo -e  "/ /\ \ |_| \_|\____|___|_| \_/_/\_\ / /\ \"
echo -e  "\ \/ /                              \ \/ /"
echo -e  " \/ /                                \/ / "
echo -e  " / /\.--..--..--..--..--..--..--..--./ /\ "
echo -e  "/ /\ \.. \.. \.. \.. \.. \.. \.. \.. \/\ \"
echo -e  "\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `' /"
echo -e  " `--'`--'`--'`--'`--'`--'`--'`--'`--'`--' "

rm -rf /home/container/tmp/*

echo "⟳ Starting PHP-FPM..."
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "⟳ Starting Nginx..."
echo "✓ Successfully started"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
