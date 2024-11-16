Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A31039CFFFC
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Nov 2024 18:15:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tCMOe-0002C2-J8;
	Sat, 16 Nov 2024 17:15:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mee3ealaulds@gmx.com>) id 1tCMOc-0002Bv-Sp
 for v9fs-developer@lists.sourceforge.net;
 Sat, 16 Nov 2024 17:15:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NKJ30y7micvxzeuVLL2OXAVHe7VvIzdLYsypvIUd6cI=; b=C7fQWT47fecTr8ZsdbPb1w0tQn
 vPmRaLey7UmD4LvXVfmRvLphcpG0nXfK6wZMOVqxy4Ds/zvPBPTsxQ5C7QphVNmLqeDJqhlt0PvqA
 SK8rnkx04grqPbiNIFE0UvCqkiU5fWvi0PO9Y7QOgjNKRSxPvwLrb+XCgf9nSctRi00I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NKJ30y7micvxzeuVLL2OXAVHe7VvIzdLYsypvIUd6cI=; b=L
 fOCs5ZhYrYHdREKvf4GWVgFqNqUquVc9qXzlBgoTn0vBxQ4O6Ry2UvysfJ7qyw5sWZTTgqr72rHcL
 wQFpTkIgj/iGcBztM9HuauV42FZZohSOpEZV6zEM3AJocsipGpDPkieRxrjlfc5vb1hp2EbXV4oBY
 zLntUVkCVvkX7FwA=;
