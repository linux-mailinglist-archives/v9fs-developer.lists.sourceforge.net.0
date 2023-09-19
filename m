Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 405977A66B6
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Sep 2023 16:30:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qibkM-0004pv-M9;
	Tue, 19 Sep 2023 14:30:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+34502291-403f-v9fs-developer=lists.sourceforge.net@em3226.sendfoxmail.com>)
 id 1qibkM-0004po-6s for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Sep 2023 14:30:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:
 Mime-Version:From:Date:Content-Type:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KtTXgZOuTYc5adjPwPvT8CVTXwjchxNq42+xQtkyDU0=; b=msMa8LA27nsbvVzYpLZ+acVDhV
 3q1QiSQLwfQgLTsQQt8iUwmvHon6qEwm+f9uSznWBYe5iJMs9T5TQjKiM9Kd2NyD1aRh9WV+jm0le
 bYhO1NNf6D+0Ub5ElQYRq8kQrFnY3cG7E41BOt1Cse17EwvTZ8JjsRSBVBuX4fYmGRn4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KtTXgZOuTYc5adjPwPvT8CVTXwjchxNq42+xQtkyDU0=; b=H9+1W0p+CETa90fF8zTen5PwS/
 r9RJt/x2VKAKhrPr/fxIyHqcdThKTo48KGnJlWGClCIaOECzXVseMtQgXgPzq29Kv9aVjeNqD6HAk
 ILHCwVjRj0cWyJzCxrcKeyhdi9HHMDZHpHbICAIDhD1hhA2CgzJkIlg/nPERFoh8Tdm0=;
Received: from o9.us1.sendfox.com ([167.89.35.240])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qibkD-0000WG-GA for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Sep 2023 14:30:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendfoxmail.com;
 h=content-type:from:mime-version:subject:reply-to:list-unsubscribe:to:
 cc:content-type:from:subject:to;
 s=s1; bh=KtTXgZOuTYc5adjPwPvT8CVTXwjchxNq42+xQtkyDU0=;
 b=o01gEshIX+Fr25CbgLHv1tFWzEG3GJ3chj3bjo6MHYYipcmf9RUzcRE9mtbXS/5b13g1
 bw0S9dkI0oD1aRLGjXvvis1//wZiUV6yJuSLiDU+x1xcT/SOQRHtOz9PKb2LIA0lHho7zo
 67l2A+tOhOiFPcRPd4XXYUfvWm8qq4PGK2DulIbxN9IG9onID65QADPCNqDyBJnqfVkNK4
 R8Q9iVbEIw2NyNZt09lPK7KYbExv1L4RNqTkVMgBOWl9yl+COwtUhDbn292i1VA0+54qzN
 OpUONZpC1Xh/InzObm/BFCJrtPd33vK+4gNs6juPic/KtRccx17w2G04UQGgNADQ==
Received: by filterdrecv-7765c6879f-pwxlv with SMTP id
 filterdrecv-7765c6879f-pwxlv-1-6509B077-8D
 2023-09-19 14:30:15.446667069 +0000 UTC m=+350150.625796681
Received: from MzQ1MDIyOTE (unknown) by geopod-ismtpd-10 (SG) with HTTP
 id ewpuxwEiS5-qg_IoI3iZTA Tue, 19 Sep 2023 14:30:15.349 +0000 (UTC)
Date: Tue, 19 Sep 2023 14:30:22 +0000 (UTC)
Mime-Version: 1.0
Message-ID: <ewpuxwEiS5-qg_IoI3iZTA@geopod-ismtpd-10>
X-SF-DELIVERABLE: 48wvpxr9
X-Mailer: SendFox
X-SF-CAMPAIGN: 484we7
Feedback-ID: 484we7:3q5z2v:campaign:6cca2329-033f-401d-90f5-e1fa4182d394
X-SG-EID: =?us-ascii?Q?PoLznDAJfVWm0JhmuVN1ny+nvxSkLU+mqn1U966fJ0Erv3hCCAlvZb2yLy1sls?=
 =?us-ascii?Q?3lczA=2FkmRS8BmC72jNo6V94vosaR7YhOzXFWKEr?=
 =?us-ascii?Q?cEEZiz4JPJ1T7o0vuXIwdqXTwfLxA82dciU+J+o?=
 =?us-ascii?Q?+SQOclyK51NylWurBYwut5NOUYRehKHTul2upnl?=
 =?us-ascii?Q?UyoRVCIScLCZDtmFSigJPliLgFZqPqxaTsKhGDB?=
 =?us-ascii?Q?=2FrAH6q3KnO2RHinq57puMA88EyVJsPZoIXwh9=2FI?=
 =?us-ascii?Q?esukMTlKnB5aEnDlnGg5w=3D=3D?=
