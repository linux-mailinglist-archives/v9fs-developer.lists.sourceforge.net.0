Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C53179A7D3
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Sep 2023 14:05:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qfffX-0001Bo-A0;
	Mon, 11 Sep 2023 12:05:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+34502291-403f-v9fs-developer=lists.sourceforge.net@em3226.sendfoxmail.com>)
 id 1qfffV-0001BK-LU for v9fs-developer@lists.sourceforge.net;
 Mon, 11 Sep 2023 12:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:
 Mime-Version:From:Date:Content-Type:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sk/BChnlmx+mFsJ9RgsQdEQ1o1VOdxR7iFbB6gjj86g=; b=kbbE7atd8xIlsdQeiejv5X94Dc
 P/EKVVxek5Wm+JnOOdMMG+vgCWFhrNnNY6W4WBr08cxij703u3IUzFH6IUa9pyJOxJV45CPim7LSR
 3WnoeMUNv7dds4Zpt9BdQ9P+BvvDEIuYMyr9zEeXvr9P/Gm2dydtaqWTuqSkn26hWvlc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sk/BChnlmx+mFsJ9RgsQdEQ1o1VOdxR7iFbB6gjj86g=; b=Fic3k8ZUd2iw31EhCcPpLQCl/k
 3eIUlSaIcxy5+ucTScdV8UZQ+kscRieWSr4PLmh8mEio19nG5sX9lt/lF6iVl/UJMAP5otgG4R4dT
 UWrTDg+Nf107p2Z60hKeozKqyk5p+smiSBEd9RZb2n2gMAuCZSFmmvra6cC/JrwnMwYQ=;
Received: from o9.us1.sendfox.com ([167.89.35.240])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qfffP-0000HC-7W for v9fs-developer@lists.sourceforge.net;
 Mon, 11 Sep 2023 12:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendfoxmail.com;
 h=content-type:from:mime-version:subject:reply-to:list-unsubscribe:to:
 cc:content-type:from:subject:to;
 s=s1; bh=sk/BChnlmx+mFsJ9RgsQdEQ1o1VOdxR7iFbB6gjj86g=;
 b=h+tfQu8QJxhrf9WIfZAHjYXorx0/DWuI5VEOoVZr+wGMGab/7p5M1icjK8xw3QW32YY1
 oIERkuQhBpsXOx4sq9iU0bZL/5LzAb7h4LUEuur7PjUFqNLT+jxYODJGA9pMFWpfNQwQtE
 sTPkWTJJPu9EyYeloilsGIPuhsbq+ArG78QuWLL7+U/oAWcgFEGQ9prAdyRTBPaKeFcn9i
 zDfIi/98G61t7uC5vsGMSnjmj40MGQ9MwicoWxEm3kwdqkp+ZtwXcys1Wi8li4tkZvHpgu
 h2PyQL+JklsZUp1I6EcG5WC/SRnt8gKCFjgNWycLCrc5Xo1I8cXscVFq6NwlsgmA==
Received: by filterdrecv-66949dbc98-dbt7m with SMTP id
 filterdrecv-66949dbc98-dbt7m-1-64FF027A-44
 2023-09-11 12:05:14.613771772 +0000 UTC m=+10671928.174730610
Received: from MzQ1MDIyOTE (unknown) by geopod-ismtpd-8 (SG) with HTTP
 id gjV29l6ERJKrIkdL-ZGAkQ Mon, 11 Sep 2023 12:05:14.426 +0000 (UTC)
Date: Mon, 11 Sep 2023 12:05:17 +0000 (UTC)
Mime-Version: 1.0
Message-ID: <gjV29l6ERJKrIkdL-ZGAkQ@geopod-ismtpd-8>
X-SF-DELIVERABLE: 48ez6vwl
Feedback-ID: elo0kp:3q5z2v:campaign:6cca2329-033f-401d-90f5-e1fa4182d394
X-Mailer: SendFox
X-SF-CAMPAIGN: elo0kp
X-SG-EID: =?us-ascii?Q?PoLznDAJfVWm0JhmuVN1ny+nvxSkLU+mqn1U966fJ0Erv3hCCAlvZb2yLy1sls?=
 =?us-ascii?Q?3lczA=2FkmRS8BmC72jNo6V94ocZF5E9Q4pnOC+lF?=
 =?us-ascii?Q?JovFaTk+DZuylJDxleD6NmbefMF=2Fn+N=2FhrZyiC3?=
 =?us-ascii?Q?715abus8PVv8bzDAJavAn0ekdhSu1oKD5xVO0Dw?=
 =?us-ascii?Q?F8Ud96QUOHXMsE8relGHMTJfGSLT12xrCtPNCVE?=
 =?us-ascii?Q?2Mt=2FpG8Mx2mnVoPwrsDeHQwiDhLufo6DzMntiSE?=
 =?us-ascii?Q?fjsRVbUBJ18K+CdnzRlXg=3D=3D?=
