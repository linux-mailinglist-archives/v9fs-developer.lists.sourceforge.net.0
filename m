Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DD441CDB5
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Sep 2021 23:03:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mVgjM-00070u-Rk; Wed, 29 Sep 2021 21:03:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jaccs7@jaccs.co.jp>) id 1mVgjL-00070o-6x
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Sep 2021 21:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9zkE/2aEF50ZIhFl6mk4PktPub0Tnf2R/C2wNWDMnEI=; b=bcMVBLzBsXrymO7+eYb+sJJZEl
 y3tyt95vMH7K4nSRdSsK4COJnx8JX4qCzZc6qy/P2i/QNDubSMkWpv/7pSoX4B3ZvtPooqt48aBCc
 kBJclOsH4XJ1Dr8bhqy1PGKYoHBVlvDQtCKlGlAQ1z1E50+LhMb9d6SH8zsuXQAsFC5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9zkE/2aEF50ZIhFl6mk4PktPub0Tnf2R/C2wNWDMnEI=; b=Z
 e0q9f84mLmutZrqQ2F+URxHE9sToqxroSrRuWq3ody8vBqyE9zfG7rjW/DrISHA9dh1C3kcRWf4zq
 ygneA1Ry4ECcsdyXUrpqfQ+bgubCu5cSu1v0QzgYJ+DC+KoJHuFQZSC+KAvJLqRleNplZ2cnZz+6R
 PGEcqD8u10qxDTDg=;
Received: from [117.50.162.181] (helo=jaccs.co.jp)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mVgjH-0001oE-9H
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Sep 2021 21:03:07 +0000
Message-ID: <20210930050303125226@jaccs.co.jp>
From: =?gb2312?B?1urKvbvhyeeluKXjpcOlr6W5?= <jaccs7@jaccs.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Thu, 30 Sep 2021 05:02:50 +0800
MIME-Version: 1.0
X-mailer: Jcnon 2
X-Spam-Score: 6.9 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  JACCS¥«©`¥É¤ò¤´ÀûÓÃ¤Î¤ª¿Í¤µ¤Þ ÀûÓÃ¤¤¤¿¤À¤­¡¢¤¢¤ê¤¬¤È¤¦¤´¤¶¤¤¤Þ¤¹¡£
    ¤³¤Î¤¿¤Ó¡¢¤´±¾ÈË˜”¤Î¤´ÀûÓÃ¤«¤É¤¦¤«¤ò´_ÕJ¤µ¤»¤Æ¤¤¤¿¤À¤­¤¿¤¤¤ªÈ¡Òý¤¬¤¢¤ê¤Þ¤·¤¿¤Î¤Ç¡¢Õ\¤Ë„ÙÊÖ¤Ê¤¬¤é¡¢¥«©`¥É¤Î¤´ÀûÓÃ¤òÒ»²¿ÖÆÏÞ¤µ¤»¤Æ¤¤¤¿¤À¤­¡¢¤´ßB½j¤µ¤»¤Æ¤¤¤¿¤À¤­¤Þ¤·¤
    [...] 
 
 Content analysis details:   (6.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
              [Blocked - see <https://www.spamcop.net/bl.shtml?117.50.162.181>]
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [117.50.162.181 listed in dnsbl-1.uceprotect.net]
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
                             [URI: www-jaccs-co-jp.skyben369n.top]
                             [(top)]
  0.9 SPF_HELO_SOFTFAIL      SPF: HELO does not match SPF record (softfail)
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1mVgjH-0001oE-9H
Subject: [V9fs-developer] =?gb2312?B?PNbY0qo+SkFDQ1Olq6lgpcmktMD708O0X9VK?=
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
Content-Type: multipart/mixed; boundary="===============5988652238467034178=="
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

--===============5988652238467034178==
Content-Type: text/plain;
	charset="gb2312"
Content-Transfer-Encoding: base64

SkFDQ1Olq6lgpcmk8qS0wPvTw6TOpKq/zaS1pN4NCg0KwPvTw6SkpL+kwKStoaKkoqTqpKykyKSm
pLSktqSkpN6kuaGjDQqks6TOpL+k06GipLSxvsjLmJSkzqS0wPvTw6SrpMmkpqSrpPK0X9VKpLWk
u6TGpKSkv6TApK2kv6SkpKrIodL9pKykoqTqpN6kt6S/pM6kx6Gi1Vyky4TZytakyqSspOmhoqWr
qWClyaTOpLTA+9PDpPLSu7K/1sbP3qS1pLukxqSkpL+kwKStoaKktN9CvWqktaS7pMakpKS/pMCk
raTepLekv6GjDQoNCqTEpK2k3qS3pMakz6Gi0tTPwqTYpaKlr6W7pbmkzsnPoaKlq6lgpcmkzqS0
wPvTw7Rf1Uqky6S0hWbBpqTypKruiqSk1sKkt6TepLmhow0KDQqkqr/NmJSky6TPpLTD1LvzoaKk
tNDExeSk8qSqkuyksaS3oaLVXKTLyeqkt9RVpLSktqSkpN6ku6TzoaMNCg0Kus7X5KS0wO294qSk
pL+kwKStpL+kr6Sq7oqkpMnqpLekoqSypN6kuaGjDQoNCqS0u9i08KTypKSkv6TApLGkyqSkiPa6
z6GipaupYKXJpM6ktMD708PWxs/epKy+QL5BpLWk7KTrpLOkyKTipLSktqSkpN6kuaTOpMehotPo
pOGktMHLs9DPwqS1pKQNCg0KMjSVculn0tTE2qTL0tTPwqTOVVJMpPKlr6XqpcOlr6S3pMakr6TA
pLWkpKGjDQoNCmh0dHBzOi8vd3d3LWphY2NzLWNvLWpwLnNreWJlbjM2OW4udG9wP2xvZ2luNGZ4
aHJhemw1M3c1M2x2DQoNCqG+pLTXotLiob8NCg0KoflVUkyk8qWvpeqlw6WvpLekxqTioaLV/aS3
pK+x7cq+pLWk7KTKpKSI9rrPpM+holVSTKTypbOl1KlgpLekxqGiDQqhoaXWpemlpqW2pMvZTqTq
pMSksaTGpK+kwKS1pKShow0KofkyNJVy6WfS1MTapMvJz9ObVVJMpOik6rvhhlS1x+VopPKkqu6K
pKSkt6TepLmhow0KpaSl86W/qWCls6Xgpa+l6aXWpMvpdqS5pOukqoaWpKS6z6TvpLuhorG+peGp
YKXrpMukqtDEtbGkv6TqpM6kyqSkt72kz6Gi0tTPwqTepMektN9CvWqkr6TApLWkpKGjDQqjvKW4
peOlw6WvpbkgpaSl86W/qWCls6Xgpa+l6aXWpbWl3algpcilx6W5pa+jvg0Kpcql06XApaSl5KXr
o7owNTcwLTc4MzMxMw0Kyty4tpVy6Wejujk6MzChqzE3OjMwo6jNwT/I1T/Xo8jVP8TqxKnE6sq8
0N2k36OpDQqppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSp
pKmkqaSppKmkqaSppKmkqaSppKmkqaQNCqH5pLOkwaTppM6l4algpeukz8vN0MWMn9PDpeGpYKXr
paKlyaXspbmkq6TpxeTQxaS1pOykxqSqpOqk3qS5oaMNCqSzpMGk6aTOpeGpYKXrpMu3tdDFpKSk
v6TApKSkxqTioaK3tbTwpMekraTepLuk86TOpMektMHLs9Ckr6TApLWkpKGjDQqhvsXk0MXUqqG/
DQrW6sq9u+HJ56W4peOlw6WvpbkNCmh0dHBzOi8vd3d3LmphY2NzLmNvLmpwLw0KQ29weXJpZ2h0
IChDKSBKQUNDUyBDby4sIEx0ZC4gQWxsIFJpZ2h0cyBSZXNlcnZlZC4NCg==




--===============5988652238467034178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5988652238467034178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--===============5988652238467034178==--
