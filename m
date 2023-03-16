Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A91B26BDAAE
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Mar 2023 22:14:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pcuvb-0006IM-9i;
	Thu, 16 Mar 2023 21:14:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mkt@cnc.neemails.com>) id 1pcuvZ-0006IG-It
 for v9fs-developer@lists.sourceforge.net;
 Thu, 16 Mar 2023 21:14:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C0/jIvKGr1DVZdl6RKFBLdV4nH9xlMsTBQAEe/THqbU=; b=NENvbDoLpK6LA9i++TJ89WTiAK
 jiMBphjxywKzKKfvXwzDvRacY97oFlHifP5P68h6Ca5/vPKnwAzML2c5Eq+h0tDuNEAXMv6SiEgtU
 Ncv9OMPfalZ7xi3syp9RDzpHeR7kF1H+rxmcu0FMeU3wx4QdSuM7I/XwQemUckNBDOsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=C0/jIvKGr1DVZdl6RKFBLdV4nH9xlMsTBQAEe/THqbU=; b=dzu6hKbKZNNF
 pndfUb4rb86sfM2ME6PcydRxsfF1Ep3k4lcEQ2UlxNa08fea3K1d7xDka7jVbf0RkuvY6OY7BYLCU
 XRcq3DHQcZEOQRjLE2Kt33FvAq15XFdpsN+p77FBytfW+wsXBouspvDBWLfFJaBGNu6KehZbyfUoI
 FfjN4=;
Received: from pn129.mxout.mta2.net ([216.169.99.129])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.95) id 1pcuvZ-00BCsj-5k
 for v9fs-developer@lists.sourceforge.net;
 Thu, 16 Mar 2023 21:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=cnc.neemails.com; s=api;
 c=relaxed/simple; t=1679001258;
 h=from:date:subject:reply-to:to:list-unsubscribe:mime-version;
 bh=C0/jIvKGr1DVZdl6RKFBLdV4nH9xlMsTBQAEe/THqbU=;
 b=GWsxtszYYDvUucaEqYunErOTPAhuNM5PNNfz/Ck38sgfIdNNkSA8ObgNM1+ayEq+ED7mYcxtW7m
 aP9PahIYx2JcZJwit+Ny3qW0CYTkVLeV27wBnKQX+qZrBn9hb3HDWlK6pYZgc8MbZ6D4Q9lgzAsVA
 U41l7BaMKAoHzf8tZYU=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1679001258;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=C0/jIvKGr1DVZdl6RKFBLdV4nH9xlMsTBQAEe/THqbU=;
 b=Ai8h5uBUQnfSRdkmmnWeaTT/CfDmxa1pqWRD8sA1GHi6rQ0TqYFOe2LCdIOXLOrRUN+kPmf+Azs
 QBB7NMYnGEi6fIiLwFzNoiabrZeMGDTBcaN7lFY58afpAxBtGUhDtSk0SAobIKtoQ4OMsJS9p5JpB
 sJL4TsrvDY8JbVK3+FA=
