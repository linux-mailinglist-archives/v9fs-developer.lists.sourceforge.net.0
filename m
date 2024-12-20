Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE0A9F9734
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Dec 2024 18:00:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tOgMr-0002Xz-3q;
	Fri, 20 Dec 2024 17:00:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <noreply@audible.fr>) id 1tOgMG-0002XQ-I8
 for v9fs-developer@lists.sourceforge.net;
 Fri, 20 Dec 2024 17:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cJuHz14zw9pbghjYlq+sWHrlsts6TGMC0tTqeQ7UUx0=; b=Zow9YVEZ2aOIXNDA+gkT7dPGpg
 Eaxlsoz/2xsUA70bC480l4YBmuR+QwSABmQWbSCStZEc3bcho0MzPDbgKwWU7tBzhC/CiXW4oaTuz
 vbpOVMkOnaxw+9TZ/uWIKXZ1ziFcxlM8n7DbAxy7KuM8zaS5LkxUXSHFSwziI00fMz3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cJuHz14zw9pbghjYlq+sWHrlsts6TGMC0tTqeQ7UUx0=; b=V
 fNfGJCCSk8OOw0acvnAaVBvlAVfRuCgv3+zldKCYc+7ASJTkHAcusEzoLsJMZEQtv3zYwjhM3i41U
 K65cQztyR0LHSRIrhiMajEy4Bhy2pz4bQjV0kJoS5n5R3Ak16qZnwRotoJ4WPaRfeRyFMN1yl2+LC
 aNZHivAxJ/GwnQks=;
