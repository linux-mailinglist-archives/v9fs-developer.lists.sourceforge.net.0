Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEA7AB1D9
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Sep 2019 07:02:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i66Ns-0006tk-1G; Fri, 06 Sep 2019 05:02:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <raymond@sz.siminn.xyz>) id 1i66No-0006tD-DW
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Sep 2019 05:02:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Content-Type:Mime-Version:Reply-To:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ePp3m0SZCBpf++ulYihd9UcThU/XQvPDiB6ycdgs/aU=; b=LNqjTg5HGKRZFLDHAdxkscZJDp
 nlJw8qlKmQP2W8Owuom9GogwrhLveCdgy6UyU1E6koKYQ+l7ie6e2zGdTsOITdpRcJaq6n7Qm/wky
 PcNJg6FhKJNUByKhnsICy2areK766WAw5xWkyOBsRB9ormt9ZFuDOLuXdAinYOnyNFAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Content-Type:Mime-Version:Reply-To:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ePp3m0SZCBpf++ulYihd9UcThU/XQvPDiB6ycdgs/aU=; b=Y
 UYd/FtddPYBF43HdBDZOPoBhlcMtf7Y66pTazXru+uSzw6EbF5OfDNnXkeWkIfKaTzRbVE4XfGKBl
 +H7jxI4pqAC1yXAkRxsWnkDl7/sYe4JSu496HH2mYYE2EODExvCYpdvibR55WlQ3fsVa0DB39ASNt
 rNhyZ10yiLmI3FvM=;
