Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B5B98918E
	for <lists+v9fs-developer@lfdr.de>; Sat, 28 Sep 2024 23:26:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1suewx-0003yq-Pu;
	Sat, 28 Sep 2024 21:25:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <return@mockupscreens.com>) id 1suews-0003y8-6b
 for v9fs-developer@lists.sourceforge.net;
 Sat, 28 Sep 2024 21:25:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:List-Unsubscribe:Subject:Message-ID:Mime-Version
 :From:Date:Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m33vwXk2RhsOIYD7InHsSblS+6W0mPLWsx7Cqwp0Hkg=; b=HdQwnnFtlKARpV5vBxF/kJWWeS
 RYGYfof1SVODkLVfAys91gZ0aRY2yzckChqhuNz7SG3xLG+Mth9w0/A+SfDrzkHndCD6QVt9Zdcph
 JXjzBFNpP+XUXm2+i6Qq9EC3h58OJoz39ZILkXYvNTKusxo4dRJK4mdqAl/F5FZ/wAyU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:List-Unsubscribe:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m33vwXk2RhsOIYD7InHsSblS+6W0mPLWsx7Cqwp0Hkg=; b=QYlO2t6cLODsXRHl5RlupfAh6D
 RVupb2vceySiyb2hJ8K9gg9BrntdHYdlpk9L2r6GgfUiZhD1xsb8olT4hq8TH/h/PKpui7ONPWB7V
 sACXsECobs6xUM4CFWKLevJdkvgxeUiRE0AJL5F3cv8B2OWUUokni1YIsB8yWCFHNziU=;
