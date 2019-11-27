Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 918A710B53D
	for <lists+v9fs-developer@lfdr.de>; Wed, 27 Nov 2019 19:09:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ia1kQ-0003dE-Ag; Wed, 27 Nov 2019 18:09:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <boudier.b@yahoo.com>) id 1ia1kO-0003cx-Go
 for v9fs-developer@lists.sourceforge.net; Wed, 27 Nov 2019 18:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Date:Subject:To:From:Mime-Version:
 Message-Id:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vKMigNx96W06SsCADXDRBB7LxnIgJvct/kL34Xn2VWo=; b=OwDbzvG/jpp8mDe35S4oixyQO3
 hHZX2N6I4oBc4UzXKRWzhOEw3wl8FotEi5sSY1u25sgH6xf18aodxbuVsR8ijziVOc0BQ9PENyCcr
 qd/5DZLrsIAYo1jrOtbfeJWelPYjI7P5DIQbCQKIppPBhnvfG/q7y9dAqr8CUvVt9ie8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Date:Subject:To:From:Mime-Version:Message-Id:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vKMigNx96W06SsCADXDRBB7LxnIgJvct/kL34Xn2VWo=; b=J
 mKn8qqil+G/mvzu9JKVzy6BRRXwxP65Ip3B+4TSt1DdssfUScMdQYIFPursO/H8dsTRfNes+w7kKv
 tWZG7OOk36bFqrQ+EczeAZI/eSLp5UEy+L4KsFf9P6aEyLXXd3cjeRucYPKOH3RfCUGOYpNR4NE/A
 GvxvDHlB6fmdihyk=;