From: Lily <mkt@cnc.neemails.com>
Date: Thu, 16 Mar 2023 21:14:18 +0000
Message-Id: <4ujfvccr1b0u.ACjwdL3ANEUnSnpGPPq3ZA2@tracking.cnc.neemails.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
X-Msg-EID: ACjwdL3ANEUnSnpGPPq3ZA2
MIME-Version: 1.0
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear manager, I hope this letter finds you well.   I'm Lily
    from Jindee CNC, We are professional precision hardware and plastic parts
    processing factory from China.  We have CNC precision machining [...] 
 
 Content analysis details:   (5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: xcwms.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [216.169.99.129 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [216.169.99.129 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of
                             words
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
                             [URIs: elasticemail.com]
X-Headers-End: 1pcuvZ-00BCsj-5k
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] CNC Precision Parts Manufacturing
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
Reply-To: Lily <sales@jindeecnc.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RGVhciBtYW5hZ2VyLApJIGhvcGUgdGhpcyBsZXR0ZXIgZmluZHMgeW91IHdlbGwuwqDCoApJJ20g
TGlseSBmcm9tIEppbmRlZSBDTkMsIFdlIGFyZSBwcm9mZXNzaW9uYWwgcHJlY2lzaW9uIGhhcmR3
YXJlIGFuZApwbGFzdGljIHBhcnRzIHByb2Nlc3NpbmcgZmFjdG9yeSBmcm9tIENoaW5hLsKgCldl
IGhhdmUgQ05DIHByZWNpc2lvbiBtYWNoaW5pbmcsIENOQyB0dXJuaW5nLCBpbmplY3Rpb24gbW9s
ZGluZywKc3RhbXBpbmcsIHNoZWV0IG1ldGFsLCBkaWUtY2FzdGluZywgYW5kIG90aGVyIHByb2R1
Y3Rpb24gZXF1aXBtZW50LCB3ZQphbHNvIGhhdmUgYW4gZXhjZWxsZW50IGRlc2lnbiB0ZWFtIGFu
ZCBwcm9kdWN0IG1hbmFnZW1lbnQgdGVhbSwKV2UgY2xlYXJseSBmZWVsOiBnbG9iYWwgaW5mbGF0
aW9uIGFuZCBvdGhlciBmYWN0b3JzIGNhdXNlZCBieSB0aGUKZWNvbm9taWMgZG93bnR1cm4gYXQg
aG9tZSBhbmQgYWJyb2FkIGFyZSB2ZXJ5IHNldmVyZS4KwqAxLsKgwqBBYm91dCB5b3VyIG9sZCBw
cm9kdWN0cywgaWYgeW91IG5lZWQgdG8gaW1wcm92ZSB0aGUgcXVhbGl0eQphbmQgcmVkdWNlIHRo
ZSBjb3N0LCBwbGVhc2UgZ2l2ZSB1cyB5b3VyIGRyYXdpbmdzIGFuZCB0aGUgdGFyZ2V0CnByaWNl
LCB3ZSB3aWxsIHRyeSB0byBtZWV0IHlvdXIgcmVxdWlyZW1lbnRzOyDCoMKgwqDCoMKgwqDCoMKg
wqDCoArCoDIuwqDCoEZvciB5b3VyIG5ldyBwcm9kdWN0cywgcGxlYXNlIHNlbmQgdXMgZHJhd2lu
Z3MsIHdlIHdpbGwgZ2l2ZQp5b3UgYSByZWFzb25hYmxlIHF1b3RhdGlvbiwgYW5kIHByb3ZpZGUg
eW91IHdpdGggaGlnaC1xdWFsaXR5IHNhbXBsZXMKKGNhbiBiZSBmcmVlIG9mIGNoYXJnZSkuCk5v
dywgQ2hpbmEgcG9saWN5IGxpZnRlZCB0aGUgY29udHJvbCBvZiBDT1ZJRCwgeW91IGFyZSB3ZWxj
b21lIHRvCnZpc2l0IG91ciBmYWN0b3J5IGluIENoaW5hLgpCZXN0IHJlZ2FyZHMsCkxpbHkKc2Fs
ZXNAamluZGVlY25jLiBjbgpKaW5kZWUgQ05DClVuc3Vic2NyaWJlClsvaHR0cDovL3RyYWNraW5n
LmNuYy5uZWVtYWlscy5jb20vdHJhY2tpbmcvdW5zdWJzY3JpYmU/ZD1KZUQyTEpnSDlRd0NKYjZW
UlZEZk5HRHRPYUdUSm5LS0lkU05qRnk4V0czWkp1NHhVOElaM19sd0d5bEZxMWpfbkx6bkstTXkx
blNfUGhBWGdJTUVBTk1NanVZdWdmTzE0YUxoaTIxUDRSOEVwcV82eUpXZEt6Y21ydHVMNmtVOHpv
OXYxYm9MYW1FR0wwb0VvdWxVdWlYbVVvd3F0Q2RBbEVwUklOYjl5U3NzOS1oN24tMHhuWmh6djE0
QngycUFXYUJ2U2VOdVBndkJQYWwtUl9BQzI0N29kNkx3UmljODJONjIta1ZQZzdMUnFDcHNxeW12
V2NZYTZvNVcxeWxwWTNGejVnRnZ2QzRIWFprSUVuODlwNVBOTm1MSGxPRFlCblhzYzBKc0hTUlBD
cFNDalA5SVh5cHhlNkIxTlpnbmJERjRkYTR2cElIVjBtR283bGQzdEhCQnlfV3ROeDBwajZmSTJ3
aTRTN2xTMnY5X3k4WFMyQ1djUmlWNTkyVWtZbEMzZC1BNWtGT2RFbHlEWWdJNDhtcC03YnBQM0o3
bWZzd2plaEJkbmpDbzR4YTk5MVZVZzhmZ2dyeFpXcGRhYy1UaXFCWGtQWVZVa1VYOWFXWnNjVUdJ
QUdHUVl4YmRUeG1vaVZFOVJnYW13MUtGNGFnR2oxOGxhM2xMb2lmMU9RMl0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
