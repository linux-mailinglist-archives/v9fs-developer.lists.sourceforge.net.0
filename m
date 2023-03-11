Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBF26B5EC9
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 18:28:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pb31F-0000tn-Vu;
	Sat, 11 Mar 2023 17:28:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <k.kahurani@gmail.com>) id 1pb31C-0000th-3f
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 17:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fnRfrNBgW6VmdsH5V5foIRR4UqfDscL7jiZjugpsRTo=; b=gH7cMOqPT156VC7w2to8wbHPfF
 HEyEgT0lUmvAsLbA11jkoq9UpGXAxXaYzX0LZeaC8sbk5rk2f/JESv/e73nY8CUGsUnUPQRaKwwaX
 /OJncSJZDJLCpDXDZ/9NzJ21zww0vImZLbprGhO5rrVQKJp3YqAwFwZtlQxAHCgUbLkU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fnRfrNBgW6VmdsH5V5foIRR4UqfDscL7jiZjugpsRTo=; b=WwzrDERw3XXqoeX6pFu6URkzXY
 TxxHlovmUj4gwA8MxcUZhMUHlCb+7LwTpBSZ5cx/E0sluDtFMnDBvRlHVwVN3BUq65sH3lCnMUNO3
 U223Td9qW6EryVQpC+u4RIB1FA8dRh/7w/ALsQ3KpknDiKbpiK0H0gqlts4r1wv6Oxks=;
