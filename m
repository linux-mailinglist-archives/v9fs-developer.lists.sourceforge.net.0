Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 903A8463A3D
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 16:38:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ms5Cf-00044p-0b; Tue, 30 Nov 2021 15:37:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <glider@google.com>) id 1ms5Cd-00044c-1u
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 15:37:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S2eOmNe/K5KnPaXh0EWVpMBrid6mFGYMI8/d33ERV8U=; b=RNIMpP7dj0DwZoG2cnZYGfBowR
 34bnSp55a8eamXosl+jOv3OPZKi1xrhUL5yasxjY3MARRULLFf1FEbH+X46exPrjSFrPIzfcXfUlm
 FjS8AdNbDy/cfFwv3fD6OSKdnYozcyaSUK9dJ22jAbZwwvQVYnSkTv1ms+rxpCTZXOhg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S2eOmNe/K5KnPaXh0EWVpMBrid6mFGYMI8/d33ERV8U=; b=gHFZNbj0bVuJCDr0Ne/t6pBIu9
 tRG8kSZqC+n3ulg0qmKhBrPuAGT6rmJqodg5LTUr2YQOm+0y3Q9TMytHTEFQnHhPQAqJNN7+8nWOy
 VO/SytS3Lqa8M3TEqQF4ftc2HgX9MMIUoDUDf2KcmQvz2n2ETgseMwFjrv0L9yjGAybE=;
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ms5CT-00074y-2X
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 15:37:56 +0000
Received: by mail-qk1-f171.google.com with SMTP id b67so27167135qkg.6
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 30 Nov 2021 07:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=S2eOmNe/K5KnPaXh0EWVpMBrid6mFGYMI8/d33ERV8U=;
 b=XoBXrcR/fE+jgrvwgZlmNXdbFCIAmq7F1MmzwqDgDH4CdKyBamDD+NDk3A9jVVfE5l
 ChTW/sHErknbPiZo7XtZ9Wh26wLL8SJj1xgYvz721BUnh9CqUzM17TwCuqtA9yfF6QCR
 odZCtB5gqowqMYKUI+0xM2gUQNNpUSrd6zRqI+tHtrzAUZewmG7cea9qjUFGM3LWqIEs
 fCX3NhQFdzVhCSwKpuuSBJvFgvMGP0+irYdW8KNS5A/UW5TO5rRbcWEbnq1PjzIZ51rC
 dlaAnSUbwWxGlfsN2xDm9GzOb4OCiwDXMtB1HErRn9DKFXu3v78zMY6ZDscfgAe1vsS3
 RTZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=S2eOmNe/K5KnPaXh0EWVpMBrid6mFGYMI8/d33ERV8U=;
 b=rsIdVmF1flYXsNr2qeeUn+XkcG6ldtPycc6/Xf5TF6OJA/WFp5ANiF0i+ghafgVYHl
 +u0Te5u0uafr+0PO+uxlakavw4WSq1MOP7YiiTfMeRG3JQAKz8IF/ZeWjU50JjWac5YS
 gA0UWRD7Mwly57AWCf6pqhj8SKOPzRdeJFMXO492lmFchVLynAJC2vpDoLqDltXxnm+h
 1Mdgo30rTYF7E/6qcSXEs3Hfwn9Z1tATRJC7xent2x0Cg0ud5OlyBoa0K1D6LU3XTsmJ
 lOBTOByRB7AE4mL1r3H1Mfq1uD8eM7RtZhmw5fcBZ/thiBsAr9KySC6pHsXwdwr6lmPA
 EiNw==
X-Gm-Message-State: AOAM532XYruXQ60D3wNtDBqcms7fO3Jvt0w7qTOQjv/LLqHOs9qxQ9Hj
 6HueOKK/TmaXuNnVfo3DPbgP/gpfqujSOSzfUZcgDg==
X-Google-Smtp-Source: ABdhPJwbBuFJtH7KP1KuNaWjw3ubJEcs+V+k46LrGvAWQAynsl1iz7Nqk5wMlOF1SkEPaLyp0BjnfKHAJEQSxHpg+7Y=
X-Received: by 2002:a05:620a:22a5:: with SMTP id
 p5mr46222714qkh.189.1638286657697; 
 Tue, 30 Nov 2021 07:37:37 -0800 (PST)
