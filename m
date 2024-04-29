Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0798B64E3
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Apr 2024 23:49:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s1Yrw-0001jp-FC;
	Mon, 29 Apr 2024 21:49:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <support@scope-way.com>) id 1s1Yru-0001jg-SO
 for v9fs-developer@lists.sourceforge.net;
 Mon, 29 Apr 2024 21:49:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yPsJrZgKYklueykKvjO8nXk/3GlcW2TFM8FoJoWDphI=; b=G2lhcFS4Liy96bCyVDJzwuPaHa
 e8S5CLm8jX4YMMfKsGREDDwwY/TOziiIm5oUaISSPOK+ygjgoHBgiFJgC7UUSJKuwdepe5rGKU/86
 wr70LP7NqefQjU2CrhnmjCBLoVLpWfq3xlKNrS1ZZbhB9Nk8EH5ZCVotCUKbekbPwd0o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Reply-To:
 From:Date:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yPsJrZgKYklueykKvjO8nXk/3GlcW2TFM8FoJoWDphI=; b=I
 BuagboP/RXXiraVqc9A8CLHX4oB2Ff6yHVQombMWUfxOSLotrAsWnaCQwomPjLAerzkD12n6wEqNv
 Tv8lt8XjYh8SayXLaWP8jyeOuxrTU5F8G64WvfX2nglawlig30/nN1+kKxqaRnbpUtEwZOVdNxCRn
 d76xK8/uehB2Niw8=;
Received: from [162.214.71.102] (helo=alsaabtrans.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1Yru-0004jv-F4 for v9fs-developer@lists.sourceforge.net;
 Mon, 29 Apr 2024 21:49:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=scope-way.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yPsJrZgKYklueykKvjO8nXk/3GlcW2TFM8FoJoWDphI=; b=TNIJVEJCqMfDLXzjkfxgttaiUd
 yYYRgA6W0WHlkJu5oMsQeWfn7a6DlK19dsH8z/GQVkBDXAN+1zoRx1pHuXAExhRrqoL3wBYIhVBSh
 Sm0SZL1JGyo5wwWXlvFAEqP6Znlrsun2iHqFmU2NCcSDPuZ2EA+cIuB8xL/J41EKJl2vNO19VZGF9
 36R48cqLspQu0ONDa/vDijJUMbAj99L9i63oszyuDRRN86QxXYeL2KOFoy62awocy//kxLd39bp61
 uw8HUWOCg5ODh3wDymVG6DD2oDYZvK5A4XsQCv1iAocTx2eD4AwyiMd1KVaprK3TAR/WJwETf6sv5
 diSGrI+g==;
Received: from scope by ser.servergoogan.net with local (Exim 4.96.2)
 (envelope-from <support@scope-way.com>) id 1s1Yri-0007SU-17
 for v9fs-developer@lists.sourceforge.net;
 Tue, 30 Apr 2024 00:48:50 +0300
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: scope-way.com/.well-known/pki-validation/3abb0911-0c06-46ec-a05e-8c3ed0342f47.php
 for 41.90.176.101
X-PHP-Originating-Script: 1125:3abb0911-0c06-46ec-a05e-8c3ed0342f47.php
Date: Mon, 29 Apr 2024 21:48:50 +0000
From: Kristine Wellenstein <support@scope-way.com>
Message-ID: <334f1746b509737273be29bdae9cbc35@scope-way.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - ser.servergoogan.net
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1125 990] / [47 12]
X-AntiAbuse: Sender Address Domain - scope-way.com
X-Get-Message-Sender-Via: ser.servergoogan.net: authenticated_id: scope/from_h
X-Authenticated-Sender: ser.servergoogan.net: support@scope-way.com
X-Source: 
X-Source-Args: php-fpm: pool scope-way_com                              
X-Source-Dir: scope-way.com:/public_html/.well-known/pki-validation
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello , I've emailed you several times because my foundation
 has chosen you to receive a $2.5 million dollars cash donation for my charity
 project in which I won a fortune of $426 million Mega Million [...] 
 Content analysis details:   (7.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: scope-way.com]
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [162.214.71.102 listed in dnsbl-1.uceprotect.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [162.214.71.102 listed in list.dnswl.org]
 2.9 REPTO_419_FRAUD_GM     Reply-To is known advance fee fraud collector
 mailbox -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [simonhei47[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 PDS_X_PHP_WELLKNOWN    X-PHP-Script shows sent from a PHP script in
 the /.well-known/ dir
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 PHP_SCRIPT             Sent by PHP script
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.1 MONEY_FREEMAIL_REPTO   Lots of money from someone using free
 email?
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
X-Headers-End: 1s1Yru-0004jv-F4
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Important $2.5 Million Donation
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
Reply-To: simonhei47@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8gLCBJJ3ZlIGVtYWlsZWQgeW91IHNldmVyYWwgdGltZXMgYmVjYXVzZSBteSBmb3VuZGF0
aW9uIGhhcyBjaG9zZW4geW91IHRvIHJlY2VpdmUgYSAkMi41IG1pbGxpb24gZG9sbGFycyBjYXNo
IGRvbmF0aW9uIGZvciBteSBjaGFyaXR5IHByb2plY3QgaW4gd2hpY2ggSSB3b24gYSBmb3J0dW5l
IG9mICQ0MjYgbWlsbGlvbiBNZWdhIE1pbGxpb25zIGphY2twb3Qgb24gSmFudWFyeSAyOHRoLiBZ
b3VyIG5hbWUgYW5kIGVtYWlsIGFkZHJlc3MgY2FtZSBvdXQgdmljdG9yaW91cy4gV2hlbiB5b3Ug
Z2V0IHRoaXMgZW1haWwsIHBsZWFzZSBnZXQgaW4gdG91Y2ggd2l0aCBtZSBBU0FQIGZvciBtb3Jl
IGRldGFpbHMgYW5kIHRoZSBjbGFpbWluZyBwcm9jZXNzLgoKQmVzdCB3aXNoZXMsCk1ycy4gS3Jp
c3RpbmUgV2VsbGVuc3RlaW4KQ29weXJpZ2h0IMKpPzIwMjQgVGhlIFdlbGxlbnN0ZWluIEZvdW5k
YXRpb24uIEFsbCBSaWdodHMgUmVzZXJ2ZWQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
