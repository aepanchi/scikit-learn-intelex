if [ -z "${DALROOT}" ]; then
    export DALROOT=${PREFIX}
fi

export DOC_VERSION=`python -c "from ..scripts.version import get_onedal_version; print(get_onedal_version(${DALROOT}))"`
rm -f sources/doc_version.json
echo "{\"version\":\"$DOC_VERSION\"}" >> sources/doc_version.json
