Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 939621C991C
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 May 2020 20:18:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jWl5q-0002fH-8a; Thu, 07 May 2020 18:17:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lego12239@yandex.ru>) id 1jWl5o-0002fA-Rk
 for v9fs-developer@lists.sourceforge.net; Thu, 07 May 2020 18:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VYuq84tX66QPFkvX+FiQEZbrYQMvq2O2IvWDuqDJZIs=; b=NxNee9yw9/YCWd+63cuqn7Q715
 PUUvO7/IlY/nct0UVu0SNTyJA9hVpNhrOOe9w9hGArDRld1uyaW4+tpTGW8DDhQQrjKpvVAiChd7Z
 cuS2xX26jTI9+GEl8L3S2HrZsxH6VXhQ8dKmnRg981OSbJHenVIFPipzXI4OoysrCyPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VYuq84tX66QPFkvX+FiQEZbrYQMvq2O2IvWDuqDJZIs=; b=SaN2aUzGTnsKIoznkzklG6ZN8l
 i9eNZRyXOOy6Oh0Oho04xnnA13TEdJpTAp7J/V+k5MCdW/H3+R0jaJmNq0aHsmvmONdbYaUhVQZe8
 Cjju23/4dCT29aFOSTdVDYhkYAgvBYunLuYeFl1U/mbyUj/3M+uuClYwX/qE17aw6Jig=;
Received: from forward106o.mail.yandex.net ([37.140.190.187])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jWl5k-000YoL-KQ
 for v9fs-developer@lists.sourceforge.net; Thu, 07 May 2020 18:17:56 +0000
Received: from mxback1j.mail.yandex.net (mxback1j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::10a])
 by forward106o.mail.yandex.net (Yandex) with ESMTP id EDED95062325;
 Thu,  7 May 2020 21:17:41 +0300 (MSK)
Received: from iva1-bc1861525829.qloud-c.yandex.net
 (iva1-bc1861525829.qloud-c.yandex.net [2a02:6b8:c0c:a0e:0:640:bc18:6152])
 by mxback1j.mail.yandex.net (mxback/Yandex) with ESMTP id 5djNc6d7Em-HfNOjvNm; 
 Thu, 07 May 2020 21:17:41 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1588875461; bh=VYuq84tX66QPFkvX+FiQEZbrYQMvq2O2IvWDuqDJZIs=;
 h=In-Reply-To:Reply-To:Subject:Cc:To:From:References:Date:
 Message-ID;
 b=E3Zt8mkx+DnKLgFgD2/AbDpMqyK5NKOkPZm6nNPgR20n91DXxogeFj9iF/RNsonwU
 y2qPJe4tCH/5ObOTM7zBGCvtRfcIl2XDY+GRn6TZZiqXeaRK3iYkBOubgikkZPNkQi
 6X+DSyEaOQfQ49KBu5QG0r8hI0DqtyqF6rIkWAWI=
