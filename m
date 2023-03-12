Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B09466B6A03
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Mar 2023 19:22:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbQLN-0003Qd-7F;
	Sun, 12 Mar 2023 18:22:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pbQLL-0003QX-Cg
 for v9fs-developer@lists.sourceforge.net;
 Sun, 12 Mar 2023 18:22:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/wfw0Iou++3C7iUKYkrNdPM4+v/VqBNAAE+U9Nr7WdE=; b=TUZ1foPFSnY+qxVFeIfTCfRUeg
 yGPd8iSMst3C3UWKIfZdIPoaN5zeCgIoSfQ8lznLjnszDbV8FWVHzFaDR9PGcmFzARQguoEerHLIw
 eE40+e6+0yemOfJhnIE1vgF58VKlCZ2BWPgids4SqnS60Oz5vipmt8WLuf6EA/D2QYT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/wfw0Iou++3C7iUKYkrNdPM4+v/VqBNAAE+U9Nr7WdE=; b=FioZmOqztnszTPcjg2JrULahuH
 j/WC3cp0CQF0ac3J88Ipj0ZipqEjZvsudekFIcoXGWva0v216efgXgKa4guMW+ycGK7+rSQizA7ot
 kKUPxzFLr8pIe212L32L31Zi6bWw8rTWGiKCJS4gujfFLiiqjg/FoSYlTeMsloYOdYOs=;
