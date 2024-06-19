Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0380A90F6D7
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 Jun 2024 21:17:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sK0oY-00011E-Od;
	Wed, 19 Jun 2024 19:17:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <no-reply@kew242.com>) id 1sK0oS-000111-Uy
 for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Jun 2024 19:17:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wfrpQ52v6G2s11EfC3bC+/KSa2sxGc2L3C7cuizZUIs=; b=j7yREYi1MWoO4QaRnsddCxDcvH
 3C3tHqr29sYmjcwZVkTj6xqMX9zrDIOGo6j06q5mXDPElUQ3Ud7XeL2m8w2UeAJV/L6//NTTxhs0j
 kLkNVtkhQ81y3rDdV/OLz1JzOFANnfISM9Du/lpOc0OvcWdHMmv7Ts0/RHLZQx9l2pno=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wfrpQ52v6G2s11EfC3bC+/KSa2sxGc2L3C7cuizZUIs=; b=Z
 OPISY5YHBk/YsQ7f5b/0JYEnb+6giwRSA3fk0XdleUutQfh5MEOITNnRgTjFCtLy1zQAXkQvDvyAI
 wT1HMgnBGqRZRJhOm2q7pB0XbKnhlD3OiLzMvIpehQnHpu1GJ3sS0YqWKWciK49DxFS3iBOApHPL6
 CSlIyvKPucBDs+LI=;
Received: from [195.123.247.50] (helo=mail0.kew242.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sK0oR-0007U3-Dr for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Jun 2024 19:17:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=kew242.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@kew242.com;
 bh=wfrpQ52v6G2s11EfC3bC+/KSa2sxGc2L3C7cuizZUIs=;
 b=HALaiDjXP5O4k0QwxuWqQ93s5+wh4F4EkMOCuI7hQ2nrrzMlwsxjF8DUIt6r8rDn5f8P/NAOHNft
 Wh9+DsRjDOmbJ6DklITI6TLy2yvIsEQLwPw3NjgR4GK1I/RNh52uPV8Qfqu+poPlAWLARdm7mjZD
 qibAXB5VTZifUTGJO28=
From: =?utf-8?B?5p2x5Lqs6Zu75Yqb?= <no-reply@kew242.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Date: Thu, 20 Jun 2024 02:57:19 +0800
Message-ID: <FHFOCAGDFJIIGDHCMFHFDEBKIGEG.no-reply@kew242.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ───────────────────
   ■□■ TEPCOよりご利用料金のご請求です ■□■ ───────────────────
    ※下記URLの有� [...] 
 
 Content analysis details:   (3.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: kew242.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [195.123.247.50 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [195.123.247.50 listed in bl.score.senderscore.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: wrapmydeal.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: wrapmydeal.com]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [195.123.247.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sK0oR-0007U3-Dr
Subject: [V9fs-developer] =?utf-8?b?44CQ44GP44KJ44GXVEVQQ08gd2Vi44CR5pyq?=
	=?utf-8?b?57SN6Zu75rCX5paZ6YeR44Gu44GK55+l44KJ44Gb77yI6Ieq5YuV6YWN?=
	=?utf-8?b?5L+h44Oh44O844Or77yJ?=
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

4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
DQrilqDilqHilqAgVEVQQ0/jgojjgorjgZTliKnnlKjmlpnph5Hjga7jgZToq4vmsYLjgafjgZkg
4pag4pah4pagDQrilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIANCuKAu+S4i+iomFVSTOOBruacieWKueacn+mZkOOBrzPml6Xku6XlhoXjgajj
garjgorjgb7jgZnjgIINCuKAu+acieWKueacn+mZkOOBjOWIh+OCjOOBpuaUr+aJleaJi+e2muOB
jeOBjOWujOS6huOBp+OBjeOBquOBhOWgtOWQiOOBq+OBr+OAgeaBkOOCjOWFpeOCiuOBvuOBmeOB
jOOAgembu+awl8K344Ks44K55L2/55So5YGc5q2i44CCDQoNCuKWvOaUr+aJleOBhOOBruips+e0
sOODquODs+OCr+OCqOODs+ODiA0KaHR0cHM6Ly93cmFwbXlkZWFsLmNvbQ0KDQrigLvmnKzjg6Et
44Or44Gv6YCB5L+h5bCI55So44OhLeODq+OCouODieODrOOCueOBi+OCieOBiumAgeOCiuOBl+OB
puOBhOOBvuOBmeOAgg0K44GU6L+U5L+h44GE44Gf44Gg44GN44G+44GX44Gm44KC44GK562U44GI
44Gn44GN44G+44Gb44KT44CCDQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQrmnbHk
uqzpm7vlipvjgqjjg4rjgrjjg7zjg5Hjg7zjg4jjg4rjg7zmoKrlvI/kvJrnpL4NClRFUENPIEVu
ZXJneSBQYXJ0bmVyLEluY29ycG9yYXRlZA0K44CSMTA0LTAwNjEg5p2x5Lqs6YO95Lit5aSu5Yy6
6YqA5bqn5YWr5LiB55uu77yR77yT55Wq77yR5Y+3IOmKgOW6p+S4ieS6leODk+ODq+ODh+OCo+OD
s+OCsAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