Authentication-Results: mxback1j.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by iva1-bc1861525829.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id ITE937GZF1-HfQ896SJ; Thu, 07 May 2020 21:17:41 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
Date: Thu, 7 May 2020 21:18:56 +0300
From: Oleg <lego12239@yandex.ru>
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <20200507181856.GA32655@legohost>
References: <20200507102339.GA7332@legohost>
 <CAFkjPTmot_1Sf6h3yfWXhon8EUWgyOFTUy-C2P9OOp8NF6d-BQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTmot_1Sf6h3yfWXhon8EUWgyOFTUy-C2P9OOp8NF6d-BQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lego12239[at]yandex.ru)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [37.140.190.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (lego12239[at]yandex.ru)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (lego12239[at]yandex.ru)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWl5k-000YoL-KQ
Subject: Re: [V9fs-developer] linux 9p mount & tattach
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
Reply-To: Oleg <lego12239@yandex.ru>
Cc: V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVGh1LCBNYXkgMDcsIDIwMjAgYXQgMTA6MzY6NTZBTSAtMDUwMCwgRXJpYyBWYW4gSGVuc2Jl
cmdlbiB3cm90ZToKPiBpbiB1c2VyIG1vZGUgaXQgc2hvdWxkIGJlIHNlbmRpbmcgYSBuZXcgYXR0
YWNoIHBlciB1c2VyLiAgQW55IHNvcnQgb2YKPiBjYWNoaW5nIGxheWVyIG1heSBiZSBtZXNzaW5n
IHdpdGggdGhpcywgYnV0IEknbGwgYXNzdW1lIHlvdSBhcmVuJ3QgdHJ5aW5nCj4gdG8gdXNlIHRo
YXQuICBJbmNsdWRpbmcgdGhlIGRmbHR1aWQvZGZsdGdpZCBtYXkgYWxzbyBiZSBtZXNzaW5nIHdp
dGggdGhlCj4gYWNjZXNzIG1lY2hhbmlzbS4gIEkgZG9uJ3QgdGhpbmsgeW91IG5lZWQgdG8gaW5j
bHVkZSB0aG9zZS4KCldpdGhvdXQgdGhlc2UgcGFyYW1ldGVycyBpdCBsb29rcyBsaWtlIHRoYXQ6
Cgp+IyBtb3VudCAtdCA5cCAtbyB0cmFucz11bml4LG5vZXh0ZW5kLGFjY2Vzcz11c2VyIHEuc29j
a2V0IGRpcgp+IyBscyAtbCB0CnRvdGFsIDIKLXJ3LXJ3LXJ3LSAxIDQyOTQ5NjcyOTQgNDI5NDk2
NzI5NCAxIEphbiAgMSAgMTk3MCBjb25mCi1ydy1ydy1ydy0gMSA0Mjk0OTY3Mjk0IDQyOTQ5Njcy
OTQgMSBKYW4gIDEgIDE5NzAgZGF0YQotcnctcnctcnctIDEgNDI5NDk2NzI5NCA0Mjk0OTY3Mjk0
IDEgSmFuICAxICAxOTcwIHN0YXQKCj4gVGhlIGNvZGUgdG8gZG8gdGhhdCBpcyBpbiB0aGUga2Vy
bmVsIGNsaWVudCBpbiBmcy85cC9maWQuYwo+IAo+IFN0YXJ0IHdpdGggZGVidWc9MHhmIHRvIHlv
dXIgbW91bnQgbGluZSBhbmQgdGhlbiBoYXZlIGEgbG9vayBhdCB5b3VyIGtlcm5lbAo+IG1lc3Nh
Z2VzIGZvciB0aGUgOXAgYW5kIFZGUyB0cmFjY2UgdG8gZ2V0IGEgYmV0dGVyIGlkZWEgb2Ygd2hh
dCBpcyBnb2luZyBvbi4KCkl0J3Mgc3RyYW5nZSwgYnV0IHRoaXM6Cgp+IyBtb3VudCAtdCA5cCAt
byBkZWJ1Zz0weGYsdHJhbnM9dW5peCxub2V4dGVuZCxhY2Nlc3M9dXNlciBxLnNvY2tldCBkaXIK
CnNob3cgbm90aGluZyBpbiBkbWVzZyBhbmQgc3lzbG9nLiBObyBvdXRwdXQgZm9yIGFueSBhY3Rp
b25zIHdpdGggZnMuCgpNeSBmcyBsb2cgb3V0cHV0OgoKT24gbW91bnQgY2FsbCBmcm9tIHJvb3Q6
CgptYWluLmM6NTg6IGF0dGFjaCB0byAnJyh1c2VyOiAnbm9ib2R5Jyk6IGZpZD0wCm1haW4uYzox
MjI6IHN0YXQ6IGZpZD0wLCBxaWQ9OTQ0MTk2NzcwMTQ0MTYKCkFmdGVyIGxzIGZyb20gb3JkaW5h
cnkgdXNlcjoKCm1haW4uYzoxMjI6IHN0YXQ6IGZpZD0wLCBxaWQ9OTQ0MTk2NzcwMTQ0MTYKbWFp
bi5jOjExMjogd2FsazogZmlkPTAsIHFpZD05NDQxOTY3NzAxNDQxNiwgbmV3ZmlkID0gMSwgbndu
YW1lID0gMAptYWluLmM6NzQ6IG9wZW46IGZpZD0xLCBxaWQ9OTQ0MTk2NzcwMTQ0MTYKbWFpbi5j
OjEyMjogc3RhdDogZmlkPTAsIHFpZD05NDQxOTY3NzAxNDQxNgptYWluLmM6OTI6IHJlYWQ6IGZp
ZD0xLCBxaWQ9OTQ0MTk2NzcwMTQ0MTYsIG9mZnNldD0wLCBjb3VudD04MTY4Cm1haW4uYzo5Mjog
cmVhZDogZmlkPTEsIHFpZD05NDQxOTY3NzAxNDQxNiwgb2Zmc2V0PTU2LCBjb3VudD04MTEyCm1h
aW4uYzo5MjogcmVhZDogZmlkPTEsIHFpZD05NDQxOTY3NzAxNDQxNiwgb2Zmc2V0PTExMiwgY291
bnQ9ODA1NgptYWluLmM6OTI6IHJlYWQ6IGZpZD0xLCBxaWQ9OTQ0MTk2NzcwMTQ0MTYsIG9mZnNl
dD0xNjgsIGNvdW50PTgwMDAKbWFpbi5jOjkyOiByZWFkOiBmaWQ9MSwgcWlkPTk0NDE5Njc3MDE0
NDE2LCBvZmZzZXQ9MTY4LCBjb3VudD04MTY4Cm1haW4uYzoxMTI6IHdhbGs6IGZpZD0wLCBxaWQ9
OTQ0MTk2NzcwMTQ0MTYsIG5ld2ZpZCA9IDIsIG53bmFtZSA9IDEKd2FsazogbmV4dCAnY29uZicK
Cm1haW4uYzoxMjI6IHN0YXQ6IGZpZD0yLCBxaWQ9OTQ0MTk2NzcwMTQ1OTIKbWFpbi5jOjEyMjog
c3RhdDogZmlkPTIsIHFpZD05NDQxOTY3NzAxNDU5MgptYWluLmM6ODM6IGNsdW5rOiBmaWQ9Miwg
cWlkPTk0NDE5Njc3MDE0NTkyCm1haW4uYzoxNDE6IGZyZWVmaWQ6IGZpZD0yLCBxaWQ9OTQ0MTk2
NzcwMTQ1OTIKbWFpbi5jOjExMjogd2FsazogZmlkPTAsIHFpZD05NDQxOTY3NzAxNDQxNiwgbmV3
ZmlkID0gMiwgbnduYW1lID0gMQp3YWxrOiBuZXh0ICdzdGF0JwoKbWFpbi5jOjEyMjogc3RhdDog
ZmlkPTIsIHFpZD05NDQxOTY3NzAxNDc4NAptYWluLmM6MTIyOiBzdGF0OiBmaWQ9MiwgcWlkPTk0
NDE5Njc3MDE0Nzg0Cm1haW4uYzo4MzogY2x1bms6IGZpZD0yLCBxaWQ9OTQ0MTk2NzcwMTQ3ODQK
bWFpbi5jOjE0MTogZnJlZWZpZDogZmlkPTIsIHFpZD05NDQxOTY3NzAxNDc4NAptYWluLmM6MTEy
OiB3YWxrOiBmaWQ9MCwgcWlkPTk0NDE5Njc3MDE0NDE2LCBuZXdmaWQgPSAyLCBud25hbWUgPSAx
CndhbGs6IG5leHQgJ2RhdGEnCgptYWluLmM6MTIyOiBzdGF0OiBmaWQ9MiwgcWlkPTk0NDE5Njc3
MDE2MDQ4Cm1haW4uYzoxMjI6IHN0YXQ6IGZpZD0yLCBxaWQ9OTQ0MTk2NzcwMTYwNDgKbWFpbi5j
OjgzOiBjbHVuazogZmlkPTIsIHFpZD05NDQxOTY3NzAxNjA0OAptYWluLmM6MTQxOiBmcmVlZmlk
OiBmaWQ9MiwgcWlkPTk0NDE5Njc3MDE2MDQ4Cm1haW4uYzo5MjogcmVhZDogZmlkPTEsIHFpZD05
NDQxOTY3NzAxNDQxNiwgb2Zmc2V0PTE2OCwgY291bnQ9ODE2OAptYWluLmM6ODM6IGNsdW5rOiBm
aWQ9MSwgcWlkPTk0NDE5Njc3MDE0NDE2Cm1haW4uYzoxNDE6IGZyZWVmaWQ6IGZpZD0xLCBxaWQ9
OTQ0MTk2NzcwMTQ0MTYKCgpTbywgdGhlcmUgaXMgbm8gYXR0YWNoIGZvciB1c2VyIDotKC4gV2hh
dCBjYW4gaSBkbyBuZXh0PwoKCi0tIArQntC70LXQsyDQndC10LzQsNC90L7QsiAoT2xlZyBOZW1h
bm92KQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK
