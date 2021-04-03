Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D58F35357F
	for <lists+v9fs-developer@lfdr.de>; Sat,  3 Apr 2021 22:17:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lSmhw-0004Dm-Q7; Sat, 03 Apr 2021 20:17:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mhbennett@byu.edu>) id 1lSmhv-0004Da-RI
 for v9fs-developer@lists.sourceforge.net; Sat, 03 Apr 2021 20:17:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+ylUh8Pl7VJ7xfcxtr6tPo9mzV0MIpwf/4XKMHgaU6k=; b=XgsRYgmWqUgbGaC+lrCx08McIG
 yn6Cl3mqKqbI3MK1stAWNqDPEmVpHhteG5XOoyqZkGp9+aVNABLgaE4vDJticDxbCo6HTFxpbwwFc
 HQc+D31sauN3ZoM61PhHCE5kUDGaqF2bagMy6LUzQVi+tkguAEK8bWNL4nxuQ1Yoz05k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+ylUh8Pl7VJ7xfcxtr6tPo9mzV0MIpwf/4XKMHgaU6k=; b=a
 N77gwvXUX6bbuS/Tch+MkdVuZ2195u1E37drzyBim/x/9AMH0AD3J0NIJiVlJjhwrBRBZvOOMznlC
 Z2Q5+n+1w22HcbTFkNZkTLZnlL3LNPRlNFhNWvPiJWfygyu7ecHqr/g9nl8NupewQuqurTSt+oOc6
 2vC7vEAMIjuf6W7o=;
Received: from [103.51.153.218] (helo=byu.edu)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1lSmht-00CqRQ-UG
 for v9fs-developer@lists.sourceforge.net; Sat, 03 Apr 2021 20:17:23 +0000
From: Felix <mhbennett@byu.edu>
To: v9fs-developer@lists.sourceforge.net
Date: 4 Apr 2021 01:47:12 +0530
Message-ID: <20210404014712.381B2160BE67CBD5@byu.edu>
MIME-Version: 1.0
X-Spam-Score: 7.6 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 NA_DOLLARS BODY: Talks about a million North American dollars
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [103.51.153.218 listed in psbl.surriel.com]
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [103.51.153.218 listed in bl.score.senderscore.com]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.51.153.218>]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NEUTRAL       SPF: HELO does not match SPF record (neutral)
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [103.51.153.218 listed in bl.mailspike.net]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 RCVD_IN_RP_RNBL        RCVD_IN_RP_RNBL renamed to RCVD_IN_VALIDITY_RPBL,
 please update local rules
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.4 MONEY_NOHTML           Lots of money in plain text
 0.0 ADVANCE_FEE_2_NEW_MONEY Advance Fee fraud and lots of money
X-Headers-End: 1lSmht-00CqRQ-UG
Subject: [V9fs-developer] Greetings
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
Reply-To: info@free551.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

R3JlZXRpbmdzLAogCk15IG5hbWUgaXMgRmVsaXgsIGEgZm9ybWVyIENoaWVmIENvbXBsaWFuY2Ug
b2ZmaWNlciBhdCBvbmUgb2YgCkNhbmFkYeKAmXMgZm9yZW1vc3QgQ3J5cHRvY3VycmVuY3kgZXhj
aGFuZ2UgcGxhdGZvcm1zLiBUaGlzIGlzIGEgCnByaXZhdGUgYW5kIGNvbmZpZGVudGlhbCBtZXNz
YWdlIGZyb20gbWUgdG8geW91IGFuZCBJIHJlcXVlc3QgCnRoYXQgaXQgYmUgdHJlYXRlZCBhcyBz
dWNoLgogCkkgYW0gY29udGFjdGluZyB5b3UgaW4gcmVzcGVjdCBvZiBhbiB1cmdlbnQgbWF0dGVy
IChEZWFsKSAKcmVnYXJkaW5nIGZ1bmRzIGluIGV4Y2VzcyBvZiBOaW5lIE1pbGxpb24gVVMgRG9s
bGFycyB3aGljaCAKcmVzdWx0ZWQgZnJvbSBhIGxpcXVpZGF0ZWQgQlRDIGFjY291bnQgYmVsb25n
aW5nIHRvIGEgZGVjZWFzZWQgCmFjY291bnQgaG9sZGVyLiBJIHdpbGwgbGV0IHlvdSBpbiBvbiBt
eSBwbGFuIGFuZCB3aHkgSSBjaG9zZSB0byAKY29udGFjdCB5b3UgaW4gdGhlIGZpcnN0IHBsYWNl
IGFmdGVyIEkgaGF2ZSByZWNlaXZlZCB5b3VyIHJlcGx5IAphbmQgZ2FpbmluZyB5b3VyIGZ1bGwg
Y29uZmlkZW5jZS4KIApNYW55IHRoYW5rcyBhbmQgbG9va2luZyBmb3J3YXJkIHRvIHlvdXIgcmVw
bHkuCiAKRmVsaXguCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by92OWZzLWRldmVsb3Blcgo=
