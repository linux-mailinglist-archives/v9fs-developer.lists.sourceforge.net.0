Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3786B8777
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Mar 2023 02:15:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbtFw-000646-EW;
	Tue, 14 Mar 2023 01:15:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hackerzheng666@gmail.com>) id 1pbtFu-00063z-Fm
 for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 01:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SDa6BbIH7Y3VUs5F/kP/wwy9tx6ek2EPSEjYlOG3rt4=; b=SHU18j9oGk5CwTPi/l0gHdphq9
 PWBVXA9RTXsJAW6t5S4eokmKivz6Lbn3of/lAjqLsOkSkY3F0ipyH0YD/NZiQNwBBG0TJBS+0R2KJ
 gBsaWY9xY3a2r6Yohq5fVv6BIi2vRtzisxA43jS6cK7taCsgaf3P7/rXrrJFf+Fp0JJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SDa6BbIH7Y3VUs5F/kP/wwy9tx6ek2EPSEjYlOG3rt4=; b=h8X/VQUfwtpoBYQ+vFLZ6JdaqW
 lgf8HlWWfxfQgpqgTu4l+JyXqM+m3oQUUTrxwq5sfwHT81Z9o24h1JhiyMKLWzLD2+hpT7DISu8UJ
 XOjmIAKvfB0FhDCtjx/ayZvM6ErEEL5MuQG+K+61UYQgXlGBqorCAeC2P+q8cu91A9NQ=;