Received: from [38.129.16.74] (helo=mockupscreens.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1suewr-0000Yf-9L for v9fs-developer@lists.sourceforge.net;
 Sat, 28 Sep 2024 21:25:54 +0000
X-Spam-Flag: NO
Received-SPF: pass (mail127c60.megamailservers.eu: domain of
 bounces+22073510-e539-kaander2=online.no@em6709.kappahl.com designates
 167.89.106.248 as permitted sender) receiver=mail127c60.megamailservers.eu;
 client-ip=167.89.106.248; helo=o72.ptr884.email.eclub.se;
 envelope-from=bounces+22073510-e539-kaander2=online.no@em6709.kappahl.com;
 x-software=spfmilter 2.001 http://www.acme.com/software/spfmilter/ with
 libspf2-1.2.10; 
DMARC-Filter: OpenDMARC Filter v1.3.2 mail127c60.megamailservers.eu
 48F53SQd098070
Authentication-Results: mail127c60.megamailservers.eu;
 dmarc=pass (p=none dis=none) header.from=kappahl.com
Authentication-Results: mail127c60.megamailservers.eu; spf=pass
 smtp.mailfrom=bounces+22073510-e539-kaander2=online.no@em6709.kappahl.com
X-Envelope-From: bounces+22073510-e539-kaander2=online.no@em6709.kappahl.com
Authentication-Results: mail127c60.megamailservers.eu;
 dkim=pass (2048-bit key) header.d=kappahl.com header.i=@kappahl.com
 header.b="fknsOsjy"
Received: from o72.ptr884.email.eclub.se (o72.ptr884.email.eclub.se
 [167.89.106.248])
 by mail127c60.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 48F53SQd098070
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <kaander2@online.no>; Sun, 15 Sep 2024 05:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kappahl.com;
 h=content-type:from:mime-version:subject:list-unsubscribe-post:
 list-unsubscribe:to:cc:content-type:from:subject:to;
 s=s1; bh=fASdpyKxVhkeAovCa4E1ZDnF6T1JJ1Pz6ZqT5Sqail8=;
 b=fknsOsjyvLJksnKJhpucRfjH+IUzLyhCszVSF71GnhUcNHulczLZ0cTXI+FhVe7PDJm4
 B5YUCMCJFzPNeFEigswbl8ATZmXcBFPy3MzSaFjJKpg9XCotGF1n6tKs0JBLJxx2ex9lO7
 bPGYuymeusS0vwRgYfCOa0VGP6q7KY7Pqc3z8Q3bS9DRFFowEucCatDFLzhcfmOj8bcCtX
 DQ6+WQy2/F0tKA/pLXE2DYVsyL9G/v/0MUYEyqPBR9qxT64lJxm7YtEJGnLaXJfq2DuiDz
 fjk83fBwITeQUg6m/Sf7nfU2dFYvjUvsSjDPLnZGxla5rNYcHujftlI31v2cTv/g==
Received: by recvd-7744477dd-q5c5l with SMTP id
 recvd-7744477dd-q5c5l-1-66E66A30-1
 2024-09-15 05:01:36.057546548 +0000 UTC m=+212637.579878800
Received: from MjIwNzM1MTA (unknown) by geopod-ismtpd-5 (SG) with HTTP
 id 88yZSzx8Tx6hmBkmKmLI6g Sun, 15 Sep 2024 05:01:36.018 +0000 (UTC)
Date: Sat, 28 Sep 2024 21:13:47 +0000
From: Tractor Supply Surprise <noreply@kappahl.com>
Mime-Version: 1.0
Message-ID: <459571603288yZSzx8Tx6hmBkmKmLI6g@geopod-ismtpd-5>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-Voyado-ProcessBatch: 56ede9c7e83245aeab8045bae8cafb84
X-Voyado-EmailBatch: a7fcc879-36ae-416d-b578-32ff36f41842
X-Voyado-MessageId: 76fea95f-5538-40b5-92cc-b1e600809d86
X-SG-EID: =?us-ascii?Q?u001=2EUInZnJI2qDm=2FtC+vXa6Fl6dWmNmjAs62RvIqD3omn6kejAeSHfe8SyEys?=
 =?us-ascii?Q?2cWbifUZHIUlITdW4gAgPEA68n75qdlzP7G0zD+?=
 =?us-ascii?Q?zvo=2Fi=2FtP3PuGV5PraAHrGhpYof1cy+NYoMz2Mhy?=
 =?us-ascii?Q?PYq09ALHDio3djgVncL37KO3acOpy4=2FJboTC0pJ?=
 =?us-ascii?Q?GdxuFg76ehTzHCu8MrvbL9VxkJrE0wotv5KBabO?=
 =?us-ascii?Q?laEIr2yjK+Y3LPbgjFQ6OQ=3D?=
X-SG-ID: =?us-ascii?Q?u001=2ESdBcvi+Evd=2FbQef8eZF3BpTL9BgbK5wfSJMJGMsmprA07JZ6jYu8gxUof?=
 =?us-ascii?Q?WzjgGHhijVJyPpLoORLBZ2UiPbF5D2EcTCO14Ec?=
 =?us-ascii?Q?5=2FKzuZKYafnm3lckzeEoJAMRslQQUhsME0GB55j?=
 =?us-ascii?Q?QKtXI0Xbv40QNDlqN19hI6SU+w9sonhFoD=2FYnKr?=
 =?us-ascii?Q?p=2Fuz2OzWM7t9d1pdaU7t=2Fs5zolJZDISgvIh1HLT?=
 =?us-ascii?Q?hLSJ+zYHN=2FA3iQrM1UPWEYJkUI5J7W2d6u6rFzU?=
 =?us-ascii?Q?pZY4hzEh5gBtr2RGg9TvSIN2SO84UinrLN0kSke?=
 =?us-ascii?Q?GjrkRnAw34j05AaDSzEJnkOoZgcJ+SSOVJFBGka?=
 =?us-ascii?Q?bNsEOwin7u4nLe1oLYqDyvyqeazJSGpJ961HRgb?=
 =?us-ascii?Q?cbqbgzk42R22oOTT4Cbmfi6ganoq=2FwYW=2Fvz00Yg?=
 =?us-ascii?Q?hiBSZQIyeuGOpNU+0uQ=3D?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: u001.4hIIw1hDER1r7eo7+Nyq+g==
X-VADE-SPAMSTATE: commercial:mce
X-VADE-SPAMSCORE: 17
X-VADE-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeftddrudekuddgledvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecujffquffvqffrkfetpdfgpfggqdeviedtnecuuegrihhlohhuthemuceftddunecundfotefknffkpffiucdludejmdenucfjughrpegtfffhggfkuffjvfesrgdttdertddtjeenucfhrhhomhepmfgrphhprghhlhcuoehnohhrvghplhihsehkrghpphgrhhhlrdgtohhmqeenucggtffrrghtthgvrhhnpeejhedvueejkeduvdegieegvdekfedugeehlefggeejgeetkefhleeiueekfedtkeenucffohhmrghinhepvggtlhhusgdrshgvnecukfhppeduieejrdekledruddtiedrvdegkeenucevlhhushhtvghrufhiiigvpeehleenucfrrghrrghmpehinhgvthepudeijedrkeelrddutdeirddvgeekpdhhvghlohepohejvddrphhtrhekkeegrdgvmhgrihhlrdgvtghluhgsrdhsvgdpmhgrihhlfhhrohhmpegsohhunhgtvghsoddvvddtjeefhedutddqvgehfeelqdhkrggrnhguvghrvdepohhnlhhinhgvrdhnohesvghmieejtdelrdhkrghpphgrhhhlrdgtohhmpdhnsggprhgtphhtthhopedupdhrtghpthhtohepkhgrrghnuggvrhdvsehonhhlihhnvgdrnhho
X-Rspamd-Status: No, score=2.09
X-Rspamd-Result: default: False [2.09 / 6.00]; URI_COUNT_ODD(1.00)[21];
 DMARC_POLICY_ALLOW(-0.50)[kappahl.com,none];
 MID_RHS_NOT_FQDN(0.50)[]; MV_CASE(0.50)[];
 R_PARTS_DIFFER(0.50)[74.9%];
 FORGED_SENDER(0.30)[noreply@kappahl.com,bounces@em6709.kappahl.com];
 R_DKIM_ALLOW(-0.20)[kappahl.com:s=s1];
 MANY_INVISIBLE_PARTS(0.20)[3];
 R_SPF_ALLOW(-0.20)[+ip4:167.89.106.248:c];
 MIME_GOOD(-0.10)[multipart/alternative,text/plain];
 ZERO_FONT(0.10)[1]; HAS_LIST_UNSUB(-0.01)[];
 FROM_HAS_DN(0.00)[]; ARC_NA(0.00)[];
 SUBJECT_HAS_EXCLAIM(0.00)[]; RCVD_TLS_LAST(0.00)[];
 DKIM_TRACE(0.00)[kappahl.com:+];
 TAGGED_FROM(0.00)[22073510-e539-kaander2=online.no];
 RCVD_COUNT_TWO(0.00)[2];
 FROM_NEQ_ENVFROM(0.00)[noreply@kappahl.com,bounces@em6709.kappahl.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TO_DN_NONE(0.00)[];
 MISSING_XM_UA(0.00)[];
 ASN(0.00)[asn:11377, ipnet:167.89.96.0/20, country:US];
 MIME_TRACE(0.00)[0:+,1:+,2:~]; RCPT_COUNT_ONE(0.00)[1]
X-Origin-Country: US
X-Origin-ASN: 11377
X-WHL: LR
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Ikke glem medlemstilbudet ditt Please use an email client
 supporting HTML email,
 or click this link to view the email online:
 https://kappahl.customer.eclub.se/open/email/online/X6n-djhVtUCSzLHmAICdhg/IfmSmLDQakKbdK4hAOvsWQ/iyjrmd6xnkGN_rHsAFKTOA
 Content analysis details:   (4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [38.129.16.74 listed in zen.spamhaus.org]
 -0.9 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [38.129.16.74 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 HTML_TAG_BALANCE_BODY  BODY: HTML has unbalanced "body" tags
 0.1 MIME_HTML_MOSTLY       BODY: Multipart message mostly text/html MIME
 0.0 AC_BR_BONANZA RAW: Too many newlines in a row... spammy template
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 HOSTED_IMG_MULTI_PUB_01 Multiple hosted images at public site
X-Headers-End: 1suewr-0000Yf-9L
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Final Notice Coming for a Yeti Crossroads Backpack
 Reward
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Ikke glem medlemstilbudet ditt

Please use an email client supporting HTML email, or click this link to view the email online: 

https://kappahl.customer.eclub.se/open/email/online/X6n-djhVtUCSzLHmAICdhg/IfmSmLDQakKbdK4hAOvsWQ/iyjrmd6xnkGN_rHsAFKTOA
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