X-SG-ID: =?us-ascii?Q?N2C25iY2uzGMFz6rgvQsb8raWjw0ZPf1VmjsCkspi=2FIBNz1iFG7fYuoVJU3W5=2F?=
 =?us-ascii?Q?IXR3nGlkDOkVO016Tsx6Bo6LKm6EcXo3oj2UBtG?=
 =?us-ascii?Q?7LWC5pW35sl5CLL3OpduCpsIh9y?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: Xh7v+CfeYqGVlxrcmKtJiA==
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  DEAR VALUED CUSTOMER, We're excited to introduce QRPay –
    your all-in-one solution for effortless QR code money transfers. Here's why
    QRPay is a game-changer: * INSTANT TRANSFERS: Say goodbye to waiting with
    swift payment processing. * MOBILE TOP-UPS: Recharge your phone in seconds,
    anytime, anywhere. * BILL PAYMENTS: Easily settle bills and never miss a
   d [...] 
 
 Content analysis details:   (2.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [167.89.35.240 listed in wl.mailspike.net]
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1qfffP-0000HC-7W
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Discover QRPay: Simplifying Digital Payments
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
From: AppDevs via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: AppDevs <appdevs.net@gmail.com>
Cc: AppDevs <mail@sendfoxmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IAoKREVBUiBWQUxVRUQgQ1VTVE9NRVIsCgpXZSdyZSBleGNpdGVkIHRvIGludHJvZHVjZSBRUlBh
eSDigJMgeW91ciBhbGwtaW4tb25lIHNvbHV0aW9uIGZvcgplZmZvcnRsZXNzIFFSIGNvZGUgbW9u
ZXkgdHJhbnNmZXJzLiBIZXJlJ3Mgd2h5IFFSUGF5IGlzIGEKZ2FtZS1jaGFuZ2VyOgoKIAkqIElO
U1RBTlQgVFJBTlNGRVJTOiBTYXkgZ29vZGJ5ZSB0byB3YWl0aW5nIHdpdGggc3dpZnQgcGF5bWVu
dApwcm9jZXNzaW5nLgogCSogTU9CSUxFIFRPUC1VUFM6IFJlY2hhcmdlIHlvdXIgcGhvbmUgaW4g
c2Vjb25kcywgYW55dGltZSwgYW55d2hlcmUuCiAJKiBCSUxMIFBBWU1FTlRTOiBFYXNpbHkgc2V0
dGxlIGJpbGxzIGFuZCBuZXZlciBtaXNzIGEgZHVlIGRhdGUKYWdhaW4uCiAJKiBHTE9CQUwgUkVN
SVRUQU5DRVM6IFNpbXBsaWZ5IGludGVybmF0aW9uYWwgbW9uZXkgdHJhbnNmZXJzLgogCSogVklS
VFVBTCBDQVJEUzogU2VjdXJlIG9ubGluZSBwYXltZW50cyB3aXRoIHZpcnR1YWwgY2FyZHMuCiAJ
KiBGTEVYSUJMRSBJTlRFR1JBVElPTjogU2VhbWxlc3NseSBjb25uZWN0IHdpdGggdmFyaW91cyBw
YXltZW50CmdhdGV3YXlzLgogCSogREVWRUxPUEVSIEFQSTogRGV2ZWxvcGVycywgaW50ZWdyYXRl
IFFSUGF5IHdpdGggZWFzZS4KCkJ1eSBRUlBheSBhbmQgcmV2b2x1dGlvbml6ZSB5b3VyIGRpZ2l0
YWwgcGF5bWVudCBzb2x1dGlvbiBidXNpbmVzcy4KVmlzaXQgcHJvZHVjdCBkZXRhaWxzIHRvIGdl
dCBzdGFydGVkLgoKVGFwIHRvIFNlZSB0aGUgUHJvZHVjdCBbL2h0dHBzOi8vc2VuZGZveC5jb20v
dHJrL2NsaWNrLzQ4ZXo2dndsL3Z3cnhyel0KCkJlc3QgUmVnYXJkcy4KCkFQUERFVlMgLSBTT0ZU
V0FSRSBTT0xVVElPTlMKCldFQlNJVEU6IEhUVFBTOi8vQVBQREVWUy5ORVQKWy9odHRwczovL3Nl
bmRmb3guY29tL3Ryay9jbGljay80OGV6NnZ3bC93dnI4cjZdCgpXSEFUU0FQUDogKzQ0NzQ2MjI0
NjgxNAoKIAkJQXBwRGV2cyBGbGF0OiAxNDA0LCBCbG9jazogQywgQnVpbGRpbmc6IEtyaXNobm9j
aHVyYSwgU2VjdG9yOiAxOCwKVXR0YXJhIERoYWthLCBEaGFrYSAxMjMwIEJhbmdsYWRlc2gKCiAJ
CSBVbnN1YnNjcmliZSBbL2h0dHBzOi8vc2VuZGZveC5jb20vdHJrL3Vuc3Vic2NyaWJlLzQ4ZXo2
dndsXSAKCiAgCgogCQkgW1NlbmRGb3hdIFsvaHR0cHM6Ly9zZW5kZm94LmNvbS90cmsvY2xpY2sv
NDhlejZ2d2wvcnE2N252XSAKCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby92OWZzLWRldmVsb3Blcgo=