X-SG-ID: =?us-ascii?Q?N2C25iY2uzGMFz6rgvQsb8raWjw0ZPf1VmjsCkspi=2FIBNz1iFG7fYuoVJU3W5=2F?=
 =?us-ascii?Q?IXlubXhnP2b7FQCTRkPiNrcQ=2Fhsdnvlt6uFYl3h?=
 =?us-ascii?Q?jwQ3LqO+IMkgI2Odo93wuJlil+u?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: Xh7v+CfeYqGVlxrcmKtJiA==
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear, In the ever-evolving digital landscape,
 the opportunities
 for entrepreneurship are boundless. Today, we are thrilled to present to
 you a curated list of promising start-up business ideas that can be l [...]
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [167.89.35.240 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 DEAR_NOBODY            RAW: Message contains Dear but with no name
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1qibkD-0000WG-GA
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Are You Looking for Investment Business Solution?
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

IAoKRGVhciwKCkluIHRoZSBldmVyLWV2b2x2aW5nIGRpZ2l0YWwgbGFuZHNjYXBlLCB0aGUgb3Bw
b3J0dW5pdGllcyBmb3IKZW50cmVwcmVuZXVyc2hpcCBhcmUgYm91bmRsZXNzLiBUb2RheSwgd2Ug
YXJlIHRocmlsbGVkIHRvIHByZXNlbnQgdG8KeW91IGEgY3VyYXRlZCBsaXN0IG9mIHByb21pc2lu
ZyBzdGFydC11cCBidXNpbmVzcyBpZGVhcyB0aGF0IGNhbiBiZQpsYXVuY2hlZCB3aXRoIG1pbmlt
YWwgaW52ZXN0bWVudCwgcmFuZ2luZyBhdCBhIGNoZWFwIHJhdGUuIFdpdGggdGhlc2UKaWRlYXMs
IHlvdSBjYW4gaGFybmVzcyB0aGUgcG93ZXIgb2YgdGVjaG5vbG9neSB0byBjcmVhdGUgaW5ub3Zh
dGl2ZQpzb2x1dGlvbnMgYW5kIGNhcnZlIHlvdXIgbmljaGUgaW4gdGhlIGRpZ2l0YWwgbWFya2V0
cGxhY2UuCgpJTlZFU1RNRU5UIEJVU0lORVNTIFNPTFVUSU9OOiBJbnRyb2R1Y2luZyBDcnlwSW52
ZXN0IOKAkyB5b3VyIGNvbXBsZXRlCmNyeXB0b2N1cnJlbmN5IGludmVzdG1lbnQgc29sdXRpb24u
IEFjY2Vzc2libGUgdmlhIEFuZHJvaWQgYW5kIGlPUwphcHBzLCBhIHVzZXItZnJpZW5kbHkgd2Vi
c2l0ZSwgYW5kIGFuIGludHVpdGl2ZSBBZG1pbiBQYW5lbCwKQ3J5cEludmVzdCBvZmZlcnMgcHJl
bWl1bSBmZWF0dXJlczogYSBzZWN1cmUgQ3J5cHRvIFdhbGxldCwgMjArCmRpdmVyc2UgY3J5cHRv
Y3VycmVuY2llcywgcGVyc29uYWxpemVkIEludmVzdG1lbnQgUGxhbnMsIFJlZmVycmFsClN5c3Rl
bSwgTXVsdGktTGV2ZWxpbmcsIGVmZm9ydGxlc3MgZnVuZCBtYW5hZ2VtZW50LCByYXBpZCB3aXRo
ZHJhd2FscywKYW5kIHJvYnVzdCBzZWN1cml0eSB3aXRoIEtZQyBhbmQgR29vZ2xlIEF1dGhlbnRp
Y2F0b3IuIEl0IGhhcyBhCnJlc3BvbnNpdmUgc3VwcG9ydCBzeXN0ZW0sIGZlYXR1cmluZyBMaXZl
IENoYXQgYW5kIFN1cHBvcnQgVGlja2V0cywgaXMKaGVyZSB0byBhc3Npc3QgeW91ciBjdXN0b21l
cnMuIE91ciBjb21taXRtZW50IGlzIGluIGRlbGl2ZXJpbmcKZXhjZXB0aW9uYWwgc29mdHdhcmUg
c29sdXRpb25zIGF0IGEgYnVkZ2V0LWZyaWVuZGx5IGNvc3QsIGVtcG93ZXJpbmcKeW91IHRvIGNh
cGl0YWxpemUgb24gb3Bwb3J0dW5pdGllcyBhbmQgZXhjZWwgaW4gdGhpcyBkeW5hbWljIGluZHVz
dHJ5LgpFbWJyYWNlIHRoZSBvcHBvcnR1bml0eSB0byBlbGV2YXRlIG9yZGluYXJ5IG9wZXJhdGlv
bnMgaW50bwpleHRyYW9yZGluYXJ5IGFjY29tcGxpc2htZW50cyB3aXRoIENyeXBJbnZlc3QuIF9M
ZWFybiBNb3JlXwpbL2h0dHBzOi8vc2VuZGZveC5jb20vdHJrL2NsaWNrLzQ4d3ZweHI5L2c5bGx2
Nl0KClN0YXkgdHVuZWQgZm9yIG1vcmUgZXhjaXRpbmcgdXBkYXRlcyBhbmQgaW5zaWdodHMgZnJv
bSBvdXIgbmV3c2xldHRlcgphcyB3ZSBjb250aW51ZSB0byBzdXBwb3J0IGFuZCBpbnNwaXJlIGFz
cGlyaW5nIGVudHJlcHJlbmV1cnMgbGlrZSB5b3UuCgogCQlBcHBEZXZzIEZsYXQ6IDE0MDQsIEJs
b2NrOiBDLCBCdWlsZGluZzogS3Jpc2hub2NodXJhLCBTZWN0b3I6IDE4LApVdHRhcmEgRGhha2Es
IERoYWthIDEyMzAgQmFuZ2xhZGVzaAoKIAkJIFVuc3Vic2NyaWJlIFsvaHR0cHM6Ly9zZW5kZm94
LmNvbS90cmsvdW5zdWJzY3JpYmUvNDh3dnB4cjldIAoKICAKCiAJCSBbU2VuZEZveF0gWy9odHRw
czovL3NlbmRmb3guY29tL3Ryay9jbGljay80OHd2cHhyOS95a3BwNHldIAoKIApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