Received: from mail-yw1-f170.google.com ([209.85.128.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbQLL-0006e4-7C for v9fs-developer@lists.sourceforge.net;
 Sun, 12 Mar 2023 18:22:51 +0000
Received: by mail-yw1-f170.google.com with SMTP id
 00721157ae682-540cb2fb5b9so97441697b3.3
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 12 Mar 2023 11:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678645365;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/wfw0Iou++3C7iUKYkrNdPM4+v/VqBNAAE+U9Nr7WdE=;
 b=KMrdFqbhwHAFL5M7zKYcMTVYiyHgZlxzXMkh+h5xlV96p73JAdDc8KItdU99J73s1h
 w24tH4UrF+0bciTf2SAbSghDfsAyhsOQOGaWu7Jdd1ODJksjNKEz7ZXYXT8u5Qg00FtV
 hW6W5HMjQe6650mDqj+axmYvWICwKwnrYI+6obhHW5vcW1L7HUEB8Xrapc6tLjb+O1Xf
 LU8sKhw4P338JjMOy993gq3CgEjvys0LIc8TPqm8Twnc0CDszbWWUPq5PqgSkeChoWP0
 LYp9r/awpn1wVBwurfax8i4nnEBQmlp39OX7rVgXewAZ6JeBP36u8SuvTQ0dL70fPrp3
 xX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678645365;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/wfw0Iou++3C7iUKYkrNdPM4+v/VqBNAAE+U9Nr7WdE=;
 b=1+au68GIR8jVo2s/ESB3EDAtinvpRkXGYozIObrCb6eXpRMmB9vbGTLQ1Ceik5/4sI
 Ta61D2TcDSvpl+oWOEsiTj7bt0bElLIVolvdEnx6k9ouHTfiGYoizlOOsx4bhaqEXDVU
 l8tCfBjIRpn6z8oJAjPJMXSv/XelwniDO+gUwJyjvm3lrntvERJ+pPWX/Fgk/GlJPsVX
 qKxu+3McAn3V/iC8eWIsgz+6eC95hJc44hr1PY56v8CujoVGIfXXls0U4FI2EfnTpR/2
 9jl1gz5iI8tIqpjA7OTt4Hgv1h0yU7ZShwn6NGimeLKjHxlxmZPJUpW+ycpPakASkDSv
 wEPg==
X-Gm-Message-State: AO0yUKWUgd+orSJxFqNHWYdZrIwlh2Pcy1/FDQnPPwIw2csgEx/XryEA
 UTs8SkVZvX4lWFk6hRHfd7KN4uwbzVRqsN0KTwM=
X-Google-Smtp-Source: AK7set+X75UgYxIhmzYfG/tdBM9xIWaVnEfdjrTwspuB7fkhMSTTd3VyRzSfVln6cp88PBUq2nXAlBA4xM5p/yaC6mE=
X-Received: by 2002:a81:b646:0:b0:541:a0cf:71c9 with SMTP id
 h6-20020a81b646000000b00541a0cf71c9mr628936ywk.7.1678645365170; Sun, 12 Mar
 2023 11:22:45 -0700 (PDT)
MIME-Version: 1.0
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
In-Reply-To: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 12 Mar 2023 13:22:34 -0500
Message-ID: <CAFkjPTmVbyuA0jEAjYhsOsg-SE99yXgehmjqUZb4_uWS_L-ZTQ@mail.gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I was looking at kdevops the other day - cool stuff. Was
 trying
 to figure out how we could do v9fs CI with it. Both cache=loose and
 cache=fscache
 currently don't validate via host. I have a patch series which adds some
 new cache modes (readahead and writeback) that give closer to the loose
 performance but with [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.170 listed in list.dnswl.org]
X-Headers-End: 1pbQLL-0006e4-7C
Subject: Re: [V9fs-developer] 9p caching with cache=loose and cache=fscache
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSB3YXMgbG9va2luZyBhdCBrZGV2b3BzIHRoZSBvdGhlciBkYXkgLSBjb29sIHN0dWZmLiAgV2Fz
IHRyeWluZyB0bwpmaWd1cmUgb3V0IGhvdyB3ZSBjb3VsZCBkbyB2OWZzIENJIHdpdGggaXQuCgpC
b3RoIGNhY2hlPWxvb3NlIGFuZCBjYWNoZT1mc2NhY2hlIGN1cnJlbnRseSBkb24ndCB2YWxpZGF0
ZSB2aWEgaG9zdC4KSSBoYXZlIGEgcGF0Y2ggc2VyaWVzIHdoaWNoIGFkZHMgc29tZSBuZXcgY2Fj
aGUgbW9kZXMgKHJlYWRhaGVhZCBhbmQKd3JpdGViYWNrKSB0aGF0IGdpdmUgY2xvc2VyIHRvIHRo
ZSBsb29zZSBwZXJmb3JtYW5jZSBidXQgd2l0aCB0aWdodGVyCmNvbnNpc3RlbmN5IChvcGVuLXRv
LWNsb3NlKSAtIHRoZXNlIHBhdGNoZXMgYXJlIGluIG15IGVyaWN2aC9mb3ItbmV4dAp0cmVlLiAg
SSd2ZSBhbHNvIHN0YXJ0ZWQgb24gc29tZSBwYXRjaGVzIHRvIGFkZCBjYWNoZT10aWdodCB3aGlj
aCB3aWxsCmRvIGRpciBjYWNoaW5nIGxpa2UgbG9vc2UgYnV0IHdpdGggdmFsaWRhdGlvbiwgYW5k
IHBvdGVudGlhbGx5IGFsc28Kd2lsbCBhZGQgYSBuZXcgZmxhZyB0aGF0IHdpbGwgaW5kaWNhdGUg
aG93IG9mdGVuIGxvb3NlIHNob3VsZApyZXZhbGlkYXRlLiAgVGhlcmUgaXMgYWxzbyBzb21lIGRp
c2N1c3Npb24gb2YgZGVjb3VwbGluZyBmc2NhY2hlIGZyb20KdGhlIHJldmFsaWRhdGlvbiBwb2xp
Y3kuCgpTbyB0aGUgc3R1ZmYgaW4gZm9yLW5leHQgd2lsbCBtYWtlIGl0IGludG8gdGhlIG5leHQg
a2VybmVsLCB0aGVyZSBpcyBhCndyaXRlYmFjayBmaXggcGF0Y2ggdGhhdCBzdGlsbCBoYXMgc29t
ZSBidWdzIHdoZW4gY2FjaGU9ZnNjYWNoZSB0aGF0CkknbSB3b3JraW5nIHRocm91Z2gsIGJ1dCB0
aGUgYmFzZSBwYXRjaGVzIGFkZCB0aGUgbmV3IGNhY2hlIG1vZGVzLgpUaGUgbmV3IGRpciBjYWNo
ZSBhbG9uZyB3aXRoIHRpZ2h0IHBvbGljeSB3aWxsIGhvcGVmdWxseSBnZXQgZG9uZSBpbgp0aGUg
bmV4dCBtb250aCBhbmQgc28gc2hvdWxkIGJlIHJlYWR5IGZvciBuZXh0IG1lcmdlIHdpbmRvdyBh
cyB3ZWxsLgoKICAgICAgIC1lcmljCgpPbiBTYXQsIE1hciAxMSwgMjAyMyBhdCA0OjQ34oCvUE0g
THVpcyBDaGFtYmVybGFpbiA8bWNncm9mQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gV2UndmUgZW1i
cmFjZWQgOXAgb24ga2Rldm9wcyBbMF0gZm9yIHN1cHBvcnQgdG8gbGV0IGEgZ3Vlc3QgdXNlIGEg
aG9zdCdzCj4gcGF0aCB0byBpbnN0YWxsIExpbnV4LiBUaGlzIHdvcmtzIHdlbGwgZXhjZXB0IEkg
bm90aWNlIHRoYXQgaWYgdGhlIGhvc3QKPiBtYWtlcyBuZXcgY2hhbmdlcyB0aGUgZ3Vlc3QgZG9l
cyBub3Qgc2VlIGl0LiBUaGlzIGp1c3QgbWVhbnMgdGhlIGd1ZXN0Cj4gaGFzIHRvIHJlYm9vdCBl
dmVyeSB0aW1lIGJlZm9yZSBydW5uaW5nICdtYWtlIG1vZHVsZXNfaW5zdGFsbCBpbnN0YWxsIC1q
IDgnCj4gYW5kIGl0IGlzIHVuZXhwZWN0ZWQgYW5kIG5vdCB1c2VyIGZyaWVuZGx5Lgo+Cj4gSSB3
YW50ZWQgdG8gc2VlIGlmIHNvbWVvbmUgd2FzIHdvcmtpbmcgb24gZml4aW5nIHRoaXMgeWV0LiBJ
J3ZlIHRlc3RlZAo+IHdpdGggYm90aCBjYWNoZT1sb29zZSBhbmQgY2FjaGU9ZnNjYWNoZS4gV2Ug
dXNlIG1zaXplIDEzMTA3Miwgbm8KPiBzZWN1cml0eSBhbmQgdmlydGlvLTlwLXBjaS4KPgo+IFsw
XSBodHRwczovL2dpdGh1Yi5jb20vbGludXgta2Rldm9wcy9rZGV2b3BzCj4KPiAgIEx1aXMKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
