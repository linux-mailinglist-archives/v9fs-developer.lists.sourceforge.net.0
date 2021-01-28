Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 486F13074F1
	for <lists+v9fs-developer@lfdr.de>; Thu, 28 Jan 2021 12:39:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l55eU-0005sh-Iy; Thu, 28 Jan 2021 11:39:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wanghai38@huawei.com>) id 1l55eS-0005sN-Rk
 for v9fs-developer@lists.sourceforge.net; Thu, 28 Jan 2021 11:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qXKgC8ymfT1sP3Si7wcp/MR9vl1SamHanEGo8Ik+sg8=; b=m9ATNgE6RXdBAqwitS3MBVy+kc
 unC7V9ffjzgZJ8HOjUPtwFYyv1HjIKNxgGcFGSsR0iKC7PmvnILZVO495AHdfZqUdXVgxd3VrOWq0
 l955FeKjNdI3zrM4boNhOUMS18TOSuAemQVnmSj/EBFPDjftWiMp59Lx9Aqm6LIN1J8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qXKgC8ymfT1sP3Si7wcp/MR9vl1SamHanEGo8Ik+sg8=; b=SkRBm0vG2U9mz8/M5LrfW4DjnP
 /IG9uf81jlVqxaRvsMEfW7rbmTrc76T1h2KYYGVd8QA8J5QA66yVbfxG5X3+KR/5oKlHYogsEJsQV
 kdJiscDDbB9/NBDJpbUbKWcT3lOpSNWoXGhJMe0EAaNcllms78YyWQqKMhH2oIWXra24=;
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l55e7-00EkCM-Co
 for v9fs-developer@lists.sourceforge.net; Thu, 28 Jan 2021 11:39:52 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DRJP26h74zl9l6;
 Thu, 28 Jan 2021 19:37:42 +0800 (CST)
Received: from [10.174.179.81] (10.174.179.81) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.498.0; Thu, 28 Jan 2021 19:39:12 +0800
To: Linus Torvalds <torvalds@linux-foundation.org>, syzbot
 <syzbot+d0bd96b4696c1ef67991@syzkaller.appspotmail.com>, Pekka Enberg
 <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim
 <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>
References: <000000000000672eda05b9e291ff@google.com>
 <CAHk-=whCX0Ab=Z2N-zuKVv7BdBZAUGgP0jQqCg+OJjHmtaOkTA@mail.gmail.com>
