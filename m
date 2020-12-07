Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CC62D0A82
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Dec 2020 07:03:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1km9cY-0007LS-4G; Mon, 07 Dec 2020 06:03:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgxu519@mykernel.net>) id 1km9cW-0007L6-MN
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Dec 2020 06:03:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:Reply-To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oUSs20Tqr87VJ4Dr8Z9/uo0+fp+3MgSiNTywC26Lu8U=; b=f+3C+9JVVsU+GiuGgrKoXK4cy3
 GvWq3Zfw9b9Age1V10BgAkvErpNcKNMLuDGg1KbynBDFDXcntWAFsFbvdbfmTHcZFI3KXeBJJWDMW
 vJetDo8CJlFDh1meIOSGNgS7NSM32Ta04b6z8fV+CSxpcd86oSIoXl7sEtqETSEWBi0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:Reply-To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oUSs20Tqr87VJ4Dr8Z9/uo0+fp+3MgSiNTywC26Lu8U=; b=dB64t1kWebDwIqaafWSExPlRMo
 nxuxXlUykuCG2YmbIO9o5XlAG9SdRPafzY/uoYl9aA5tLxRKOSdc/A6SyoocMt2T69yRN3A4Vj2lY
 Wy77kF7iM3qUt60QF8I4FrFQ+xKi+8UhwTFbhuu+Yh0qFnTQvBbgPNjDQBFnQvewwWtk=;
Received: from sender2-pp-o92.zoho.com.cn ([163.53.93.251])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1km9cK-001aFf-6h
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Dec 2020 06:03:36 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1607320954; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=nNjPgyWZuQems30uAjW1VvUjLTlB330Ug51pLPJDZScD2h75Z2BY9tDW8t3lTAyz3S4evD+itbRcGWFi1+AnpRfeYVqQw3SZg8xaHzOyNt77PCLw6XdcX0sk4tw9x6rW+nGt4LMSvWkuibGeidDqf9o0CktYYAaXCELQ/FWXm4g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1607320954;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:Reply-To:References:Subject:To;
 bh=oUSs20Tqr87VJ4Dr8Z9/uo0+fp+3MgSiNTywC26Lu8U=; 
 b=SrGuIFodK86OSKqbdTj4MBgwC04kOIQS+LWXFAbVqApTIGhyBl0FXLaZOuM0PZWsWFEwGOCU2zYco/m+yTDfjuU9Mo0/nhqcaa8p+7PXu2xOIYKA5KCx+diyrhD5YG0DO/VXv/oZGy5Qyy13PPFY5G1LP5gf/QOUo0vyNILLO14=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=mykernel.net;
 spf=pass  smtp.mailfrom=cgxu519@mykernel.net;
 dmarc=pass header.from=<cgxu519@mykernel.net>
 header.from=<cgxu519@mykernel.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1607320954; 
 s=zohomail; d=mykernel.net; i=cgxu519@mykernel.net;
 h=Date:From:Reply-To:To:Cc:Message-ID:In-Reply-To:References:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
 bh=oUSs20Tqr87VJ4Dr8Z9/uo0+fp+3MgSiNTywC26Lu8U=;
 b=QiAKmotU2fjAqoVADG4xD9LP77gn1weSBFvbBkdKls/Gr4i7AiXnhHOeWBrD8eLE
 2gyAQfOKsN8z7UN7+qDLAIEUhZfLIn+u9bQpv+CEGHmABRNUc7FzJetf52vEY0Xan4h
 khiSqvUykQJq+4aUQTjYPoc5N6vX7mXGvOetTIJk=
Received: from mail.baihui.com by mx.zoho.com.cn
 with SMTP id 1607320951696384.7763970692308;
 Mon, 7 Dec 2020 14:02:31 +0800 (CST)
Date: Mon, 07 Dec 2020 14:02:31 +0800
From: Chengguang Xu <cgxu519@mykernel.net>
To: "Dominique Martinet" <asmadeus@codewreck.org>
Message-ID: <1763bcb5b8e.da1e98e51195.9022463261101254548@mykernel.net>
In-Reply-To: <20201206205318.GA25257@nautica>
References: <20201205130904.518104-1-cgxu519@mykernel.net>
 <20201206091618.GA22629@nautica> <20201206205318.GA25257@nautica>
