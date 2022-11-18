Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BB362F259
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Nov 2022 11:18:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovySU-0000KO-Dg;
	Fri, 18 Nov 2022 10:18:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guozihua@huawei.com>) id 1ovySB-0000K3-OU
 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 10:18:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xHVP3fcrteL+8r1Xrxo98qT0ErrTRLbvsbWMbmOMm+o=; b=L3u4aStKZAfJ7NnXqg9z7C/l0h
 wHAnIU/UvSEQYsawSSVv7QGfJo+JEtVsJIz/PlgoPXY1oXMGVnQ4IiJq+IR2twjuJWcV6jlHMWtCQ
 pybssPGKyYI7rEDG1Y5lweM6Ik8T23+3tBULXP0jeEP1IdimiAn12sO0ZXWN3OgBDwMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xHVP3fcrteL+8r1Xrxo98qT0ErrTRLbvsbWMbmOMm+o=; b=ERK0kGEwRKCpz8bScmeB9rHT3R
 n6cWP6e99qDOC1622w1uuf9h/iHn6NpmUmeN6t4R3wonG7mustBH3DbyHSH7F6dZKdD8SaxA/4XsP
 OX2CWCN9OXmmisnjF3Lw38n6+XOP4Qum94Av0UCEisbziXxVm1wUcmbsYz6Fc2a5wpys=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovyS1-0003JR-O2 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 10:18:29 +0000
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.54])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4NDCQm4tfDz15Mj6;
 Fri, 18 Nov 2022 18:17:52 +0800 (CST)
Received: from [10.67.110.173] (10.67.110.173) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 18:18:16 +0800
Message-ID: <a6aec93a-1166-1d8a-48de-767bc1eb2214@huawei.com>
Date: Fri, 18 Nov 2022 18:18:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: <asmadeus@codewreck.org>, Christian Schoenebeck <linux_oss@crudebyte.com>
References: <20221117091159.31533-1-guozihua@huawei.com>
 <3918617.6eBe0Ihrjo@silver> <Y3cRJsRFCZaKrzhe@codewreck.org>
