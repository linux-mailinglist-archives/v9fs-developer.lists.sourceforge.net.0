Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D45518CB6
	for <lists+v9fs-developer@lfdr.de>; Tue,  3 May 2022 20:59:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nlxje-0003cz-5R; Tue, 03 May 2022 18:58:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <Hanes.Thomas44@asda.co.uk>) id 1nlxjc-0003cp-CL
 for v9fs-developer@lists.sourceforge.net; Tue, 03 May 2022 18:58:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vk57Xn/TJwoZyL9klKFwmyfRT3WYn5+dQ4cSYQUexUE=; b=JSqX/8P4dip7c7qehFdbm1RNcB
 3r3UusUHKIHFxfBfW8PX6p4T8TYHCrupDI0TJWywMc79VkeZN9SWso2m7jxPT8sTSCZEk9IfJYCHf
 0HkYrP0s5HfT7Fu2ibluvaHkiP8AN0oyOzefEr36tfyFA2hzlDNV5JTHr2sCw1XSI8T0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vk57Xn/TJwoZyL9klKFwmyfRT3WYn5+dQ4cSYQUexUE=; b=P
 gYjdYuSNau3hk6vW5avZ5UbBNEw0Mlj01tnDsURKKPpwvk7ZL+xHcmnrVK2osJ4fxe99c5GbPNv6h
 hlXg91WEvqirtMcFQQCrcNap64co5r7zejGDVEgQqYwDW5WSBRVhgGvWA0o8QgzamojJnQPY9KsgP
 p/0kvOOfV/xVERwE=;
Received: from mail.77msk.ru ([84.204.203.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nlxja-0007Ia-Ht
 for v9fs-developer@lists.sourceforge.net; Tue, 03 May 2022 18:58:55 +0000
Received: from mail.77msk.ru (proxysrv.domain007.com [192.168.2.20])
 by hermes.domain007.com (Postfix) with ESMTP id 7380AFE6C72
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  3 May 2022 21:28:26 +0300 (MSK)
Received: from asda.co.uk (unknown [20.97.211.134])
 by gatekeeper.domain007.com (Postfix) with ESMTPSA id 0AEB73200AE
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  3 May 2022 21:28:25 +0300 (MSK)
From: ASDA Stores Limited <Hanes.Thomas44@asda.co.uk>
To: v9fs-developer@lists.sourceforge.net
Date: 03 May 2022 18:28:25 +0000
Message-ID: <20220503141536.0A97F7EBC49C68C2@asda.co.uk>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.4 at hermes
X-Virus-Status: Clean
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Dear v9fs-developer We are interested in having some of your
 hot selling product in our stores and outlets spread all over United Kingdom, 
 Northern Island and Africa. ASDA Stores Limited is one of the highest- ranking
 Wh [...] Content analysis details:   (6.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [84.204.203.133 listed in psbl.surriel.com]
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [84.204.203.133 listed in dnsbl-1.uceprotect.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nlxja-0007Ia-Ht
Subject: [V9fs-developer] ASDA Procurement order
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
Reply-To: sales@asdaa.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RGVhciB2OWZzLWRldmVsb3BlcgoKV2UgYXJlIGludGVyZXN0ZWQgaW4gaGF2aW5nIHNvbWUgb2Yg
eW91ciBob3Qgc2VsbGluZyBwcm9kdWN0IGluIApvdXIgc3RvcmVzIGFuZCBvdXRsZXRzIHNwcmVh
ZCBhbGwgb3ZlciBVbml0ZWQgS2luZ2RvbSwgTm9ydGhlcm4gCklzbGFuZCBhbmQgQWZyaWNhLiBB
U0RBIFN0b3JlcyBMaW1pdGVkIGlzIG9uZSBvZiB0aGUgaGlnaGVzdC0KcmFua2luZyBXaG9sZXNh
bGUgJiBSZXRhaWwgb3V0bGV0cyBpbiB0aGUgVW5pdGVkIEtpbmdkb20uIAogIApXZSBzaGFsbCBm
dXJuaXNoIG91ciBkZXRhaWxlZCBjb21wYW55IHByb2ZpbGUgaW4gb3VyIG5leHQgCmNvcnJlc3Bv
bmRlbnQuIEhvd2V2ZXIsIGl0IHdvdWxkIGJlIGFwcHJlY2lhdGVkIGlmIHlvdSBjYW4gc2VuZCAK
dXMgeW91ciBjYXRhbG9nIHRocm91Z2ggZW1haWwgdG8gbGVhcm4gbW9yZSBhYm91dCB5b3VyIGNv
bXBhbnkncyAKcHJvZHVjdHMgYW5kIHdob2xlc2FsZSBxdW90ZS4gSXQgaXMgaG9wZWZ1bCB0aGF0
IHdlIGNhbiBzdGFydCBhIAp2aWFibGUgbG9uZy1sYXN0aW5nIGJ1c2luZXNzIHJlbGF0aW9uc2hp
cCAocGFydG5lcnNoaXApIHdpdGggeW91LiAgCiAgCiAgCllvdXIgcHJvbXB0IHJlc3BvbnNlIHdv
dWxkIGJlIGRlbGlnaHRmdWxseSBhcHByZWNpYXRlZC4gCiAgCkJlc3QgV2lzaGVzIAogIAogIApI
YW5lcyBTLiBUaG9tYXMgClByb2N1cmVtZW50IE9mZmljZS4gCkFTREEgU3RvcmVzIExpbWl0ZWQg
ClRlbDogICsgNDQgLSA3NDUxMjcxNjUwIApXaGF0c0FwcDogKyA0NCDigJMgNzQ0MTQ0MDM2MCAK
V2Vic2l0ZTogd3d3LmFzZGEuY28udWsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