Received: from mout.gmx.net ([212.227.15.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tCMOc-0005P2-Gc for v9fs-developer@lists.sourceforge.net;
 Sat, 16 Nov 2024 17:15:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
 s=s31663417; t=1731777336; x=1732382136; i=mee3ealaulds@gmx.com;
 bh=NKJ30y7micvxzeuVLL2OXAVHe7VvIzdLYsypvIUd6cI=;
 h=X-UI-Sender-Class:Message-ID:From:To:Subject:Date:MIME-Version:
 Content-Type:cc:content-transfer-encoding:content-type:date:from:
 message-id:mime-version:reply-to:subject:to;
 b=JIVX1BI1XWkDMITOlW48GzxM29Fd/+tn2hME7f3EJT6X43DK7GL5pBZyLdh6FSOl
 rdtpJ9IKf5R1GeXpdeHvEXZH6fmg0LIEmgdDmH3cWi6RtPDVBVGMdp6tvrZTHjvkU
 P5UPuwPJinu+cj5paKBFIplbkXB11CP0wC3O7m8o7g6YKcJQFgFc574DtkWvdmmU9
 5KWLwaVwoYX2RGqxnV2rY4tiey7Kir//4nUrPIBfeq0QOHBdOBwcE1MQ/ITQeiLMS
 q9HjSZU+LW3yX37k0jVWGdpExY8UAqN9q3+ENAW3TxirHKbGdZkRDOvEscLFL0Gh5
 oxJd+JGFjukJS4dleg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from 93.175.249.12 ([93.175.249.12]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MUGe1-1tLwma1Qvr-00MW60 for
 <v9fs-developer@lists.sourceforge.net>; Sat, 16 Nov 2024 18:15:35 +0100
Message-ID: <8d8ea40fb926404b6d377ed53612391f2c31ee@gmx.com>
To: v9fs-developer@lists.sourceforge.net
Date: Sat, 16 Nov 2024 20:15:33 +0300
MIME-Version: 1.0
X-Provags-ID: V03:K1:24fQPm9To6JzGjVfWujld+Q87nQiWfFkvVZOduSZvvw3HRlY9xn
 ScJ5HpGeV3/hOWt+Oc5CCcLlri4u7xbH8t3etl3YvmZsga6gFM6eHkIXO3MCK7Ww3IMGzDg
 iuibrj3OqqeNX6clWmsrzc6JJs3MIrvRk843mVo1o09iYf1l5r24Jy6ER5KI0gsqQqdcBP7
 7NJWZXar0xf58nqaKXBCg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:F1Du5j8wN5w=;2BozduG8K3yrmYd/YLBQcaS2bje
 5emvG8ddjXnHs82+89zw9aoIg2qzLg8xWWEz40MzzkGTBJYTIrDUEHkEy0aYvCnXkEXpNqrDn
 mSWfTRsQenpHn3cznFl3/3TDI5J9bZqETx0MK8HzIVtJPMedqGNHPYeIjZ8NTcnweRxM9iEUd
 cGVUpq4EXFjM8k4VxtLODx4PLQZjidL4ChRpFJ/PEjK3BhJLWkVPjOyBMZQiH5OcWLACMbHlj
 04W/4+2+S2yrh/0l0AO9aBL67IvV5evmhCyF5qedkMPa7ICT+iBCWBgHjds86As9k4C6YkJQM
 VQsZA9bhn6waHy+Mifc8OIbpsYYWtG7/vXykSZnPNRXGqad9Mv+qOXWgho/DTg6HMw2heVwbZ
 xP5l1M6YQMxkw0L6H5vwOCXpfZ4OeHsnPhaScFd6AO/vf7OzmSTjEM+p8jg4mG56Ug2PmyRgk
 TjGL8J0ylfnswa9G7Qgiy9y7wggNEUyIRo6M8o5YCRBx+J5hP4usWEuTvO9pBRBEzLPSDXucX
 pTQvk6eLXw0mmAVHJP39apyASG9pcW6Dif3Y4hx5VOth26Jb9hH7MRynBOqn00AnpCMJSrQmy
 6rNzGIcTCIKlXc1Alb3ty8Dq7OeQUfeLZbMobQGmGzFRlNGPCrgMoocdIUNE4VfKYoR5vgcAP
 ke91Tn+iXafW7euiD//CZnc5s1vAFiVZ7egGeInHYEDKwt8hok5SGhETLCvaTXa/lPItbTHzV
 E3BYuqT2/WzNg+mhPmhl7VHcvsfeYXztjO2G2+Ocz72pW1cC5PtTyLD1seF4h0mHC5l1SVK6O
 I5sdZLgGYjOrAu1iYB6SvNeQK1ryiMzgZmtY4KuqS2cK4sy/sa6A8RQWeB2EeMMFNGvbbKyMh
 qRQYT7dZVOO3rvplK8JiOCqBaULasuBzplYj97UEFhLiZQoh9m4eJOLraxIhPXpW40raKnaCZ
 aWj4EulviVjsbIq3yAZWLxjKmwO6IL6Wf6jtA91EB/ytHZuu8l8Whh5FskT9UtRVjLOOyJlQX
 Duk9fo6PE4ntWP7QM+dndHWFD4zsm9JMCx/6/0J
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Appreciated Colleague, Thank you for your forbearance, and
 we regret any inconvenience caused by our delayed response. We appreciate
 your questions and are pleased to deliver the necessary details to you. 
 Content analysis details:   (4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [93.175.249.12 listed in zen.spamhaus.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [212.227.15.18 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [212.227.15.18 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mee3ealaulds[at]gmx.com]
 1.6 HTML_IMAGE_ONLY_12     BODY: HTML: images with 800-1200 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.18 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [212.227.15.18 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tCMOc-0005P2-Gc
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Good morning,
 Requested Background Material Enclosed .
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
From: Diann Case via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Diann Case <mee3ealaulds@gmx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

QXBwcmVjaWF0ZWQgQ29sbGVhZ3VlLAoKVGhhbmsgeW91IGZvciB5b3VyIGZvcmJlYXJhbmNlLCBh
bmQgd2UgcmVncmV0IGFueSBpbmNvbnZlbmllbmNlIGNhdXNlZCBieSBvdXIgZGVsYXllZCByZXNw
b25zZS4gV2UgYXBwcmVjaWF0ZSB5b3VyIHF1ZXN0aW9ucyBhbmQgYXJlIHBsZWFzZWQgdG8gZGVs
aXZlciB0aGUgbmVjZXNzYXJ5IGRldGFpbHMgdG8geW91LgoKQXR0YWNoZWQgdG8gdGhpcyBlbWFp
bCwgeW91IHdpbGwgZmluZCBhIHNjcmVlbnNob3Qgd2l0aCBpbXBvcnRhbnQgaW5zaWdodHMgcmVs
YXRlZCB0byB5b3VyIGlucXVpcnkuIFdlIGludml0ZSB5b3UgdG8gb3BlbiB0aGUgZmlsZSB0byBy
ZXZpZXcgdGhlIHNwZWNpZmljcyBhbmQgZ2FpbiBhIHRob3JvdWdoIGdyYXNwIG9mIHRoZSBzaGFy
ZWQgZGF0YS4KClNob3VsZCB5b3UgaGF2ZSBhbnkgaW5xdWlyaWVzIG9yIHJlcXVpcmUgZnVydGhl
ciBzdXBwb3J0LCBwbGVhc2UgZmVlbCBmcmVlIHRvIGdldCBpbiB0b3VjaC4gV2UgYXJlIGFsd2F5
cyBkZWxpZ2h0ZWQgdG8gc3VwcG9ydCB5b3UgYW5kIHJlYWR5IHRvIHByb3ZpZGUgYW55IGFzc2lz
dGFuY2UgbmVjZXNzYXJ5LgoKV2l0aCByZXNwZWN0LApEaWFubsKgQ2FzZQpFbHlzaXVtIEVudGVy
cHJpc2VzLCBMTEMKKzEgKDIxMikgMjc5LTY3LTQ1CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