In-Reply-To: <Y3cRJsRFCZaKrzhe@codewreck.org>
X-Originating-IP: [10.67.110.173]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/11/18 12:59,
 asmadeus@codewreck.org wrote: > Christian
 Schoenebeck wrote on Thu, Nov 17, 2022 at 02:33:28PM +0100: >>> GUO Zihua
 (3): >>> 9p: Fix write overflow in p9_read_work >>> 9p: Remove [...] 
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ovyS1-0003JR-O2
Subject: Re: [V9fs-developer] [PATCH 0/3 v2] 9p: Fix write overflow in
 p9_read_work
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
From: "Guozihua \(Scott\) via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "Guozihua \(Scott\)" <guozihua@huawei.com>
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gMjAyMi8xMS8xOCAxMjo1OSwgYXNtYWRldXNAY29kZXdyZWNrLm9yZyB3cm90ZToKPiBDaHJp
c3RpYW4gU2Nob2VuZWJlY2sgd3JvdGUgb24gVGh1LCBOb3YgMTcsIDIwMjIgYXQgMDI6MzM6MjhQ
TSArMDEwMDoKPj4+IEdVTyBaaWh1YSAoMyk6Cj4+PiAgICA5cDogRml4IHdyaXRlIG92ZXJmbG93
IGluIHA5X3JlYWRfd29yawo+Pj4gICAgOXA6IFJlbW92ZSByZWR1bmRlbnQgY2hlY2tzIGZvciBt
ZXNzYWdlIHNpemUgYWdhaW5zdCBtc2l6ZS4KPj4+ICAgIDlwOiBVc2UgUDlfSERSU1ogZm9yIGhl
YWRlciBzaXplCj4+Cj4+IEZvciBlbnRpcmUgc2VyaWVzOgo+Pgo+PiBSZXZpZXdlZC1ieTogQ2hy
aXN0aWFuIFNjaG9lbmViZWNrIDxsaW51eF9vc3NAY3J1ZGVieXRlLmNvbT4KPj4KPj4gSSBhZ3Jl
ZSB3aXRoIERvbWluaXF1ZSB0aGF0IHBhdGNoIDEgYW5kIDIgc2hvdWxkIGJlIG1lcmdlZC4KPiAK
PiBUaGFuayB5b3UgYm90aCEKPiAKPiBJJ3ZlIGp1c3QgcHVzaGVkIHRoZSBwYXRjaGVzIHRvIG15
IG5leHQgYnJhbmNoOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9tYXJ0aW5ldGQvbGludXgvY29tbWl0
cy85cC1uZXh0Cj4gCj4gLi4uIHdpdGggYSB0d2lzdCwgYXMgdGhlIG9yaWdpbmFsIHBhdGNoIGZh
aWxzIG9uIGFueSBub3JtYWwgd29ya2xvYWQ6Cj4gLS0tCj4gLyAjIGxzIC9tbnQKPiA5cG5ldDog
LS0gcDlfcmVhZF93b3JrICgxOSk6IHJlcXVlc3RlZCBwYWNrZXQgc2l6ZSB0b28gYmlnOiA5IGZv
ciB0YWcgMCB3aXRoIGNhcGFjaXR5IDExCj4gLS0tCj4gKHNvIG11Y2ggZm9yIGhhdmluZyB0d28g
cGFpcnMgb2YgZXllcyA6LUQKPiBCeSB0aGUgd2F5IHdlIC1yZWFsbHktIG5lZWQgdG8gcmVwbGFj
ZSBQOV9ERUJVR19FUlJPUiBieSBwcl9lcnJvciBvcgo+IHNvbWV0aGluZywgdGhlc2Ugc2hvdWxk
IGJlIGRpc3BsYXllZCB3aXRob3V0IGhhdmluZyB0byBzcGVjaWZ5Cj4gZGVidWc9MS4uLikKPiAK
PiAKPiBjYXBhY2l0eSBpcyBvbmx5IHNldCBpbiBhIGhhbmRmdWwgb2YgcGxhY2VzIChhbGxvYyB0
aW1lLCBoYXJkY29kZWQgNyBpbgo+IHRyYW5zX2ZkLCBhZnRlciByZWNlaXZpbmcgcGFja2V0KSBz
byBJJ3ZlIGFkZGVkIGxvZ3MgYW5kIG91ciBhbGxvYwo+IHJlYWxseSBwYXNzZWQgJzExJyBmb3Ig
YWxsb2NfcnNpemUgKGxvZ2dpbmcgdHNpemUvcnNpemUpCj4gCj4gOXBuZXQ6ICgwMDAwMDA4Nykg
Pj4+IFRXQUxLIGZpZHMgMSwyIG53bmFtZSAwZCB3bmFtZVswXSAobnVsbCkKPiA5cG5ldDogLS0g
cDlfdGFnX2FsbG9jICg4Nyk6IGFsbG9jYXRpbmcgY2FwYWNpdHkgdG8gMTcvMTEgZm9yIHRhZyAw
Cj4gOXBuZXQ6IC0tIHA5X3JlYWRfd29yayAoMTkpOiByZXF1ZXN0ZWQgcGFja2V0IHNpemUgdG9v
IGJpZzogOSBmb3IgdGFnIDAgd2l0aCBjYXBhY2l0eSAxMQo+IAo+IC4uLiBTbyB0aGlzIGlzIFJX
QUxLLCByaWdodDoKPiBzaXplWzRdIFJ3YWxrIHRhZ1syXSBud3FpZFsyXSBud3FpZCood3FpZFsx
M10pCj4gNCAuLi4uLiA1Li4uLiA3Li4uLi4gOS4uLi4uLi4gcGFja2V0IGVuZCBhdCA5IGFzIDAg
bndxaWQuCj4gV2UgaGF2ZSBjYXBhY2l0eSAxMSB0byBhbGxvdyBybGVycm9yX3NpemUgd2hpY2gg
aXMgYmlnZ2VyOyBldmVyeXRoaW5nIGlzCj4gZ29vZC4KPiAKPiBMb25nIHN0b3J5IHNob3J0LCB0
aGUgc2l6ZSBoZWFkZXIgaW5jbHVkZXMgdGhlIGhlYWRlciBzaXplLCB3aGVuIEkKPiBtaXNyZWFk
IGh0dHBzOi8vOWZhbnMuZ2l0aHViLmlvL3BsYW45cG9ydC9tYW4vbWFuOS92ZXJzaW9uLmh0bWwg
dG8KPiBzYXkgaXQgZGlkbid0IChpdCBqdXN0IHNheXMgaXQgZG9lc24ndCBpbmNsdWRlIHRoZSBl
bnZlbG9waW5nIHRyYW5zcG9ydAo+IHByb3RvY29sLCBpdCBzdGFydHMgZnJvbSBzaXplIGFscmln
aHQgYW5kIEkganVzdCBtaXNyZWFkIHRoYXQpCj4gVGhhbmtzZnVsbHkgdGhlIGNvZGUgY2F1Z2h0
IGl0Lgo+IAo+IFNvIEkndmUganVzdCByZW1vdmVkIHRoZSAtIG9mZnNldCBwYXJ0IGFuZCB0aGlu
Z3MgYXBwZWFyIHRvIHdvcmsgYWdhaW4uCj4gCj4gR3VvIFppaHVhLCBjYW4geW91IGNoZWNrIHRo
aXMgc3RpbGwgZml4ZXMgeW91ciBzeXogcmVwcm8sIG9yIHdhcyB0aGF0Cj4gc3Vic3RyYWN0aW9u
IG5lZWRlZD8gSWYgaXQncyBzdGlsbCBuZWVkZWQgd2UgaGF2ZSBhbiBvZmYgYnkgMSBzb21ld2hl
cmUKPiB0byBsb29rIGZvci4KPiAKCkhpIERvbWluaXF1ZSwgSSByZXRyaWVkIHRoZSByZXBybyBv
biB5b3VyIGJyYW5jaCwgdGhlIGlzc3VlIGRvZXMgbm90IApyZXByb2R1Y2UuIFdoYXQgYSBnb29k
IHBhaXIgb2YgZXllcyA6Ke+8gQoKLS0gCkJlc3QKR1VPIFppaHVhCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