Received: from mail.funradio.sk ([62.197.234.5])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.92.2) id 1ia1kL-00FO95-PB
 for v9fs-developer@lists.sourceforge.net; Wed, 27 Nov 2019 18:09:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.funradio.sk (Postfix) with ESMTP id DD8842838C9
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Nov 2019 19:08:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at funradio.sk
Received: from mail.funradio.sk ([127.0.0.1])
 by localhost (mail.funradio.sk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRT7WV7pRGPY for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Nov 2019 19:08:52 +0100 (CET)
Received: from [192.168.8.102] (unknown [82.102.18.70])
 by mail.funradio.sk (Postfix) with ESMTPA id 485E828393A
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Nov 2019 19:08:52 +0100 (CET)
Message-Id: <8EJBC2DM-E43D-T8K5-8RWZ-OCCY51BYGSCC@B-ingenico.com>
Mime-Version: 1.0
From: INGENICO FINANCIAL SOLUTIONS <Supply@B-ingenico.com>
To: v9fs-developer@lists.sourceforge.net
Date: Wed, 27 Nov 2019 19:08:52 +0100
X-Priority: 1
X-Spam-Score: 6.9 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [62.197.234.5 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (boudier.b[at]yahoo.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: b-ingenico.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [62.197.234.5 listed in bl.score.senderscore.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.4 FUZZY_CREDIT           BODY: Attempt to obfuscate words in spam
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 2.0 SPOOFED_FREEMAIL       No description available.
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ia1kL-00FO95-PB
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Demande d ouverture de compte - Pro account
 opening demands
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Qm9uam91cizigKhKZSBzdWlzIE1yIEVMUyBCQUVZRU5TIGplIHN1aXMgY2hlZiBsYSBkaXZpc2lv
biBiZWxnZSBkJ2FwcHJvdmlzaW9ubmVtZW50IGR1IEdyb3VwIElOR0VOSUNPIENvcnBvcmF0ZSBm
b3IgRmluYW5jaWFsIHNvbHV0aW9ucy5Ob3VzIHNvbW1lcyBsZWFkZXIgbW9uZGlhbCBkZXMgc29s
dXRpb25zIGRlIHBhaWVtZW50IGludMOpZ3LDqWVzIGV0IG5vdXMgc29tbWVzIGEgbGEgcmVjaGVy
Y2hlIGRlcyBwbHVzaWV1cnMgcHJvZHVpdHMgZXQgc29sdXRpb25zICggSXQtTXVsdGltw6lkaWEt
UGnDqGNlIGTDqXRhY2jDqSBwb3VyIHNtYXJ0cGhvbmUpIHBvdXIgYW3DqWxpb3JhdGlvbiBkZSBu
b3Mgw6lxdWlwZW1lbnRzLk5vdXMgc291aGFpdGVyb25zIHNhdm9pciBzaSBsIG91dmVydHVyZSBk
IHVuIGNvbXB0ZSBwYXlhYmxlIGVudHJlIHNlcHQgZXQgcXVhdG9yemUgam91cnMgZXN0IHBvc3Np
YmxlIGV0IGNlbGEgbW1lIHBvdXIgdW5lIGNvbW1hbmRlIGRlIGTDqXBhcnQ/w4l0YW50IGRvbm7D
qSBxdWUgbm91cyBuZSBwcmF0aXF1b25zIHBhcyBsZSBwYWllbWVudCBhbnRpY2lww6kgcG91ciBu
b3MgcHJlbWnDqHJlcyBjb21tYW5kZXM7IGwnb2J0ZW50aW9uIGQndW5lIGxpZ25lIGRlIGNyw6lk
aXQgYXVwcsOocyBkZSB2b3RyZSBtYWlzb24gYXNzdXJhbmNlIHNlcmFpdCBub3RyZSBkZXV4acOo
bWUgb3B0aW9uLuKAqE1lcmNpIGRlIHZvdHJlIGNvbXByw6loZW5zaW9u4oCoQ29yZGlhbGVtZW50
IC4K4oCoCkhlbGxvICzigKhJIGFtIE1yIEVMUyBCQUVZRU5TIEkgYW0gdGhlIElUIG1hbmFnZXIg
b2YgdGhlIEJlbGdpYW4gcHJvY3VyZW1lbnQgZGl2aXNpb24gb2YgdGhlIEdyb3VwIElOR0VOSUNP
IENvcnBvcmF0ZSBmcm9tIEZpbmFuY2lhbCBkZXBhcnR1cmUgc29sdXRpb25zLiBXZSBhcmUgd29y
bGQgbGVhZGVyIGluIGludGVncmF0ZWQgcGF5bWVudCBzb2x1dGlvbnMgYW5kIHdlIGFyZSBsb29r
aW5nIGZvciBzZXZlcmFsIHByb2R1Y3RzIGFuZCBzb2x1dGlvbnMgKElULW11bHRpbWVkaWEtbW9i
aWxlIHBob25lIHBhcnRzKSB0byBpbXByb3ZlIG91ciBlcXVpcG1lbnQuV2Ugd2FudCB0byBrbm93
IGlmIHRoZSBvcGVuaW5nIG9mIGFuIGFjY291bnQgcGF5YWJsZSBiZXR3ZWVuIHNldmVuIGFuZCBm
b3VydGVlbiBkYXlzIGlzIHBvc3NpYmxlIGFuZCB0aGlzIGV2ZW4gZm9yIGEgc3RhcnRpbmcgb3Jk
ZXI/IEdpdmVuIHRoYXQgd2UgZG8gbm90IHByYWN0aWNlIHRoZSBhZHZhbmNlIHBheW1lbnQgZm9y
IG91ciBmaXJzdCBvcmRlcnMgOyBPYnRhaW5pbmcgYSBsaW5lIG9mIGNyZWRpdCBmcm9tIHlvdXIg
aG9tZSBpbnN1cmFuY2UgY29tcGFueSB3b3VsZCBiZSBvdXIgc2Vjb25kIG9wdGlvbi7igKh0aGFu
ayB5b3UgZm9yIHlvdXIgdW5kZXJzdGFuZGluZ+KAqENvcmRpYWxseSAuCgpNciBFTFMgQkFFWUVO
UyAtIElUICYgRXF1aXBtZW50cyBNYW5hZ2Vy4oCoIElOR0VOSUNPIEZJTkFOQ0lBTCAgU09MVVRJ
T05TIOKAqEF2ZW51ZSBMZW9uYXJkbyBEYSBWaW5jaSAzLOKAqEItIDE5MzAgWmF2ZW50ZW0gLSBC
RUxHSVFVReKAqCBCVFcgLSBWQVQ6IEJFIDA4ODYgNDc2IDc2M+KAqCBDIDogKzMyNDYwMjI2NzAy
4oCoIFQgOiArMzIyNjc4MDM5OOKAqCBFbWFpbCA6IFN1cHBseUBCLWluZ2VuaWNvLmNvbQoKCk91
ciBDb21wYW55IERldGFpbHM64oCoSU5HRU5JQ08gRklOQU5DSUFMIFNPTFVUSU9OUyBpcyBhIHN1
YnNpZGlhcnkgb2YgSU5HRU5JQ08gR1JPVVAsIGEgY29tcGFueSBzcGVjaWFsaXNpbmcgaW4gcGF5
bWVudCBzb2x1dGlvbnMsIGFuZCBvbmUgb2YgdGhlIHdvcmxkJ3MgbGVhZGluZyBjb21wYW5pZXMg
aW4gdGhlIG1hcmtldC4gVGhlIGdyb3VwLCB3aGljaCBoYXMgb3BlcmF0aW9ucyBpbiBXZXN0ZXJu
IEV1cm9wZSwgdGhlIFVuaXRlZCBTdGF0ZXMsIExhdGluIEFtZXJpY2EsIENoaW5hLCBKYXBhbiwg
QXVzdHJhbGlhIGFuZCBBZnJpY2EsIGhhcyBhcHByb3hpbWF0ZWx5IDgwMDMgZW1wbG95ZWVzIGFy
b3VuZCB0aGUgd29ybGQuIFdpdGggYSB0dXJub3ZlciBvZiBtb3JlIHRoYW4g4oKsIDE1IG1pbGxp
b24gb25seSBpbiBCRUxHSVVNLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