Received: from mail-qt1-f174.google.com ([209.85.160.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pb31A-004sP4-MN for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 17:28:30 +0000
Received: by mail-qt1-f174.google.com with SMTP id l13so9198955qtv.3
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Mar 2023 09:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678555702;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=fnRfrNBgW6VmdsH5V5foIRR4UqfDscL7jiZjugpsRTo=;
 b=C6D5HWsfgRAVuzMHhXeARyWuDjQgOKKer7Ufufgzt0noOOc52Q1n6+XRBM3TSoUWEJ
 XSzPNVsOekj4XArMD37y6hPza1Cg+tuPLXDg5ygK1OS1/k7R93nfruXDROk8aSIUIpry
 J8NIWsR1XLoaEm+/paZETVfzweT55acsl8Jz3jYuWCgzBWvHTaQpbsh9k7zpjEorh8to
 73siR+m+Dhc0VeUjQbX5KtL1PSjQKNgUPRcZACxq5O+BqVwoXem0pYBgf5GyB2CfFGJU
 1F9/CF0hVdoRYuAziPsUViPIpvg2Sbd+eWmEw5A+OTG/+sE2LyZkOD7ZSRCvAUEJ734a
 NOjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678555702;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fnRfrNBgW6VmdsH5V5foIRR4UqfDscL7jiZjugpsRTo=;
 b=K6I020uryKYwTiBZOXRXjSs2AY63PLJPsv+4akUqp/q55YPSlNtd2mDYmo/IZuPBNJ
 j4yDGEEUXiEEFZpnqTbf3bPTY0YjWupeaPGetJUJO3Guc6Y6Jx3GYLEm1UCm2pXZsbNL
 oMo4qll1TWTd/UsfwPkdMRlYFJ+xHHlV7UtHsxtU47knhnGRI5FpLECrKnEr5rk9qnkP
 +aW447fzAXpV0AOt5eyOXlNvwYEyakOxKyryhrDG2xY83KnMbKpsvaBcSGVPHt8YfLdR
 KdGiP33o3Is6DgUsgfZCME9G1C49e/MKCVFt9iWlChuXCIqDj8XD5g0gfffSmCHYJX/I
 cwdA==
X-Gm-Message-State: AO0yUKWfKSP5FajLRjAhd/sAwEyW33oY6imB8db3PTxv5N1sxJBMeMqZ
 cc9Yai97E2SjMJ/rqhjsoD+/mXTFSxPVRwZO1g/GXhe1
X-Google-Smtp-Source: AK7set9MRPoWlhlXXNagYxf7CMlIQeQnU+M7fqxlruT+LftsaXnAPYZ8vyLAxDqRt4PSvOUSgVD2j6p38/nFosDJGuA=
X-Received: by 2002:ac8:4295:0:b0:3bf:e153:89d8 with SMTP id
 o21-20020ac84295000000b003bfe15389d8mr7536967qtl.0.1678555702618; Sat, 11 Mar
 2023 09:28:22 -0800 (PST)
MIME-Version: 1.0
References: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
In-Reply-To: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
From: David Kahurani <k.kahurani@gmail.com>
Date: Sat, 11 Mar 2023 20:28:11 +0300
Message-ID: <CAAZOf24yhpSBd1926v7T=qDwqvFfLsWMJeMKTafeZ=69hJ4rdw@mail.gmail.com>
To: Ivan Orlov <ivan.orlov0322@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, Mar 10, 2023 at 11:28 PM Ivan Orlov wrote: > KASAN
    reported the following issue: > [ 36.825817][ T5923] BUG: KASAN: wild-memory-access
    in > v9fs_get_acl+0x1a4/0x390 > [ 36.827479][ T5923] Write of size 4 at addr
    9fffeb37f97f1c00 by task > syz- [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [k.kahurani[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.174 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.174 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pb31A-004sP4-MN
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH] 9P FS: Fix wild-memory-access write in
 v9fs_get_acl
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org,
 syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gRnJpLCBNYXIgMTAsIDIwMjMgYXQgMTE6MjjigK9QTSBJdmFuIE9ybG92IDxpdmFuLm9ybG92
MDMyMkBnbWFpbC5jb20+Cndyb3RlOgoKPiBLQVNBTiByZXBvcnRlZCB0aGUgZm9sbG93aW5nIGlz
c3VlOgo+IFsgICAzNi44MjU4MTddWyBUNTkyM10gQlVHOiBLQVNBTjogd2lsZC1tZW1vcnktYWNj
ZXNzIGluCj4gdjlmc19nZXRfYWNsKzB4MWE0LzB4MzkwCj4gWyAgIDM2LjgyNzQ3OV1bIFQ1OTIz
XSBXcml0ZSBvZiBzaXplIDQgYXQgYWRkciA5ZmZmZWIzN2Y5N2YxYzAwIGJ5IHRhc2sKPiBzeXot
ZXhlY3V0b3I3OTgvNTkyMwo+IFsgICAzNi44MjkzMDNdWyBUNTkyM10KPiBbICAgMzYuODI5ODQ2
XVsgVDU5MjNdIENQVTogMCBQSUQ6IDU5MjMgQ29tbTogc3l6LWV4ZWN1dG9yNzk4IE5vdCB0YWlu
dGVkCj4gNi4yLjAtc3l6a2FsbGVyLTE4MzAyLWc1OTZiNmI3MDk2MzIgIzAKPiBbICAgMzYuODMy
MTEwXVsgVDU5MjNdIEhhcmR3YXJlIG5hbWU6IEdvb2dsZSBHb29nbGUgQ29tcHV0ZSBFbmdpbmUv
R29vZ2xlCj4gQ29tcHV0ZSBFbmdpbmUsIEJJT1MgR29vZ2xlIDAxLzIxLzIwMjMKPiBbICAgMzYu
ODM0NDY0XVsgVDU5MjNdIENhbGwgdHJhY2U6Cj4gWyAgIDM2LjgzNTE5Nl1bIFQ1OTIzXSAgZHVt
cF9iYWNrdHJhY2UrMHgxYzgvMHgxZjQKPiBbICAgMzYuODM2MjI5XVsgVDU5MjNdICBzaG93X3N0
YWNrKzB4MmMvMHgzYwo+IFsgICAzNi44MzcxMDBdWyBUNTkyM10gIGR1bXBfc3RhY2tfbHZsKzB4
ZDAvMHgxMjQKPiBbICAgMzYuODM4MTAzXVsgVDU5MjNdICBwcmludF9yZXBvcnQrMHhlNC8weDRj
MAo+IFsgICAzNi44MzkwNjhdWyBUNTkyM10gIGthc2FuX3JlcG9ydCsweGQ0LzB4MTMwCj4gWyAg
IDM2Ljg0MDA1Ml1bIFQ1OTIzXSAga2FzYW5fY2hlY2tfcmFuZ2UrMHgyNjQvMHgyYTQKPiBbICAg
MzYuODQxMTk5XVsgVDU5MjNdICBfX2thc2FuX2NoZWNrX3dyaXRlKzB4MmMvMHgzYwo+IFsgICAz
Ni44NDIyMTZdWyBUNTkyM10gIHY5ZnNfZ2V0X2FjbCsweDFhNC8weDM5MAo+IFsgICAzNi44NDMy
MzJdWyBUNTkyM10gIHY5ZnNfbW91bnQrMHg3N2MvMHhhNWMKPiBbICAgMzYuODQ0MTYzXVsgVDU5
MjNdICBsZWdhY3lfZ2V0X3RyZWUrMHhkNC8weDE2Ywo+IFsgICAzNi44NDUxNzNdWyBUNTkyM10g
IHZmc19nZXRfdHJlZSsweDkwLzB4Mjc0Cj4gWyAgIDM2Ljg0NjEzN11bIFQ1OTIzXSAgZG9fbmV3
X21vdW50KzB4MjVjLzB4OGM4Cj4gWyAgIDM2Ljg0NzA2Nl1bIFQ1OTIzXSAgcGF0aF9tb3VudCsw
eDU5MC8weGU1OAo+IFsgICAzNi44NDgxNDddWyBUNTkyM10gIF9fYXJtNjRfc3lzX21vdW50KzB4
NDVjLzB4NTk0Cj4gWyAgIDM2Ljg0OTI3M11bIFQ1OTIzXSAgaW52b2tlX3N5c2NhbGwrMHg5OC8w
eDJjMAo+IFsgICAzNi44NTA0MjFdWyBUNTkyM10gIGVsMF9zdmNfY29tbW9uKzB4MTM4LzB4MjU4
Cj4gWyAgIDM2Ljg1MTM5N11bIFQ1OTIzXSAgZG9fZWwwX3N2YysweDY0LzB4MTk4Cj4gWyAgIDM2
Ljg1MjM5OF1bIFQ1OTIzXSAgZWwwX3N2YysweDU4LzB4MTY4Cj4gWyAgIDM2Ljg1MzIyNF1bIFQ1
OTIzXSAgZWwwdF82NF9zeW5jX2hhbmRsZXIrMHg4NC8weGYwCj4gWyAgIDM2Ljg1NDI5M11bIFQ1
OTIzXSAgZWwwdF82NF9zeW5jKzB4MTkwLzB4MTk0Cj4KPiBDYWxsaW5nICdfX3Y5ZnNfZ2V0X2Fj
bCcgbWV0aG9kIGluICd2OWZzX2dldF9hY2wnIGNyZWF0ZXMgdGhlCj4gZm9sbG93aW5nIGNoYWlu
IG9mIGZ1bmN0aW9uIGNhbGxzOgo+Cj4gX192OWZzX2dldF9hY2wKPiAgICAgICAgIHY5ZnNfZmlk
X2dldF9hY2wKPiAgICAgICAgICAgICAgICAgdjlmc19maWRfeGF0dHJfZ2V0Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgcDlfY2xpZW50X3hhdHRyd2Fsawo+Cj4gRnVuY3Rpb24gcDlfY2xpZW50
X3hhdHRyd2FsayBhY2NlcHRzIGEgcG9pbnRlciB0byB1NjQtdHlwZWQKPiB2YXJpYWJsZSBhdHRy
X3NpemUgYW5kIHB1dHMgc29tZSB1NjQgdmFsdWUgaW50byBpdC4gSG93ZXZlciwKPiBhZnRlciB0
aGUgZXhlY3V0aW5nIHRoZSBwOV9jbGllbnRfeGF0dHJ3YWxrLCBpbiBzb21lIGNpcmN1bXN0YW5j
ZXMKPiB3ZSBhc3NpZ24gdGhlIHZhbHVlIG9mIHU2NC10eXBlZCB2YXJpYWJsZSAnYXR0cl9zaXpl
JyB0byB0aGUKPiB2YXJpYWJsZSAncmV0dmFsJywgd2hpY2ggd2Ugd2lsbCByZXR1cm4uIEhvd2V2
ZXIsIHRoZSB0eXBlIG9mCj4gJ3JldHZhbCcgaXMgc3NpemVfdCwgYW5kIGlmIHRoZSB2YWx1ZSBv
ZiBhdHRyX3NpemUgaXMgbGFyZ2VyCj4gdGhhbiBTU0laRV9NQVgsIHdlIHdpbGwgZmFjZSB0aGUg
c2lnbmVkIHR5cGUgb3ZlcmZsb3cuIElmIHRoZQo+IG92ZXJmbG93IG9jY3VycywgdGhlIHJlc3Vs
dCBvZiB2OWZzX2ZpZF94YXR0cl9nZXQgbWF5IGJlCj4gbmVnYXRpdmUsIGJ1dCBub3QgY2xhc3Np
ZmllZCBhcyBhbiBlcnJvci4gV2hlbiB3ZSB0cnkgdG8gYWxsb2NhdGUKPiBhbiBhY2wgd2l0aCAn
YnJva2VuJyBzaXplIHdlIHJlY2VpdmUgYW4gZXJyb3IsIGJ1dCBkb24ndCBwcm9jZXNzCj4gaXQu
IFdoZW4gd2UgdHJ5IHRvIGZyZWUgdGhpcyBhY2wsIHdlIGZhY2UgdGhlICd3aWxkLW1lbW9yeS1h
Y2Nlc3MnCj4gZXJyb3IgKGJlY2F1c2UgaXQgd2Fzbid0IGFsbG9jYXRlZCkuCj4KPiBUaGlzIHBh
dGNoIHdpbGwgbW9kaWZ5IHRoZSBjb25kaXRpb24gaW4gdGhlICd2OWZzX2ZpZF94YXR0cl9nZXQn
Cj4gZnVuY3Rpb24sIHNvIGl0IHdpbGwgcmV0dXJuIGFuIGVycm9yIGlmIHRoZSAnYXR0cl9zaXpl
JyBpcyBsYXJnZXIKPiB0aGFuIFNTSVpFX01BWC4KPgo+IFJlcG9ydGVkLWJ5OiBzeXpib3QrY2Ix
ZDE2ZmFjYjNjYzkwZGU1ZmJAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+IExpbms6Cj4gaHR0
cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2lkPWZiYmVmNjZkOWU0ZDA5NjI0MmYzNjE3
ZGU1ZDE0ZDEyNzA1YjQ2NTkKPiBTaWduZWQtb2ZmLWJ5Cj4gPGh0dHBzOi8vc3l6a2FsbGVyLmFw
cHNwb3QuY29tL2J1Zz9pZD1mYmJlZjY2ZDllNGQwOTYyNDJmMzYxN2RlNWQxNGQxMjcwNWI0NjU5
U2lnbmVkLW9mZi1ieT46Cj4gSXZhbiBPcmxvdiA8aXZhbi5vcmxvdjAzMjJAZ21haWwuY29tPgo+
IC0tLQo+ICBmcy85cC94YXR0ci5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9mcy85cC94YXR0ci5jIGIvZnMv
OXAveGF0dHIuYwo+IGluZGV4IDUwZjdmM2Y2YjU1ZS4uZDZmNzQ1MDEwN2E4IDEwMDY0NAo+IC0t
LSBhL2ZzLzlwL3hhdHRyLmMKPiArKysgYi9mcy85cC94YXR0ci5jCj4gQEAgLTM1LDcgKzM1LDcg
QEAgc3NpemVfdCB2OWZzX2ZpZF94YXR0cl9nZXQoc3RydWN0IHA5X2ZpZCAqZmlkLCBjb25zdAo+
IGNoYXIgKm5hbWUsCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXR2YWw7Cj4gICAgICAgICB9
Cj4gICAgICAgICBpZiAoYXR0cl9zaXplID4gYnVmZmVyX3NpemUpIHsKPiAtICAgICAgICAgICAg
ICAgaWYgKCFidWZmZXJfc2l6ZSkgLyogcmVxdWVzdCB0byBnZXQgdGhlIGF0dHJfc2l6ZSAqLwo+
ICsgICAgICAgICAgICAgICBpZiAoIWJ1ZmZlcl9zaXplICYmIGF0dHJfc2l6ZSA8PSAodTY0KSBT
U0laRV9NQVgpIC8qCj4gcmVxdWVzdCB0byBnZXQgdGhlIGF0dHJfc2l6ZSAqLwo+CgpJJ20gbm90
IHN1cmUgd2hhdCBhcmUgdGhlIHJ1bGVzIGFyb3VuZCBoZXJlIGJ1dCBJIHByZWZlciB0byB1c2Ug
YnJhY2tldHMKbW9yZSBnZW5lcm91c2x5LgoKCj4gICAgICAgICAgICAgICAgICAgICAgICAgcmV0
dmFsID0gYXR0cl9zaXplOwo+ICAgICAgICAgICAgICAgICBlbHNlCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dmFsID0gLUVSQU5HRTsKPiAtLQo+IDIuMzQuMQo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1rZXJuZWwtbWVudGVl
cyBtYWlsaW5nIGxpc3QKPiBMaW51eC1rZXJuZWwtbWVudGVlc0BsaXN0cy5saW51eGZvdW5kYXRp
b24ub3JnCj4gaHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgta2VybmVsLW1lbnRlZXMKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