MIME-Version: 1.0
References: <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org> <20211130074955.GR6514@kadam>
 <CACT4Y+bqJZNXyG0x=HieW26WdAmAt=5o4M7NgCa_5UR-4jdN3w@mail.gmail.com>
 <20211130091101.GW18178@kadam>
 <CACT4Y+a2RN-q9os99Ms_T0nJLqaFo6u225PwCON7DqXTdEcj8g@mail.gmail.com>
 <20211130092310.GX18178@kadam>
In-Reply-To: <20211130092310.GX18178@kadam>
Date: Tue, 30 Nov 2021 16:37:01 +0100
Message-ID: <CAG_fn=Vo=FABp-URfpfuCnW7fCzEvHM=1w5ygs7o0Xuw8qV1iQ@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 30,
 2021 at 10:23 AM Dan Carpenter <dan.carpenter@oracle.com>
 wrote: > > On Tue, Nov 30, 2021 at 10:12:43AM +0100, Dmitry Vyukov wrote:
 > > On Tue, 30 Nov 2021 at 10:11, Dan Carpenter <dan [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.171 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.171 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1ms5CT-00074y-2X
Subject: Re: [V9fs-developer] [PATCH] 9p: only copy valid iattrs in 9P2000.L
 setattr implementation
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
From: Alexander Potapenko via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Alexander Potapenko <glider@google.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christian Brauner <brauner@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, syzkaller-bugs@googlegroups.com,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 Christian Brauner <christian.brauner@ubuntu.com>, stable@kernel.org,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVHVlLCBOb3YgMzAsIDIwMjEgYXQgMTA6MjMgQU0gRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBl
bnRlckBvcmFjbGUuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDMwLCAyMDIxIGF0IDEwOjEy
OjQzQU0gKzAxMDAsIERtaXRyeSBWeXVrb3Ygd3JvdGU6Cj4gPiBPbiBUdWUsIDMwIE5vdiAyMDIx
IGF0IDEwOjExLCBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+IHdyb3Rl
Ogo+ID4gPiBCdXQgc2F5IHlvdSBjYWxsIGEgZnVuY3Rpb24gd2l0aCBhbiB1bmluaXRpYWxpemVk
IHZhcmlhYmxlIHdvbid0IHRoYXQKPiA+ID4gdHJpZ2dlciBhIHdhcm5pbmc/ICBJdCB1c2VkIHRv
Lgo+ID4KPiA+IEl0IHdvbid0IHRyaWdnZXIgYSB3YXJuaW5nIHdpdGggS01TQU4uIEl0IG5ldmVy
IGRpZC4KPiA+Cj4gPiBCdXQgeW91IG1lbnRpb25lZCBVQlNhbiwgbWF5YmUgeW91IG1lYW4gc29t
ZSBvdGhlciBjaGVja3MuIEkgZG9uJ3QKPiA+IHJlbWVtYmVyIFVCU2FuIGNoZWNraW5nIGZvciB1
bmluaXRzLi4uCj4KPiBJIHJlbWVtYmVyIHNlZWluZyByZWFkaW5nIHRoaXMgZGlzY3Vzc2lvbiBh
IGxvbmcgdGltZSBhZ28gYnV0IEkgZG9uJ3QKPiByZW1lbWJlciB0aGUgZGV0YWlscyBhdCBhbGwu
Li4KPgo+IEFueXdheSwgU21hdGNoIHdpbGwgd2FybiBpZiB5b3UgcGFzcyB1bml0aWFsaXplZCB2
YXJpYWJsZXMgdG8gYSBmdW5jdGlvbgo+IHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGV5IGFyZSB1
c2VkIG9yIG5vdC4gIEV2ZXJ5dGhpbmcgZWxzZSBiZWNvbWVzIHRvbwo+IGNvbXBsaWNhdGVkLiAg
SWYgaXQncyByZWFsbHkgYSBmYXN0IHBhdGggcGVvcGxlIHdpbGwganVzdCBoYXZlIHRvIGxpdmUK
PiB3aXRoIHRoZSB3YXJuaW5ncy4gIFBhc3NpbmcgdW5pbml0aWFsaXplZCB2YXJpYWJsZXMgZGVs
aWJlcmF0ZWx5IGlzIHJhcmUKPiBhbmQgSSd2ZSBvbmx5IHNlZW4gaXQgaGFwcGVuIG9uY2Ugd2hl
cmUgaXQgbWFkZSBzZW5zZS4gIFRoZSByZXN0IHdhcwo+IGp1c3QgZmFuY3kgcGFudHMgc2hvd2lu
ZyBvZmYgaG93IGNvbXBsaWNhdGVkIHlvdSBjYW4gd3JpdGUgY29kZSBmb3Igbm8KPiByZWFzb24u
CgpBcyBmYXIgYXMgSSBjYW4gdGVsbCwgYSBsb3Qgb2Ygc3RydWN0cyBpbiB0aGUga2VybmVsIGdl
dCBhbGxvY2F0ZWQgYnkKa21hbGxvYygpIGluIG9uZSBmdW5jdGlvbiBhbmQgdGhlbiBwYXNzZWQg
dG8gYSBkaWZmZXJlbnQgZnVuY3Rpb24KKHRoYXQgbWF5IGJlbG9uZyB0byBhIGRpZmZlcmVudCB0
cmFuc2xhdGlvbiB1bml0KSBmb3IgaW5pdGlhbGl6YXRpb24uCkV2ZW4gY29weV9mcm9tX3VzZXIo
KSByZWNlaXZlcyBhbiB1bmluaXRpYWxpemVkIGJ1ZmZlciwgYnV0IHRoZXJlIGFyZQptb3JlIGVs
YWJvcmF0ZSBjYXNlcywgaW4gd2hpY2ggZS5nLiBhIGhlbHBlciBmdW5jdGlvbiBzZXRzIGZsYWdz
IGZvciBhCnBhcnRpYWxseSBpbml0aWFsaXplZCBzdHJ1Y3QgYmFzZWQgb24gaXRzIGZpZWxkcy4K
Ck5vdGUgdGhhdCBhIGxvdCBvZiBzdHJ1Y3RzIGNvbnRhaW4gdW5pbml0aWFsaXplZCBwYWRkaW5n
LCBhbmQgaXQncwpzdGlsbCBwZXJmZWN0bHkgdmFsaWQgdG8gcGFzcyB0aGVtIHRvIG1vc3QgZnVu
Y3Rpb25zIGFzIGxvbmcgYXMgeW91CmRvbid0IHNlbmQgdGhlbSBvdmVyIHRoZSBuZXR3b3JrIG9y
IGNvcHkgdGhlbSB0byB0aGUgdXNlcnNwYWNlLgoKSSBkb24ndCB0aGluayB0aGUgY3VycmVudCBk
ZXZlbG9wbWVudCBzdHlsZSB3aWxsIHRvbGVyYXRlIHN1Y2ggYQp3YXJuaW5nIGJlaW5nIHJlcG9y
dGVkIG9uIGV2ZXJ5IHN0cnVjdCBpbml0aWFsaXphdGlvbi4KCj4gcmVnYXJkcywKPiBkYW4gY2Fy
cGVudGVyCj4KPiAtLQo+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJl
IHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgInN5emthbGxlci1idWdzIiBncm91cC4K
PiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWls
cyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIHN5emthbGxlci1idWdzK3Vuc3Vic2NyaWJlQGdv
b2dsZWdyb3Vwcy5jb20uCj4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiB2aXNp
dCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvc3l6a2FsbGVyLWJ1Z3MvMjAyMTEx
MzAwOTIzMTAuR1gxODE3OCU0MGthZGFtLgoKCgotLSAKQWxleGFuZGVyIFBvdGFwZW5rbwpTb2Z0
d2FyZSBFbmdpbmVlcgoKR29vZ2xlIEdlcm1hbnkgR21iSApFcmlrYS1NYW5uLVN0cmHDn2UsIDMz
CjgwNjM2IE3DvG5jaGVuCgpHZXNjaMOkZnRzZsO8aHJlcjogUGF1bCBNYW5pY2xlLCBIYWxpbWFo
IERlTGFpbmUgUHJhZG8KUmVnaXN0ZXJnZXJpY2h0IHVuZCAtbnVtbWVyOiBIYW1idXJnLCBIUkIg
ODY4OTEKU2l0eiBkZXIgR2VzZWxsc2NoYWZ0OiBIYW1idXJnCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0
ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
