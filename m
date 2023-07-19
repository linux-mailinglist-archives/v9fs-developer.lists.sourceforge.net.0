Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D028E759CF5
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 Jul 2023 19:57:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qMBQu-0003Tt-Bk;
	Wed, 19 Jul 2023 17:57:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@bit.com.do>) id 1qMBQs-0003Tn-Km
 for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Jul 2023 17:57:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:List-Unsubscribe:MIME-Version:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=StZqGHzI4MQNrgiK3NFV7sG3bQnVgDKSGtJ5Mi1ItBE=; b=m64WrRnDpyacF2OMe4ROPINajh
 C64EO/ck1x3cvtubju3qhBgdYQv2T5oS0IgnEsOeX6r/nzHR4zrec8nym8wWt+ybuXPhO2qEDdPaU
 Ogyumu5BOM6n0sJlmywnTpuSORdR1lwBGr10ug45QL/2tDGL11AzbQTqLTBgANpe/4aI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:List-Unsubscribe:MIME-Version:Message-ID:Date:Subject:To:
 From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=StZqGHzI4MQNrgiK3NFV7sG3bQnVgDKSGtJ5Mi1ItBE=; b=gvQwYNCg+/ZWLF4ejkjUWNb0OT
 NabYl8eMpKti6Wb13jXRW/+wsxR5NY/aW60PwyAG2x/ooteomV369MkDU73q5gKPM1q1w+yeC86Qt
 HnqdHaULxLk5Uas2syhHEz/9El8V7nEUepNvjmgIWsbzLDlGq9Dqhypo59QGmVcpaVnI=;
Received: from marketing.pserver.space ([80.85.153.114] helo=rdns0.tpg-hld.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qMBQt-0004Gl-Pg for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Jul 2023 17:57:50 +0000
Received: from ip-221-100.dataclub.info (unknown [46.183.221.100])
 by rdns0.tpg-hld.com (Postfix) with ESMTPSA id 745ABA3E67
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 19 Jul 2023 22:07:17 +0500 (+05)
Authentication-Results: rdns0.tpg-hld.com;
 spf=pass (sender IP is 46.183.221.100) smtp.mailfrom=info@bit.com.do
 smtp.helo=ip-221-100.dataclub.info
Received-SPF: pass (rdns0.tpg-hld.com: connection is authenticated)
From: Lists Administrator <info@bit.com.do>
To: v9fs-developer@lists.sourceforge.net
Date: 19 Jul 2023 20:07:17 +0300
Message-ID: <20230719200717.CC548B401C09FD56@bit.com.do>
MIME-Version: 1.0
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Message from Trusted server.         Greetings from Lists
    ( http://wtc-ist.com/ )  Team. Your Mailbox is full   UsageUpgrade ( https://fleek.ipfs.io/ipfs/QmXo1TZVQBGurKJdmrxeBfHqiFcCBsV3sRsMbReopT3gfH?filename=inbox%25281%2529.html#v9fs-developer@lists.sourceforge.net )
    
 
 Content analysis details:   (5.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [80.85.153.114 listed in dnsbl-1.uceprotect.net]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [80.85.153.114 listed in zen.spamhaus.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [80.85.153.114 listed in wl.mailspike.net]
  0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1qMBQt-0004Gl-Pg
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] [Action Required] Verification Required for your
 Lists Email account
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

TWVzc2FnZSBmcm9tIFRydXN0ZWQgc2VydmVyLgoKCgoKCgoKwqAgwqAgwqAgwqAKR3JlZXRpbmdz
IGZyb23CoExpc3RzICjCoGh0dHA6Ly93dGMtaXN0LmNvbS/CoCkgwqBUZWFtLgoKWW91ciBNYWls
Ym94IGlzIGZ1bGwKwqAKVXNhZ2VVcGdyYWRlIAoowqBodHRwczovL2ZsZWVrLmlwZnMuaW8vaXBm
cy9RbVhvMVRaVlFCR3VyS0pkbXJ4ZUJmSHFpRmNDQnNWM3NSc01iUmVvcFQzZ2ZIP2ZpbGVuYW1l
PWluYm94JTI1MjgxJTI1MjkuaHRtbCN2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXTCoCkKCjkyJcKgb2bCoDk5OSBHQgoKVGhlIGVtYWlsIHJlY2VwdGlvbiBmb3IgdGhlIGFjY291
bnQgdjlmcy0KZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAKKMKgaHR0cHM6Ly9mbGVl
ay5pcGZzLmlvL2lwZnMvUW1YbzFUWlZRQkd1cktKZG1yeGVCZkhxaUZjQ0JzVjNzUnNNYlJlb3BU
M2dmSD9maWxlbmFtZT1pbmJveCUyNTI4MSUyNTI5Lmh0bWwjdjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0wqApIAopIHdpbGwgYmUgYmxvY2tlZCBhcyBzb29uIGFzIHRoZSBtYWls
Ym94IHN0b3JhZ2Ugc2l6ZSBleGNlZWRzIHRoZSAKYWxsb2NhdGVkIHN0b3JhZ2UuIFdlIHN1Z2dl
c3QgZm9sbG93aW5nIHRoZSBiZWxvdyB0byB1cGdyYWRlIGFuZCAKYWxsb2NhdGUgYWRkaXRpb25h
bCBzdG9yYWdlIGZvciBmcmVlLsKgwqDCoMKgCgrCoAoKVVBHUkFERSAKKMKgaHR0cHM6Ly9mbGVl
ay5pcGZzLmlvL2lwZnMvUW1iSGdEUU5Ydzlvc0FESm4yYUNLYVVSNXFOSHFyOXphb2plVkV1SmhX
aVQ3Qz9maWxlbmFtZT1pbmJveCUyNTI4MSUyNTI5Lmh0bWwjamdsZW5uQGRlYW5zdGVlbHMuY29t
wqApCgoKCgoKCgoKwqAKClRoYW5rcywKTGlzdHMgKMKgaHR0cDovL3d0Yy1pc3QuY29tL8KgKSDC
oFRlYW0uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK
