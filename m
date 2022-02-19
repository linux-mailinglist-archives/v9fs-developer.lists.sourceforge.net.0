Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A10F4BCA95
	for <lists+v9fs-developer@lfdr.de>; Sat, 19 Feb 2022 21:07:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nLW0T-0008R9-H5; Sat, 19 Feb 2022 20:07:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <changggewind03@freenomdou.ga>) id 1nLW0N-0008Qq-UJ
 for v9fs-developer@lists.sourceforge.net; Sat, 19 Feb 2022 20:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SQM5+Ve60uJUL0NByILXpRATYS/vYApbMtR1HQvfilc=; b=I198GOUAYx1Slg202jvJg/7ey8
 J30WBE1cyyRPUn/MwctuyA0wSINVOHyhXT7j5i7DtDjeKHtgIuCcVb2a5DS2kC07b+NxHNlkM/tnu
 3k16dlhXvmYfVb70JZjjCdPAcqZe+DyJFOFOAkCf3/nvMWFagdy8rVtuOahCavvOh1pw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SQM5+Ve60uJUL0NByILXpRATYS/vYApbMtR1HQvfilc=; b=l
 J3esCPUiaJHVDrSoOk04YYvYh89ZSbsnCFE7O7AYr34TF9z+7R1O7BtFpRqmll3LdyV6F+KoofJVg
 LeTpTe/rbuPtjzfZ63YUqwgYKPDag44CCx32gm+zqtpc+akhXjxeu0AvwvvPynpzMQYEkQbd98343
 ju7yUYD8aJXQ35Ww=;
Received: from hwsrv-942990.hostwindsdns.com ([104.168.144.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nLW0I-0002wM-QF
 for v9fs-developer@lists.sourceforge.net; Sat, 19 Feb 2022 20:06:51 +0000
Received: from rovbcxr (unknown [103.74.193.124])
 by hwsrv-942990.hostwindsdns.com (Postfix) with ESMTPA id C5376110779
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 20 Feb 2022 03:47:50 +0800 (CST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freenomdou.ga;
 s=default; t=1645300071;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=SQM5+Ve60uJUL0NByILXpRATYS/vYApbMtR1HQvfilc=;
 b=bHHZhz8naW60dpXP1bWZ1i0ojWm4Zxf8ekIWj+p8ZzUglneFAeIhFGsmbnTkKb13Sydv4m
 UpArnknc8fwh0Af0j2wFvr1pQ92oOtl5fqY9m1LwhL0+Gn6dhHk0XV/xIOCS7VAh0l1sMb
 xWOBE3I1Ut5t7iqyXqrv5jbGTXMR5sU=
Message-ID: <53528508BE11B2B1309D1680BA0DD649@rovbcxr>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sun, 20 Feb 2022 03:47:47 +0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.5512
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5512
X-Spam: Yes
X-Spam-Score: 4.5 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  *|MC_PREVIEW_TEXT|* あなたのアカウントは停止されました
    新しいデバイスからアカウントサービスへのサインインが検出されました。
    
 
 Content analysis details:   (4.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: amazonoole.com]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: freenomdou.ga]
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [104.168.144.151 listed in dnsbl-1.uceprotect.net]
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
             [Blocked - see <https://www.spamcop.net/bl.shtml?104.168.144.151>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                           [104.168.144.151 listed in bl.score.senderscore.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nLW0I-0002wM-QF
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz44OI?=
 =?utf-8?b?44Gv5YGc5q2i44GV44KM44G+44GX44Gf?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Amazon via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Amazon <changggewind03@freenomdou.ga>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ICp8TUNfUFJFVklFV19URVhUfCogIA0KDQogIA0KDQoNCg0KIA0KDQoNCg0K44GC44Gq44Gf44Gu
44Ki44Kr44Km44Oz44OI44Gv5YGc5q2i44GV44KM44G+44GX44GfDQoNCg0KDQoNCg0KDQoNCiAN
Cg0KDQogIA0KDQoNCuaWsOOBl+OBhOODh+ODkOOCpOOCueOBi+OCieOCouOCq+OCpuODs+ODiOOC
teODvOODk+OCueOBuOOBruOCteOCpOODs+OCpOODs+OBjOaknOWHuuOBleOCjOOBvuOBl+OBn+OA
gg0KDQoNCuiqsOOBi+OBjOOBguOBquOBn+OBrkFtYXpvbuOCouOCq+OCpuODs+ODiOOBp+S7luOB
ruODh+ODkOOCpOOCueOBi+OCieizvOWFpeOBl+OCiOOBhuOBqOOBl+OBvuOBl+OBn+OAgkFtYXpv
buOBruS/neitt+OBq+OBiuOBkeOCi+OCu+OCreODpeODquODhuOCo+OBqOaVtOWQiOaAp+OBruWV
j+mhjOOBq+OCiOOCiuOAgeOCu+OCreODpeODquODhuOCo+S4iuOBrueQhueUseOBi+OCieOCouOC
q+OCpuODs+ODiOOBjOODreODg+OCr+OBleOCjOOBvuOBmeOAgg0KDQoNCuOCouOCq+OCpuODs+OD
iOOCkuW8leOBjee2muOBjeS9v+eUqOOBmeOCi+OBq+OBr+OAgTI05pmC6ZaT5YmN44Gr5oOF5aCx
44KS5pu05paw44GZ44KL44GT44Go44KS44GK5Yun44KB44GX44G+44GZ44CC44Gd44KM5Lul5aSW
44Gu5aC05ZCI44CB44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz44OI44Gv5rC45LmF44Ot44OD44Kv
44CCDQoNCg0KICANCg0KDQoNCg0K56K66KqN55So44Ki44Kr44Km44Oz44OIDQoNCg0KDQogIA0K
MjAyMSBBbWF6b24uY29tLiBBbGwgcmlnaHRzIHJlc2VydmVkLiBBbWF6b27jga7jg63jgrTjgIFB
bWF6b24uY28uanDjgYrjgojjgbPjgIFBbWF6b24uY28uanDjga7jg63jgrTjga/jgIEgQW1hem9u
LmNvbSwgSW5jLuOBvuOBn+OBr+OBneOBrumWoumAo+S8muekvuOBruWVhuaomeOBp+OBmeOAgiAz
OTYxMzIxOTIgDQogIA0KDQogIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
