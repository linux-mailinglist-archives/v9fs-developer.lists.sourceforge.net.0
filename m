Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFA82684E8
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 08:32:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHi25-0003AJ-1J; Mon, 14 Sep 2020 06:32:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kHi23-0003AC-DZ
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 06:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=csaC0/GY9H9SWtG3N//g5LUoARhUoONjdMLy2lODb9U=; b=UQxHPPBvcUL6LVyUnMnbwmSX+j
 +ns23SEv0WOG6ElJ4RZWthDJTPc1aH4YwGUdZvmQZYT6Lkb8W5P5FVkNPSeDgoTmpvzpbY+oOoXpQ
 cvzOKYG+J1EuOEUkoPaDM7S+81HZhD7jb5B3qN6bjowqNnSOtYp5tajXy2c9PX3pVsAM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=csaC0/GY9H9SWtG3N//g5LUoARhUoONjdMLy2lODb9U=; b=BkEf+fn27nvuEmMqeMu0ibL+fW
 K9hlOPgNEh9Mjb5szmMoRfzxo6LR6FjGJOzV46QVwKFiJPIsdh0kNBKnxnM4Owg3w71N9xr2XAgJM
 7O0ArEFlemi9oEeNRSsXxWLQC89dVAdT5Jp59QlzTRCc/itza1rF42Ly72brPjgvoIMI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHi20-0080Rg-Qw
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 06:32:07 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 58D5FC009; Mon, 14 Sep 2020 08:31:58 +0200 (CEST)
Date: Mon, 14 Sep 2020 08:31:43 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200914063143.GA19326@nautica>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914033754.29188-5-jianyong.wu@arm.com>
 <20200914055535.GA30672@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914055535.GA30672@nautica>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHi20-0080Rg-Qw
Subject: Re: [V9fs-developer] [PATCH RFC 4/4] 9p: fix race issue in fid
 contention.
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
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Greg Kurz <groug@kaod.org>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RG9taW5pcXVlIE1hcnRpbmV0IHdyb3RlIG9uIE1vbiwgU2VwIDE0LCAyMDIwOgo+IEppYW55b25n
IFd1IHdyb3RlIG9uIE1vbiwgU2VwIDE0LCAyMDIwOgo+ICAtIElkZWFsbHkgYmFzZSB5b3Vyc2Vs
ZiBvZiBteSA5cC10ZXN0IGJyYW5jaCB0byBoYXZlIGFzeW5jIGNsdW5rOgo+IGh0dHBzOi8vZ2l0
aHViLmNvbS9tYXJ0aW5ldGQvbGludXgvY29tbWl0cy85cC10ZXN0Cj4gSSd2ZSBiZWVuIHByb21p
c2luZyB0byBwdXNoIGl0IHRvIG5leHQgdGhpcyB3ZWVr4oSiIGZvciBhIGNvdXBsZSBvZiB3ZWVr
cwo+IGJ1dCBpZiBzb21ldGhpbmcgaXMgYmFzZWQgb24gaXQgSSB3b24ndCBiZSBhYmxlIHRvIGRl
bGF5IHRoaXMgbXVjaAo+IGxvbmdlciwgaXQnbGwgZ2V0IHB1c2hlZCB0byA1LjEwIGN5Y2xlIGFu
eXdheS4KPiAoSSdsbCByZXNlbmQgdGhlIHBhdGNoZXMgdG8gYmUgY2xlYW4pCj4KPj4gdGVzdHM6
Cj4+IHJhY2UgaXNzdWUgdGVzdCBmcm9tIHRoZSBvbGQgdGVzdCBjYXNlOgo+PiBmb3IgZmlsZSBp
biB7MDEuLjUwfTsgZG8gdG91Y2ggZi4ke2ZpbGV9OyBkb25lCj4+IHNlcSAxIDEwMDAgfCB4YXJn
cyAtbiAxIC1QIDUwIC1Je30gY2F0IGYuKiA+IC9kZXYvbnVsbAoKaG1wZiwgc28gdGhhdCBtYWRl
IG1lIGluc2lzdCBhIGJpdCBvbiB0aGlzIHRlc3Qgb24gbXkgcGF0Y2ggYW5kIEkgc2VlCmEgcHJv
YmxlbSB3aXRoIHRoYXQgYXMgd2VsbC4gVGhlIG1lIGZyb20gYSBmZXcgeWVhcnMgYWdvIHdhcyBn
b29kIQoKV2l0aCB0aGF0IHNhaWQgSSdsbCB3YW50IHRvIHdvcmsgYSBiaXQgbW9yZSBvbiB0aGlz
LCBzbyBmZWVsIGZyZWUgdG8KYmFzZSBvZmYgbWFzdGVyIGFuZCBJJ2xsIGRlYWwgd2l0aCByZWJh
c2UgaWYgcmVxdWlyZWQuCgpQYXJ0IG9mIG1lIHRoaW5rcyBpdCdzIHRoZSBzYW1lIGJ1ZyB0aGF0
IHdpbGwgYmUgZml4ZWQgd2l0aCByZWZjb3VudGluZwphbmQgSSBqdXN0IG1hZGUgaXQgZWFzaWVy
IHRvIGhpdCwgYnV0IEknbSBob25lc3RseSB1bnN1cmUgYXQgdGhpcyBwb2ludAphbmQgdGVzdGlu
ZyB3b3VsZCBiYXNpY2FsbHkgbWVhbiBJIGp1c3QgY29kZSB3aGF0IEkgYXNrZWQgeW91IHRvLi4u
CgpXZWxsLCBsZXQgbWUga25vdyBpZiB5b3Ugd2FudCBtZSB0byBkbyB0aGUgcmVmY291bnRpbmcs
IGJ1dCBJJ2QgcmF0aGVyCmxldCB5b3UgZmluaXNoIHdoYXQgeW91IHN0YXJ0ZWQuIElmIHBvc3Np
YmxlIHB1dCB0aGUgcGF0Y2ggZmlyc3QgaW4gdGhlCnNlcmllcyBzbyBjb21taXRzIGNhbiBiZSB0
ZXN0ZWQgaW5kZXBlbmRlbnRseS4KCgpUaGFua3MsCi0tIApEb21pbmlxdWUKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
