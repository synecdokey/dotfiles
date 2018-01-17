function pswitch --description "Switch proxy on/off"
    if test -z $HTTPS_PROXY
        set -xg HTTPS_PROXY www-proxy:3128
        set -xg GIT_SSL_NO_VERIFY true
        echo Proxy enabled
    else
        set -e HTTPS_PROXY
        set -e GIT_SSL_NO_VERIFY
        echo Proxy disabled
    end
end