Received: from hu3.sosung.net ([45.35.251.23])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i66Nf-00BVQa-Bj
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Sep 2019 05:02:04 +0000
Received: from edm01.bossedm.com (edm01.chinaemail.cn [180.76.132.54])
 by hu3.sosung.net (Postfix) with ESMTPS id CAC9124978
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  6 Sep 2019 00:47:59 -0400 (EDT)
Received: from unknown (unknown [127.0.0.1])
 by edm01.bossedm.com (Bossedm) with SMTP id 5CA19121416
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  6 Sep 2019 12:47:05 +0800 (CST)
Date: Fri,  6 Sep 2019 12:47:05 +0800 (CST)
From: "=?utf-8?B?WXVtaSA=?=" <yumi@hardfindtronics.com>
To: <v9fs-developer@lists.sourceforge.net>
Mime-Version: 1.0
X-Notify-Mail: No
Message-ID: <1883#47600#v9fs-developer@lists.sourceforge.net#e358f98847f1ee53ccc515b2fd0679bf#1567745225130>
X-Iszbb: Yes
X-ZZY-MESSAGE-ID: FA163E85126BFF27000000000000C9E4715D000000000700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sz.siminn.xyz; s=s9527; 
 t=1567745225; bh=w2dVw9JI3K687BS0lE7fYwg4DzcxIQ8fo7xbZVt1hvE=; 
 h=Date:From:Subject:Message-ID;
 b=Kgxa8Fzdpypvv3n3GkG86soNSUccH/ukVmSq0er44/HkbwYEODLNOIDFUOYDwFlln
 cNFw6E1Ng0aD/CTh/gRV4kCe/82GGHo1aZo6oTCwXb4eW6r5nmIznFVD8dxw9XBi0L
 w1/P2POpDtdN/FhbNkQLeqUMRzdL78IZOf8P3zmo=
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: trollshots.top]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-Headers-End: 1i66Nf-00BVQa-Bj
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Inquiry=3AMAX3471EUA+T__MAXIM?=
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
Reply-To: yumi@hardfindtronics.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQoNCg0KCQ0KCQkmbmJzcDsmbmJzcDtIYXJkJm5ic3A7RmluZCZuYnNwO0VsZWN0cm9u
aWNzIEx0ZC4NCnNvdXJjaW5nIGhhcmQgZmluZCBlbGVjdHJvbmljIGNvbXBvbmVudHMgDQoJDQoJ
DQoJCSZuYnNwOyANCgkNCgkNCgkJRGVhciBDdXN0b21lciwgDQoJDQoJDQoJCU5pY2UgZGF5IQ0K
VGhpcyBpcyBZdW1pIGZyb20gSGFyZCBGaW5kIEVsZWN0cm9uaWNzIEx0ZCh3d3cuaGFyZGZpbmRl
bGVjdHJvbmljcy5jb20pJm5ic3A7d2hpY2ggaXMgYSBwcm9mZXNzaW9uYWwgZWxlY3Ryb25pY3Mg
ZGlzdHJpYnV0b3Igd2l0aCAxMCB5ZWFycyBvZiBleHBlcmllbmNlcy4mbmJzcDsNCldlIGFyZSBn
b29kIGF0Jm5ic3A7SGFyZCBGaW5kJm5ic3A7ZWxlY3Ryb25pYyBjb21wb25lbnRz77yaDQoNCklD
OiBYaWxpbngsIEFsdGVyYSwgVEksIExULCBBRCxNaWNyb24uLg0KTUxDQyBDYXBhY2l0b3I6IE11
cmF0YSwgU2Ftc3VuZywgWWFnZW8sIEFWWCwgS2VtZXQuLg0KRGlvZGUmYW1wO1RyYW5zaXN0b3I6
IFZpc2hheSxUSSxTVC4uDQoNCklmIHlvdSZuYnNwO25lZWQmbmJzcDtzYW1wbGUsIHBscyBmZWVs
IGZyZWUgdG8gY29udGFjdCBtZS4mbmJzcDsNClBscyBjaGVjayBvdXIgaG90IG9mZmVyLHdhaXQg
Zm9yIHlvdXIga2luZGx5IFJGUTogDQoJDQoJDQoJCSZuYnNwOyANCgkNCgkNCgkJTUFYNjE3M0JB
U0ErVCBNQVhJTSAyMDE3KyAxLjczdXNkIDhTT0lDIA0KTUFYMTQ3QkNBUCtUJm5ic3A7IE1BWElN
IDIwMTgrIDAuOTF1c2QgMjBTU09QIA0KTUFYODEzTENTQStUIE1BWElNIDIwMTgrIDAuMjN1c2Qg
OC1TT0lDIA0KTUFYNDgxRUVTQStUJm5ic3A7IE1BWElNIDIwMTcrIDEuMTZ1c2QmbmJzcDsgOFNP
SUMgDQpNQVgyMzJBRVNFK1QmbmJzcDsgTUFYSU0gMjAxOSsgMC4zMnVzZCAxNlNPSUMgDQpNQVgz
NDcxRVVBK1QmbmJzcDsgTUFYSU0gMjAxOCsgMS4wMnVzZCBNU09QLTgNCg0KIA0KCQ0KCQ0KCQlL
ZWVwIHNtaWxpbmcgZXZlcnkgZGF5Jm5ic3A7KCrvv6Mp77+jKSANCgkNCgkNCgkJWXVtaSZuYnNw
OyhQcm9kdWN0Jm5ic3A7TWFuYWdlcikgDQoJDQoJDQoJCUhhcmQmbmJzcDtGaW5kJm5ic3A7RWxl
Y3Ryb25pY3MgTHRkLg0Kc291cmNpbmcgaGFyZCBmaW5kIGVsZWN0cm9uaWMgY29tcG9uZW50cw0K
DQozMTUsIFNoYWhlIFJvZCwgTG9uZyBHYW5nIERpc3RyaWN0LCBTaGVuemhlbiwgQ04sIDUxODAw
MA0KVGVsOiArODYtNzU1LTg0MTggODEwMyZuYnNwOyZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNw
Ow0KU2t5cGUgJmFtcDsgRW1haWw6Jm5ic3A7eXVtaUBoYXJkZmluZGVsZWN0cm9uaWNzLmNvbQ0K
TGlua2VkbG46d3d3LmxpbmtlZGluLmNvbS9pbi95dW1pLWdhbw0KRmFjZWJvb2s6Jm5ic3A7ZmFj
ZWJvb2suY29tL1l1bWloYXJkZmluZA0KJm5ic3A7IA0KCQ0KCQ0KCQlJZiB5b3UgZG9uJ3Qgd2Fu
dCB0byByZWNlaXZlIHRoaXMgbWFpbCwgcGxzIHJldHVybiB3aXRoICJyZW1vdmUiIG9uIHRoZSBz
dWJqZWN0IGxpbmUuIA0KCQ0KCQ0KCQkmbmJzcDsgDQoJDQoNCg0KDQoNCgnmoaPpk7rnvZHigJTi
gJTlnKjnur/mlofmoaPlhY3otLnlpITnkIYgDQrlpoLmnpzkvaDkuI3mg7Plho3mlLbliLDor6Xk
uqflk4HnmoTmjqjojZDpgq7ku7bvvIzor7fngrnlh7vov5nph4zpgIDorqIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
