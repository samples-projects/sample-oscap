#!/bin/bash

XML=/usr/share/xml/scap/ssg/content/ssg-rhel8-ds.xml

oscap info $XML

oscap xccdf eval \
    --profile xccdf_org.ssgproject.content_profile_rht-ccp \
    --results ssg-rhel8-xccdf-result.xml \
    --report ssg-rhel8-report.html \
    $XML