Received: from [94.103.188.119] (helo=audible.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tOgMD-00016z-Ia for v9fs-developer@lists.sourceforge.net;
 Fri, 20 Dec 2024 17:00:11 +0000
Received: by audible.fr (Postfix, from userid 33)
 id 39DC34C1FD; Fri, 20 Dec 2024 16:58:39 +0000 (UTC)
Date: Fri, 20 Dec 2024 16:58:05 +0000
To: v9fs-developer@lists.sourceforge.net
From: Attica Bank <noreply@atticabank.com>
Message-ID: <bc6fa38553ec925cd14558ba071abdae@atticabank.com>
MIME-Version: 1.0
X-Spam-Score: 5.5 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  &nbsp; &Alpha;&gamma;&alpha;&pi;&eta;&tau;έ &pi;&epsilon;&lambda;ά&tau;&eta;!
    &Pi;&rho;&omicron;&kappa;&epsilon;&iota;&mu;έ&nu;&omicron;&upsilon; &nu;&alpha;
    &alpha;&nu;&tau;&alpha;&pi;&omicron;&kappa;&rho;&iota;&theta;&omicron;ύ&mu;&epsilon;
    &sigma;&tau;&alpha; &nu;έ&alpha; [...] 
 
 Content analysis details:   (5.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [94.103.188.119 listed in zen.spamhaus.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [94.103.188.119 listed in sa-accredit.habeas.com]
 -1.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [94.103.188.119 listed in wl.mailspike.net]
  0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
  0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.5 MPART_ALT_DIFF_COUNT   BODY: HTML and text parts are different
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [94.103.188.119 listed in bl.score.senderscore.com]
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 TVD_SPACE_RATIO_MINFP  Space ratio (vertical text obfuscation?)
X-Headers-End: 1tOgMD-00016z-Ia
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?zp8gzrvOv86zzrHPgc65zrHPg868z4zPgiA=?=
 =?utf-8?b?z4POsc+CIM60zrXOvSDOtc6vzr3Osc65IM6xz4PPhs6xzrvOrs+CIC0gzpU=?=
 =?utf-8?b?zr3Ot868zrXPgc+Oz4PPhM61IM+Ezr/OvSDOsc+BzrnOuM68z4wgz4TOt867?=
 =?utf-8?b?zrXPhs+Ozr3Ov8+FIM+DzrHPgiE=?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoJCgoKCgoKCgoKCgoKCiZuYnNwOwoKCgomQWxwaGE7JmdhbW1hOyZhbHBoYTsmcGk7JmV0YTsm
dGF1O86tICZwaTsmZXBzaWxvbjsmbGFtYmRhO86sJnRhdTsmZXRhOyEKCiZQaTsmcmhvOyZvbWlj
cm9uOyZrYXBwYTsmZXBzaWxvbjsmaW90YTsmbXU7zq0mbnU7Jm9taWNyb247JnVwc2lsb247ICZu
dTsmYWxwaGE7ICZhbHBoYTsmbnU7JnRhdTsmYWxwaGE7JnBpOyZvbWljcm9uOyZrYXBwYTsmcmhv
OyZpb3RhOyZ0aGV0YTsmb21pY3JvbjvPjSZtdTsmZXBzaWxvbjsgJnNpZ21hOyZ0YXU7JmFscGhh
OyAmbnU7zq0mYWxwaGE7ICZwaTsmcmhvO8+MJnRhdTsmdXBzaWxvbjsmcGk7JmFscGhhOyAmYWxw
aGE7JnNpZ21hOyZwaGk7JmFscGhhOyZsYW1iZGE7JmVwc2lsb247zq8mYWxwaGE7JnNpZ21hZjsg
JmdhbW1hOyZpb3RhOyZhbHBoYTsgJnRhdTsmZXRhOyZudTsgJmVwc2lsb247Jm9taWNyb247JnJo
bzsmdGF1OyZhbHBoYTsmc2lnbWE7JnRhdTsmaW90YTsma2FwcGE7zq4gJnBpOyZlcHNpbG9uOyZy
aG87zq8mb21pY3JvbjsmZGVsdGE7Jm9taWNyb247IDIwMjQsICZ0YXU7Jm9taWNyb247ICZzaWdt
YTvPjSZzaWdtYTsmdGF1OyZldGE7Jm11OyZhbHBoYTsgJmFscGhhOyZzaWdtYTsmcGhpOyZhbHBo
YTsmbGFtYmRhOyZlcHNpbG9uO86vJmFscGhhOyZzaWdtYWY7ICZtdTsmYWxwaGE7JnNpZ21hZjsg
JmFscGhhOyZ4aTsmaW90YTsmb21pY3JvbjsmbGFtYmRhOyZvbWljcm9uOyZnYW1tYTsmZXBzaWxv
bjvOryAmdGF1OyZldGE7Jm51OyAmYWxwaGE7JnNpZ21hOyZwaGk7zqwmbGFtYmRhOyZlcHNpbG9u
OyZpb3RhOyZhbHBoYTsgJmthcHBhO86sJnRoZXRhOyZlcHNpbG9uOyAmbGFtYmRhOyZvbWljcm9u
OyZnYW1tYTsmYWxwaGE7JnJobzsmaW90YTsmYWxwaGE7JnNpZ21hOyZtdTsmb21pY3JvbjvPjS4K
JlRhdTsmb21pY3JvbjsgJnNpZ21hO8+NJnNpZ21hOyZ0YXU7JmV0YTsmbXU7zqwgJm11OyZhbHBo
YTsmc2lnbWFmOyAmYWxwaGE7JnNpZ21hOyZwaGk7JmFscGhhOyZsYW1iZGE7JmVwc2lsb247zq8m
YWxwaGE7JnNpZ21hZjsgJmRlbHRhOyZpb3RhOyZhbHBoYTsmcGk7zq8mc2lnbWE7JnRhdTsmb21l
Z2E7JnNpZ21hOyZlcHNpbG9uOyDPjCZ0YXU7JmlvdGE7ICZvbWljcm9uOyAmYWxwaGE7JnJobzsm
aW90YTsmdGhldGE7Jm11O8+MJnNpZ21hZjsgJnRhdTsmZXRhOyZsYW1iZGE7JmVwc2lsb247JnBo
aTvPjiZudTsmb21pY3JvbjsmdXBzaWxvbjsgJnNpZ21hOyZhbHBoYTsmc2lnbWFmOyAmcGk7JnJo
bzvOrSZwaTsmZXBzaWxvbjsmaW90YTsgJm51OyZhbHBoYTsgJmVwc2lsb247Jm51OyZldGE7Jm11
OyZlcHNpbG9uOyZyaG87Jm9tZWdhOyZ0aGV0YTsmZXBzaWxvbjvOryAmc2lnbWE7JnRhdTsmZXRh
OyZudTsgJnRhdTsmZXBzaWxvbjsmbGFtYmRhOyZlcHNpbG9uOyZ1cHNpbG9uOyZ0YXU7JmFscGhh
O86vJmFscGhhOyDOrSZrYXBwYTsmZGVsdGE7Jm9taWNyb247JnNpZ21hOyZldGE7ICZ0YXU7Jm9t
aWNyb247JnVwc2lsb247ICZwaTsmcmhvOyZvbWljcm9uOyZnYW1tYTsmcmhvO86sJm11OyZtdTsm
YWxwaGE7JnRhdTsmb21pY3Jvbjsmc2lnbWFmOyAmdGF1OyZldGE7JnNpZ21hZjsgQXR0aWNhIEJh
bmsuCgomU2lnbWE7JmV0YTsmbXU7JmVwc2lsb247JmlvdGE7z44mc2lnbWE7JnRhdTsmZXBzaWxv
bjsgz4wmdGF1OyZpb3RhOyAmZXRhOyAmdGF1OyZlcHNpbG9uOyZsYW1iZGE7JmVwc2lsb247JnVw
c2lsb247JnRhdTsmYWxwaGE7zq8mYWxwaGE7ICZlcHNpbG9uOyZudTsmZXRhOyZtdTvOrSZyaG87
Jm9tZWdhOyZzaWdtYTsmZXRhOyAmdGF1OyZvbWljcm9uOyZ1cHNpbG9uOyAmcGk7JnJobzsmb21p
Y3JvbjsmZ2FtbWE7JnJobzvOrCZtdTsmbXU7JmFscGhhOyZ0YXU7Jm9taWNyb247JnNpZ21hZjsg
JmFscGhhOyZzaWdtYTsmcGhpOyZhbHBoYTsmbGFtYmRhOyZlcHNpbG9uO86vJmFscGhhOyZzaWdt
YWY7ICZ0YXU7JmV0YTsmc2lnbWFmOyBBdHRpY2EgQmFuayAmYWxwaGE7JnBpOyZhbHBoYTsmaW90
YTsmdGF1OyZlcHNpbG9uO86vICZlcHNpbG9uOyZwaTsmaW90YTsmYmV0YTsmZXBzaWxvbjsmYmV0
YTsmYWxwaGE7zq8mb21lZ2E7JnNpZ21hOyZldGE7ICZ0YXU7Jm9taWNyb247JnVwc2lsb247ICZ0
YXU7JmV0YTsmbGFtYmRhOyZlcHNpbG9uOyZwaGk7Jm9tZWdhOyZudTsmaW90YTsma2FwcGE7Jm9t
aWNyb247z40gJnNpZ21hOyZhbHBoYTsmc2lnbWFmOyAmYWxwaGE7JnJobzsmaW90YTsmdGhldGE7
Jm11OyZvbWljcm9uO8+NLgomUGk7JnJobzsmb21pY3Jvbjsma2FwcGE7JmVwc2lsb247JmlvdGE7
Jm11O86tJm51OyZvbWljcm9uOyZ1cHNpbG9uOyAmbnU7JmFscGhhOyAmcGk7JnJobzsmb21pY3Jv
bjsmc2lnbWE7JnRhdTsmYWxwaGE7JnRhdTsmZXBzaWxvbjvPjSZzaWdtYTsmb21pY3JvbjsmdXBz
aWxvbjsmbXU7JmVwc2lsb247ICZ0YXU7JmFscGhhOyAmc2lnbWE7JnVwc2lsb247Jm11OyZwaGk7
zq0mcmhvOyZvbWljcm9uOyZudTsmdGF1O86sICZzaWdtYTsmYWxwaGE7JnNpZ21hZjssIM6tJmNo
aTsmb21pY3JvbjsmdXBzaWxvbjsmbXU7JmVwc2lsb247ICZwaTsmZXBzaWxvbjsmcmhvOyZpb3Rh
OyZvbWljcm9uOyZyaG87zq8mc2lnbWE7JmVwc2lsb247JmlvdGE7ICZwaTsmcmhvOyZvbWljcm9u
OyZzaWdtYTsmb21lZ2E7JnJobzsmaW90YTsmbnU7zqwgJnRhdTsmaW90YTsmc2lnbWFmOyAmZXBz
aWxvbjsmcGk7JmlvdGE7JmxhbWJkYTsmb21pY3JvbjsmZ2FtbWE7zq0mc2lnbWFmOyAmY2hpOyZy
aG87zq4mc2lnbWE7JmV0YTsmc2lnbWFmOyAmdGF1OyZvbWljcm9uOyZ1cHNpbG9uOyAmbGFtYmRh
OyZvbWljcm9uOyZnYW1tYTsmYWxwaGE7JnJobzsmaW90YTsmYWxwaGE7JnNpZ21hOyZtdTsmb21p
Y3JvbjvPjSAmc2lnbWE7JmFscGhhOyZzaWdtYWY7LgoKJkVwc2lsb247JmxhbWJkYTvOrSZnYW1t
YTsmeGk7JnRhdTsmZXBzaWxvbjsgJnRhdTsmb21pY3JvbjsmbnU7ICZhbHBoYTsmcmhvOyZpb3Rh
OyZ0aGV0YTsmbXU7z4wgJnRhdTsmZXRhOyZsYW1iZGE7JmVwc2lsb247JnBoaTvPjiZudTsmb21p
Y3JvbjsmdXBzaWxvbjsgJm11OyZvbWljcm9uOyZ1cHNpbG9uOy4KCgoqJkFscGhhOyZ1cHNpbG9u
OyZ0YXU7zq4gJmV0YTsgJmFscGhhOyZudTsmYWxwaGE7JmJldGE7zqwmdGhldGE7Jm11OyZpb3Rh
OyZzaWdtYTsmZXRhOyAmZXBzaWxvbjvOryZudTsmYWxwaGE7JmlvdGE7ICZhbHBoYTsmcGk7JmFs
cGhhOyZyaG87JmFscGhhO86vJnRhdTsmZXRhOyZ0YXU7JmV0YTsgJmdhbW1hOyZpb3RhOyZhbHBo
YTsgJnRhdTsmZXRhOyZudTsgJnBpOyZyaG87Jm9taWNyb247JnNpZ21hOyZ0YXU7JmFscGhhOyZz
aWdtYTvOryZhbHBoYTsgJnRhdTsmb21pY3JvbjsmdXBzaWxvbjsgJmxhbWJkYTsmb21pY3Jvbjsm
Z2FtbWE7JmFscGhhOyZyaG87JmlvdGE7JmFscGhhOyZzaWdtYTsmbXU7Jm9taWNyb247z40gJnNp
Z21hOyZhbHBoYTsmc2lnbWFmOy4KJlNpZ21hOyZlcHNpbG9uOyAmcGk7JmVwc2lsb247JnJobzvO
ryZwaTsmdGF1OyZvbWVnYTsmc2lnbWE7JmV0YTsgJnBpOyZvbWljcm9uOyZ1cHNpbG9uOyAmZGVs
dGE7JmVwc2lsb247Jm51OyAmdGF1OyZvbWljcm9uOyAmcGk7JnJobzvOrCZ4aTsmZXBzaWxvbjsm
dGF1OyZlcHNpbG9uOywgJnRoZXRhOyZhbHBoYTsgJmRlbHRhOyZpb3RhOyZhbHBoYTsmdGF1OyZh
bHBoYTsmcmhvOyZhbHBoYTsmY2hpOyZ0aGV0YTsmb21pY3JvbjvPjSZudTsgJm9taWNyb247Jmlv
dGE7ICZlcHNpbG9uOyZwaTsmaW90YTsmbGFtYmRhOyZvbWljcm9uOyZnYW1tYTvOrSZzaWdtYWY7
ICZwaTsmbGFtYmRhOyZldGE7JnJobzsmb21lZ2E7Jm11O8+OJm51OyAmc2lnbWE7JmFscGhhOyZz
aWdtYWY7LgoKJm5ic3A7CgomRXBzaWxvbjsma2FwcGE7JnRhdTsmaW90YTsmbXU7Jm9taWNyb247
z40mbXU7JmVwc2lsb247ICZ0YXU7JmV0YTsgJnNpZ21hOyZ1cHNpbG9uOyZudTsmZXBzaWxvbjsm
cmhvOyZnYW1tYTsmYWxwaGE7JnNpZ21hO86vJmFscGhhOyAma2FwcGE7JmFscGhhOyZpb3RhOyAm
dGF1OyZldGE7Jm51OyAma2FwcGE7JmFscGhhOyZ0YXU7JmFscGhhOyZudTvPjCZldGE7JnNpZ21h
O86uICZzaWdtYTsmYWxwaGE7JnNpZ21hZjsuCgpBdHRpY2EgYmFuawoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