From: "wanghai (M)" <wanghai38@huawei.com>
Message-ID: <c4899073-b7a5-687d-f76f-dc0fd69c3a70@huawei.com>
Date: Thu, 28 Jan 2021 19:39:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=whCX0Ab=Z2N-zuKVv7BdBZAUGgP0jQqCg+OJjHmtaOkTA@mail.gmail.com>
X-Originating-IP: [10.174.179.81]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l55e7-00EkCM-Co
Subject: Re: [V9fs-developer] KASAN: invalid-free in p9_client_create (2)
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
Cc: lucho@ionkov.net, ericvh@gmail.com, Netdev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, v9fs-developer@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CuWcqCAyMDIxLzEvMjggMzozMSwgTGludXMgVG9ydmFsZHMg5YaZ6YGTOgo+IFsgUGFydGljaXBh
bnRzIGxpc3QgY2hhbmdlZCAtIHN5emJvdCB0aG91Z2h0IHRoaXMgd2FzIG5ldHdvcmtpbmcgYW5k
Cj4gcDksIGJ1dCBpdCByZWFsbHkgbG9va3MgZW50aXJlbHkgbGlrZSBhIHNsdWIgaW50ZXJuYWwg
YnVnLiBJIGxlZnQgdGhlCj4gaW5ub2NlbnQgcGVvcGxlIG9uIHRoZSBsaXN0IGp1c3QgdG8gbGV0
IHRoZW0ga25vdyB0aGV5IGFyZSBpbm5vY2VudCBdCj4KPiBPbiBXZWQsIEphbiAyNywgMjAyMSBh
dCA2OjI3IEFNIHN5emJvdAo+IDxzeXpib3QrZDBiZDk2YjQ2OTZjMWVmNjc5OTFAc3l6a2FsbGVy
LmFwcHNwb3RtYWlsLmNvbT4gd3JvdGU6Cj4+IFRoZSBpc3N1ZSB3YXMgYmlzZWN0ZWQgdG86Cj4+
Cj4+IGNvbW1pdCBkZGUzYzZiNzJhMTZjMmRiODI2ZjU0YjJkNDliZGVhMjZjMzUzNGEyCj4+IEF1
dGhvcjogV2FuZyBIYWkgPHdhbmdoYWkzOEBodWF3ZWkuY29tPgo+PiBEYXRlOiAgIFdlZCBKdW4g
MyAyMjo1NjoyMSAyMDIwICswMDAwCj4+Cj4+ICAgICAgbW0vc2x1YjogZml4IGEgbWVtb3J5IGxl
YWsgaW4gc3lzZnNfc2xhYl9hZGQoKQo+Pgo+PiBCVUc6IEtBU0FOOiBkb3VibGUtZnJlZSBvciBp
bnZhbGlkLWZyZWUgaW4gc2xhYl9mcmVlIG1tL3NsdWIuYzozMTQyIFtpbmxpbmVdCj4+IEJVRzog
S0FTQU46IGRvdWJsZS1mcmVlIG9yIGludmFsaWQtZnJlZSBpbiBrbWVtX2NhY2hlX2ZyZWUrMHg4
Mi8weDM1MCBtbS9zbHViLmM6MzE1OAo+IFRoZSBwOSBwYXJ0IG9mIHRoaXMgYnVnIHJlcG9ydCBz
ZWVtcyB0byBiZSBhIHJlZCBoZXJyaW5nLgo+Cj4gVGhlIHByb2JsZW0gbG9va3MgbGlrZSBpdCdz
IHNpbXBseSB0aGUga21lbV9jYWNoZSBmYWlsdXJlIGNhc2UsIGllOgo+Cj4gICAtIG1tL3NsYWJf
Y29tbW9uLmM6IGNyZWF0ZV9jYWNoZSgpOiBpZiB0aGUgX19rbWVtX2NhY2hlX2NyZWF0ZSgpCj4g
ZmFpbHMsIGl0IGRvZXM6Cj4KPiAgICAgICAgICBvdXRfZnJlZV9jYWNoZToKPiAgICAgICAgICAg
ICAgICAgIGttZW1fY2FjaGVfZnJlZShrbWVtX2NhY2hlLCBzKTsKPgo+ICAgLSBidXQgX19rbWVt
X2NhY2hlX2NyZWF0ZSgpIC0gYXQgbGVhc3QgZm9yIHNsdWIoKSAtIHdpbGwgaGF2ZSBkb25lCj4K
PiAgICAgICAgICBzeXNmc19zbGFiX2FkZChzKSAuLiBmYWlscyAuLgo+ICAgICAgICAgICAgICAt
PiBrb2JqZWN0X2RlbCgmcy0+a29iaik7IC4uIHdoaWNoIGZyZWVzIHMgLi4uCj4KPiBzbyB0aGUg
bmV0d29ya2luZyBhbmQgcDkgYXJlIGZpbmUsIGFuZCB0aGUgb25seSByZWFzb24gcDkgc2hvd3Mg
dXAgaW4KPiB0aGUgdHJhY2UgaXMgdGhhdCBhcHBhcmVudGx5IGl0IGNhdXNlcyB0aGF0IGZhaWx1
cmUgaW4KPiBrb2JqZWN0X2luaXRfYW5kX2FkZCgpIGZvciB3aGF0ZXZlciByZWFzb24sIGFuZCB0
aGF0IHRoZW4gZXhwb3NlcyB0aGUKPiBwcm9ibGVtLgo+Cj4gU28gdGhlIGFkZGVkIGtvYmplY3Rf
cHV0KCkgcmVhbGx5IGxvb2tzIGJ1Z2d5IGluIHRoaXMgc2l0dWF0aW9uLCBhbmQKPiB0aGUgbWVt
b3J5IGxlYWsgdGhhdCB0aGF0IGNvbW1pdCBkZGUzYzZiNzJhMTYgKCJtbS9zbHViOiBmaXggYSBt
ZW1vcnkKPiBsZWFrIGluIHN5c2ZzX3NsYWJfYWRkKCkiKSBmaXhlcyBpcyBub3cgYSBkb3VibGUg
ZnJlZS4KPgo+IEFuZCBubywgSSBkb24ndCB0aGluayB5b3UgY2FuIGp1c3QgcmVtb3ZlIHRoZSBr
bWVtX2NhY2hlX2ZyZWUoKSBpbgo+IGNyZWF0ZV9jYWNoZSgpLCBiZWNhdXNlIF9vdGhlcl8gZXJy
b3IgY2FzZXMgb2YgX19rbWVtX2NhY2hlX2NyZWF0ZSgpCj4gZG8gbm90IGZyZWUgdGhpcy4KPgo+
IFdhbmcgSGFpIC0gY29tbWVudHM/IEknbSBpbmNsaW5lZCB0byByZXZlcnQgdGhhdCBjb21taXQg
Zm9yIG5vdyB1bmxlc3MKPiBzb21lYm9keSBjYW4gY29tZSB1cCB3aXRoIGEgcHJvcGVyIGZpeC4u
Cj4KPiAgICAgICAgICAgICAgICBMaW51cwo+IC4KSGksIExpbnVzLgpJJ20gc29ycnkgZm9yIGlu
dHJvZHVjaW5nIHRoaXMgYnVnLCBhbmQgSSBhZ3JlZSB0byByZXZlcnQgaXQuCkkndmUganVzdCBz
ZW50IHRoZSByZXZlcnQgcGF0Y2guCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9w
YXRjaC8xMzcyNDc1LwoKVGhhbmtzLApXYW5nIEhhaQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZz
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