Received: from mail-pj1-f41.google.com ([209.85.216.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbtFq-006uFv-LA for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 01:15:11 +0000
Received: by mail-pj1-f41.google.com with SMTP id
 h11-20020a17090a2ecb00b00237c740335cso13536101pjs.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 13 Mar 2023 18:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678756501;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SDa6BbIH7Y3VUs5F/kP/wwy9tx6ek2EPSEjYlOG3rt4=;
 b=n9hSIEw2zg4NWFs46OHg2XBaStApSeOCiZLAl0IYwFGq1JTJAb/9MSnKvg8yb6fxhR
 74b4pAbFvDlxodA4TdtWrDfSr5T/lTwWxNIPPlt/2ILflgmbalbV9DPZwah0TTYmwWmu
 zd33FTjEK2jsxF0Ch0BVEbuf7MDc8OTqBu0SOHKpFXupOGMV1a7Y34WlOc1Xr7nDrNOR
 4Ho2WLc4NCJzZQS6/a5r6Ug3zzepgmZgghZeT5C03oF/DnP6MMEjWPh+GN08mO8Toi0d
 PBBuJfpJYKA69n6PDbU/wfbJBMsgNnj534QcXo7fWa7+BshUoP71wEcOv4tISnNTVuIE
 bOfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678756501;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SDa6BbIH7Y3VUs5F/kP/wwy9tx6ek2EPSEjYlOG3rt4=;
 b=g1dQmgoPd7sW8cuEYZqkCl/HDzgq53yqIDQYD3Fxoj9NwTEZ0gjhE0GMkWug1LQgWc
 hljwMdGz/Tzn/LumnzWufyx7P7wAZb2/0OW5PIMysKhQolFide6ezcHSnVOZhASqtj0K
 Fg0JTWGsjBwZENg+Pezd8tRvkjgvTCLB0r1QaZ71+nXwhvOcgix6WZ0SHHk1xjvZohF6
 5NB3LB2idZua9kMR14JG1kTFrElWb78U11mB7lyhwS5w5QbXhZJg8tiXyy14lVJXuVcr
 /xolAtheN3D6KM9Y85I3yTFtTdUv31hFiIgdjsZ/CxY3VyDJdS+3Z7FsZSoF0oAUS8Or
 OQYA==
X-Gm-Message-State: AO0yUKUyJLSqXmNiV0elr0lnfaMOXlv3WHBOaJtXrSaFfRNRbc5CSluA
 t7o/tEO8Ja/vKkDuQGsFPesN/YBMZPU68TSVuRM=
X-Google-Smtp-Source: AK7set9OrlZDJMtKLveaqiRlFkI0wjed9V+Vw/w1Z1o5dQaSf4mOjk8Zc87magEhKYM6G1J6C7QQ6dT76dm/W/rG6XY=
X-Received: by 2002:a17:903:2c1:b0:19c:d414:fe6e with SMTP id
 s1-20020a17090302c100b0019cd414fe6emr13388793plk.12.1678756501095; Mon, 13
 Mar 2023 18:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230313090002.3308025-1-zyytlz.wz@163.com>
 <ZA8rDCw+mJmyETEx@localhost.localdomain>
 <20230313143054.538565ac@kernel.org> <ZA+etMBFSw/999Aq@codewreck.org>
In-Reply-To: <ZA+etMBFSw/999Aq@codewreck.org>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Tue, 14 Mar 2023 09:14:48 +0800
Message-ID: <CAJedcCyH_JvVeyFq1i8Udx=W7PO7F+aYeQp+r6dbWQLqMNgy_w@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  于2023年3月14日周二 06:08写道： > > Jakub Kicinski
    wrote on Mon, Mar 13, 2023 at 02:30:54PM -0700: > > On Mon, 13 Mar 2023 14:54:20
    +0100 Michal Swiatkowski wrote: > > > > for (i = 0; i < p [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [hackerzheng666[at]gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [hackerzheng666[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.216.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.216.41 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pbtFq-006uFv-LA
Subject: Re: [V9fs-developer] [PATCH net v2] 9p/xen : Fix use after free bug
 in xen_9pfs_front_remove due to race condition
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
Cc: lucho@ionkov.net, alex000young@gmail.com, pabeni@redhat.com,
 1395428693sheep@gmail.com, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, edumazet@google.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Zheng Wang <zyytlz.wz@163.com>,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

PGFzbWFkZXVzQGNvZGV3cmVjay5vcmc+IOS6jjIwMjPlubQz5pyIMTTml6XlkajkuowgMDY6MDjl
hpnpgZPvvJoKPgo+IEpha3ViIEtpY2luc2tpIHdyb3RlIG9uIE1vbiwgTWFyIDEzLCAyMDIzIGF0
IDAyOjMwOjU0UE0gLTA3MDA6Cj4gPiBPbiBNb24sIDEzIE1hciAyMDIzIDE0OjU0OjIwICswMTAw
IE1pY2hhbCBTd2lhdGtvd3NraSB3cm90ZToKPiA+ID4gPiAgIGZvciAoaSA9IDA7IGkgPCBwcml2
LT5udW1fcmluZ3M7IGkrKykgewo+ID4gPiA+ICsgICAgICAgICAvKmNhbmNlbCB3b3JrKi8KPiA+
ID4gSXQgaXNuJ3QgbmVlZGVkIEkgdGhpbmssIHRoZSBmdW5jdGlvbiBjYW5jZWxfd29ya19zeW5j
KCkgdGVsbHMgZXZlcnl0aGluZwo+ID4gPiBoZXJlLgo+ID4KPiA+IE5vdGUgdGhhdCA5cCBpcyBt
b3JlIHN0b3JhZ2UgdGhhbiBuZXR3b3JraW5nLCBzbyB0aGlzIHBhdGNoIGlzIGxpa2VseQo+ID4g
dG8gZ28gdmlhIGEgZGlmZmVyZW50IHRyZWUgdGhhbiB1cy4KPgo+IEFueSByZXZpZXcgZG9uZSBp
cyB1c2VmdWwgYW55d2F5IDspCj4KPiBFaXRoZXIgRXJpYyBvciBtZSB3aWxsIHRha2UgdGhlIHBh
dGNoLCBidXQgaW4gdGhlIHBhc3Qgc3VjaCBmaXhlcyBoYXZlCj4gc29tZXRpbWVzIGFsc28gYmVl
biB0YWtlbiBpbnRvIHRoZSBuZXQgdHJlZTsgaG9uZXN0bHkgSSB3b3VsZG4ndCBtaW5kIGEKPiBi
aXQgbW9yZSAicnVsZSIgaGVyZSBhcyBpdCdzIGEgYml0IHdlaXJkIHRoYXQgc29tZSBvZiBvdXIg
cGF0Y2hlcyBhcmUgQ2MKPiB0byBmc2RldmVsQCAoZnMvIGZyb20gZnMvOXApIGFuZCB0aGUgb3Ro
ZXIgaGFsZiBuZXRkZXZAIChuZXQvIGZyb20KPiBuZXQvOXApLCBidXQgYWZhaWN0IHRoZSBNQUlO
VEFJTkVSUyBzeW50YXggZG9lc24ndCBoYXZlIGEgd2F5IG9mCj4gZXhjbHVkaW5nIGUuZy4gbmV0
LzlwIGZyb20gdGhlIGBORVRXT1JLSU5HIFtHRU5FUkFMXWAgZ3JvdXAgc28gSSBndWVzcwo+IHdl
IGp1c3QgaGF2ZSB0byBsaXZlIHdpdGggdGhhdC4KCkRlYXIgRG9taW5pcXVlLAoKU29ycnkgZm9y
IG15IGNvbmZ1c2lvbiBhbmQgdGhhbmtzIGZvciB5b3VyIHBhdGllbnQgZXhwbGFuYXRpb24uIEkn
bGwgdGFrZSBjYXJlCm9mIGl0IHdoZW4gc3VibWl0dGluZyBhIGZpeCB0byB0aGUgbGludXgga2Vy
bmVsIGluIHRoZSBmdXR1cmUuCgo+Cj4gVGhlcmUncyBsaXR0bGUgZW5vdWdoIHZvbHVtZSBhbmQg
bmV0ZGV2IGF1dG9tYXRpb24gc2VuZHMgYSBtYWlsIHdoZW4gYQo+IHBhdGNoIGlzIHBpY2tlZCB1
cCwgc28gYXMgbG9uZyBhcyB0aGVyZSdzIG5vIGNvbmZsaWN0IChsYXJnZSBtYWpvcml0eSBvZgo+
IHRoZSBjYXNlcykgc3VjaCBmaXhlcyBjYW4gZ28gZWl0aGVyIHdheSBhcyBmYXIgYXMgSSdtIGNv
bmNlcm5lZC4KPgpUaGFua3MgYWdhaW4gZm9yIHlvdXIgZWZmb3J0LiBIb3BlIHlvdSBoYXZlIGEg
Z29vZCBkYXkgOikKCkJlc3QgcmVnYXJkcywKWmhlbmcKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlm
cy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