MIME-Version: 1.0
Importance: Medium
User-Agent: ZohoCN Mail
X-Mailer: ZohoCN Mail
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1km9cK-001aFf-6h
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: create writeback fid on shared
 mmap
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
Reply-To: cgxu519@mykernel.net
Cc: ericvh <ericvh@gmail.com>, lucho <lucho@ionkov.net>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 v9fs-developer <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IC0tLS0g5ZyoIOaYn+acn+S4gCwgMjAyMC0xMi0wNyAwNDo1MzoxOCBEb21pbmlxdWUgTWFydGlu
ZXQgPGFzbWFkZXVzQGNvZGV3cmVjay5vcmc+IOaSsOWGmSAtLS0tCiA+IERvbWluaXF1ZSBNYXJ0
aW5ldCB3cm90ZSBvbiBTdW4sIERlYyAwNiwgMjAyMDoKID4gPiBDaGVuZ2d1YW5nIFh1IHdyb3Rl
IG9uIFNhdCwgRGVjIDA1LCAyMDIwOgogPiA+ID4gSWYgdm1hIGlzIHNoYXJlZCBhbmQgdGhlIGZp
bGUgd2FzIG9wZW5lZCBmb3Igd3JpdGluZywKID4gPiA+IHdlIHNob3VsZCBhbHNvIGNyZWF0ZSB3
cml0ZWJhY2sgZmlkIGJlY2F1c2Ugdm1hIG1heSBiZQogPiA+ID4gbXByb3RlY3RlZCB3cml0YWJs
ZSBldmVuIGlmIG5vdyByZWFkb25seS4KID4gPiAKID4gPiBIbSwgSSBndWVzcyBpdCBtYWtlcyBz
ZW5zZS4KID4gCiA+IEkgaGFkIGEgc2Vjb25kIGxvb2ssIGFuZCBnZW5lcmljX2ZpbGVfcmVhZG9u
bHlfbW1hcCB1c2VzIHZtYSdzCiA+IGB2bWEtPnZtX2ZsYWdzICYgVk1fTUFZV1JJVEVgIGluc3Rl
YWQgKHRvZ2V0aGVyIHdpdGggVk1fU0hBUkVEKSwKID4gd2hpbGUgbWFwcGluZ193cml0YWJseV9t
YXBwZWQgdWx0aW1hdGVseSBiYXNpY2FsbHkgb25seSBzZWVtcyB0bwogPiB2YWxpZGF0ZSB0aGF0
IHRoZSBtYXBwaW5nIGlzIHNoYXJlZCBmcm9tIGEgbG9vayBhdCBtYXBwaW5nX21hcF93cml0YWJs
ZQogPiBjYWxsZXJzPyBJdCdzIG5vdCB2ZXJ5IGNsZWFyIHRvIG1lLgogPiAKID4gLCBWTV9NQVlX
UklURSBpcyBzZXQgYW55dGltZSB3ZSBoYXZlIGEgc2hhcmVkIG1hcCB3aGVyZSBmaWxlIGhhcwog
PiBiZWVuIG9wZW5lZCByZWFkLXdyaXRlLCB3aGljaCBzZWVtcyB0byBiZSB3aGF0IHlvdSB3YW50
IHdpdGggcmVnYXJkcyB0bwogPiBwcm90ZWN0aW5nIGZyb20gbXByb3RlY3QgY2FsbHMuCiA+IAog
PiBIb3cgYWJvdXQgc2ltcGx5IGNoYW5naW5nIGNoZWNrIGZyb20gV1JJVEUgdG8gTUFZV1JJVEU/
CgpJdCB3b3VsZCBiZSBmaW5lIGFuZCBiYXNlZCBvbiB0aGUgY29kZSBpbiBkb19tbWFwKCksIGl0
ICBzZWVtcyB3ZSBldmVuIGRvbid0Cm5lZWQgZXh0cmEgY2hlY2sgaGVyZS4gIFRoZSBjb25kaXRp
b24gKHZtYS0+dm1fZmxhZ3MgJiBWTV9TSEFSRUQpIHdpbGwgYmUgZW5vdWdoLgpBbSBJIG1pc3Np
bmcgc29tZXRoaW5nPwoKVGhhbmtzLApDaGVuZ2d1YW5nCgogPiAKID4gICAgICB2OWlub2RlID0g
VjlGU19JKGlub2RlKTsKID4gICAgICBtdXRleF9sb2NrKCZ2OWlub2RlLT52X211dGV4KTsKID4g
ICAgICBpZiAoIXY5aW5vZGUtPndyaXRlYmFja19maWQgJiYKID4gICAgICAgICAgKHZtYS0+dm1f
ZmxhZ3MgJiBWTV9TSEFSRUQpICYmCiA+IC0gICAgICAgICh2bWEtPnZtX2ZsYWdzICYgVk1fV1JJ
VEUpKSB7CiA+ICsgICAgICAgICh2bWEtPnZtX2ZsYWdzICYgVk1fTUFZV1JJVEUpKSB7CiA+ICAg
ICAgICAgIC8qCiA+ICAgICAgICAgICAqIGNsb25lIGEgZmlkIGFuZCBhZGQgaXQgdG8gd3JpdGVi
YWNrX2ZpZAogPiAgICAgICAgICAgKiB3ZSBkbyBpdCBkdXJpbmcgbW1hcCBpbnN0ZWFkIG9mCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZl
bG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Bl
cgo=
