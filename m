Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 668C16CA527
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Mar 2023 15:05:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgmXb-000252-CE;
	Mon, 27 Mar 2023 13:05:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pgmXa-00024w-GI
 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 13:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1kI4+ZML1G+b7UOhhIPy0YcoMp05rWzeHpNMkjZ5sBM=; b=kIhLm9uajjwAWb08xo0KoKr+y8
 BMM31kGRSMGfJ6wIMZRgC7OtFAI8xtKl7bm17MTW6AeAJajKYkPGnQB4wh0W/MvrexUrRORo9mARC
 j0+lqlNbRGQPHlgYBDwl/dM7+j1zNAybG4btbk7ibycx4yKbvLD61YYySDfOwh9LG2c0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1kI4+ZML1G+b7UOhhIPy0YcoMp05rWzeHpNMkjZ5sBM=; b=gQMmLYn4rKZ0kwZbyKGXmud192
 ob7Q3+OPhxPyAkeyOqXSFZYRL7ljG6pGa1G2ZsnRPw2arhmtvLI6Nxsm7aXba0CchdHmBT2UMSWO0
 PFv/LcaHmLzpQAdgI4+sqGhmEGAF/mR8UQDpwca/a14/uI8ADUKZcle9Re27NF8gBI68=;
Received: from mail-yw1-f172.google.com ([209.85.128.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pgmXa-005nQG-MX for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 13:05:39 +0000
Received: by mail-yw1-f172.google.com with SMTP id
 00721157ae682-536af432ee5so169910957b3.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 27 Mar 2023 06:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679922333;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1kI4+ZML1G+b7UOhhIPy0YcoMp05rWzeHpNMkjZ5sBM=;
 b=eGJbxFAKr99gaJCfSPpVY6tAXOC7kz1Z46129jPkjmRZI15o7BPYTsYLErf27oMdMa
 GUEx4Rgn5/dQ3LeRfTITSn6S4uYMdJTLqtSnS79SyCvaq9ls8IPQA9fMDTQYAVVwHjp/
 pWBmRSCoqH8ZuxqsM+EWBOBvuqrG5hXlmmh/bLryQcUo7seFk9YLrZYAL3zrNhsY7KUl
 rJ7mXz6/dF/TQIgEAZ0ih4evyEwWOaEINft6m0VhmKRaCDqvCs0ZrTztGn/ax1nenvjn
 btfKj1Rr6PjxEIWbe6qXRwEdnO9jN3lzWNpK9PXsdPMDIBW9xys9iXb/AMtMBSq2emOU
 mi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679922333;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1kI4+ZML1G+b7UOhhIPy0YcoMp05rWzeHpNMkjZ5sBM=;
 b=qtz/wA1LyJATzdf8d+AUc2/oOGQ2QZ3bnqp+KrKFswgghwGT8c6wnRoNKlttvGkptQ
 DDILGsxke/UG/WioQi33nxoSi9IhRRpsE/9YF+r9u/OOPvzBq+rszClwTf+sHa+i+8/c
 YE6eGMK2zg0wl9hcoyjHf0mygaay+5r0SbdOBXNMr67Y9D2mG8f+gDpl9eSlMJVSKAQg
 qg/iOc4XmjBfnuKkzkvKSs0Rot0IP5ZWMtjVl3trNARau7lpbVC/jSwHUgIYYEmW6JyG
 YsoLzp7w4EFiWedcTKvfBMoP3w2lvw9UAf8vu5gUgaKAggy4pI9c0DFlin7mHUAiqIIL
 XLMg==
X-Gm-Message-State: AAQBX9c6WdXWZ5ldhaMt7nPewn2DCoMjUvKT8KLbRUF4MrryWAAeOUDU
 u5AzigAmlll/Xxez/pGuGsiJObZQHgdxR+X9Arzlp1cmOv0=
X-Google-Smtp-Source: AKy350Z4VggKyeXerp4WTMHkr70rECNj3yJhtgG+y0uIKDVAuijNVMVhTx7ee5r0HbhuJJ+bP33wjPL819meQ/JtP90=
X-Received: by 2002:a81:ae4f:0:b0:545:ed8e:f4f6 with SMTP id
 g15-20020a81ae4f000000b00545ed8ef4f6mr1504273ywk.5.1679922332668; Mon, 27 Mar
 2023 06:05:32 -0700 (PDT)
MIME-Version: 1.0
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <CAFkjPTmVbyuA0jEAjYhsOsg-SE99yXgehmjqUZb4_uWS_L-ZTQ@mail.gmail.com>
 <ZBSc1jjYJn6noeMl@bombadil.infradead.org>
In-Reply-To: <ZBSc1jjYJn6noeMl@bombadil.infradead.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 27 Mar 2023 08:05:21 -0500
Message-ID: <CAFkjPTmc-OgMEj9kF3y04sRGeOVO_ogEv1fGG=-CfKP-0ZKC_g@mail.gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Sorry, took a bit to unstack from day job, but while going
    through the patch queue I remembered I still had some questions to answer
    here. On Fri, Mar 17, 2023 at 12:01 PM Luis Chamberlain wrote: > > On Sun,
    Mar 12, 2023 at 01:22:34PM -0500, Eric Van Hensbergen wrote: > > I was looking
    at kdevops the other day - cool stuff. Was tryin [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ericvh[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.172 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1pgmXa-005nQG-MX
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
Cc: lucho@ionkov.net, Jeff Layton <jlayton@kernel.org>,
 Josef Bacik <josef@toxicpanda.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

U29ycnksIHRvb2sgYSBiaXQgdG8gdW5zdGFjayBmcm9tIGRheSBqb2IsIGJ1dCB3aGlsZSBnb2lu
ZyB0aHJvdWdoIHRoZQpwYXRjaCBxdWV1ZSBJIHJlbWVtYmVyZWQgSSBzdGlsbCBoYWQgc29tZSBx
dWVzdGlvbnMgdG8gYW5zd2VyIGhlcmUuCgpPbiBGcmksIE1hciAxNywgMjAyMyBhdCAxMjowMeKA
r1BNIEx1aXMgQ2hhbWJlcmxhaW4gPG1jZ3JvZkBrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFN1
biwgTWFyIDEyLCAyMDIzIGF0IDAxOjIyOjM0UE0gLTA1MDAsIEVyaWMgVmFuIEhlbnNiZXJnZW4g
d3JvdGU6Cj4gPiBJIHdhcyBsb29raW5nIGF0IGtkZXZvcHMgdGhlIG90aGVyIGRheSAtIGNvb2wg
c3R1ZmYuICBXYXMgdHJ5aW5nIHRvCj4gPiBmaWd1cmUgb3V0IGhvdyB3ZSBjb3VsZCBkbyB2OWZz
IENJIHdpdGggaXQuCj4KPiBIYXBweSB0byBoZWxwIGFueSBxdWVzdGlvbnMgeW91IG1heSBoYXZl
IGFib3V0IGl0IQo+Cj4gPiBCb3RoIGNhY2hlPWxvb3NlIGFuZCBjYWNoZT1mc2NhY2hlIGN1cnJl
bnRseSBkb24ndCB2YWxpZGF0ZSB2aWEgaG9zdC4KPgo+IFdoYXQgZG9lcyB0aGlzIG1lYW4gZXhh
Y3RseT8KPgoKVGhhdCdzIGEgZ29vZCBxdWVzdGlvbiAtIEkgZ3Vlc3MgdGhlIGFuc3dlciBpcyAi
YnkgZGVzaWduIiB0aGV5IGRvbid0CmRvIGFueXRoaW5nIHNwZWNpYWwgdG8gY2hlY2sgdGhhdCB0
aGUgY2FjaGUgaXMgdXAgdG8gZGF0ZSB3aXRoIHRoZQpob3N0LiAgVGhhdCBiZWluZyBzYWlkLCB0
aGVyZSBhcmUgc2V2ZXJhbCBwbGFjZXMgaW4gdGhlIGNvZGUgd2hlcmUgdGhlCmNhY2hlIHdpbGwg
YmUgaW52YWxpZGF0ZWQgKGluIHNvbWUgY2FzZXMgZXZlbiBpZiBpdHMgdXAgdG8gZGF0ZSB3aXRo
CnRoZSBob3N0LCB5ZXMsIHRob3NlIGFyZSBsaWtlbHkgYnVncykuICBNYW55IG9mIHRoZSBpbnZh
bGlkYXRpb25zIHRoYXQKYXJlIHByZXNlbnQgYXJlIG92ZXJseSBjb25zZXJ2YXRpdmUuICBUaGUg
a2V5IG1pc3Npbmcgb25lIGlzCnY5ZnNfbG9va3VwX3JldmFsaWRhdGUgd2hpY2ggY3VycmVudGx5
IGZpbGxzIG1pc3NpbmcgaW5vZGUgZGF0YSBidXQKc2hvdWxkIHBvdGVudGlhbGx5IGFsc28gY2hl
Y2sgdG8gc2VlIGlmIGFueXRoaW5nIGluIHRoZSBmaWxlIGNoYW5nZWQKYW5kIHJlYWN0IGFjY29y
ZGluZ2x5LiAgVGhlIG90aGVyIHRoaW5nIGlzIHRoYXQgd2UgYXJlbid0IGFsd2F5cyB1c2luZwp0
aGUgY2FjaGVzIHdoZW4gd2Ugc2hvdWxkLCBpZiB5b3UgbG9vayBhdCB0aGUgdHJhZmZpYyBldmVu
IHdoZW4KZXZlcnl0aGluZyBzaG91bGQgYmUgcGVyZmVjdGx5IGNhY2hlZCBpbiBmc2NhY2hlIHdl
IGFyZSBnZXR0aW5nIGRhdGEKYW5kIG1ldGFkYXRhIGZyb20gdGhlIHdpcmUgLS0gdGhvc2UgYXJl
IG1vc3RseSBidWdzIGluIHRoZSBjYWNoZQppbXBsZW1lbnRhdGlvbiB0aGF0IEknbSB0cnlpbmcg
dG8gZ28gdGhyb3VnaCBhbmQgZml4IG5vdy4KCkZyb20gdGhlIDlwIHBlcnNwZWN0aXZlLCB3ZSBz
aG91bGQgYmUgbG9va2luZyBhdCBxaWQudmVyc2lvbiB2YWx1ZXMKcmV0dXJuZWQgZnJvbSB0aGUg
aG9zdCBhbmQgbWF0Y2hpbmcgdGhlbSB0byBvdXIgaW50ZXJuYWwgbm90aW9uIG9mCnZlcnNpb24u
ICBJZiB0aGUgdmVyc2lvbnMgZG9uJ3QgbWF0Y2ggd2Ugc2hvdWxkIGJlIGludmFsaWRhdGluZwpj
YWNoZXMuICBxaWQudmVyc2lvbnMgZ2V0IHJldHVybmVkIG9uIG9wZW4sIGxvb2t1cCwgYW5kIG1v
c3QgbWV0YS1kYXRhCm9wZXJhdGlvbnMgc28gdGhlcmUncyBsb3RzIG9mIG9wcG9ydHVuaXRpZXMg
dGhlcmUuICBUaGVyZSBhcmUgc3RpbGwKc29tZSBpc3N1ZXMgd2l0aCB0aGlzIGFwcHJvYWNoLCBu
YW1lbHkgdGhhdCBub3QgYWxsIHNlcnZlcnMgcG9wdWxhdGUKcWlkLnZlcnNpb24gYW5kIHJpZ2h0
IG5vdyB0aGUgb25lcyB0aGF0IGRvIHVzZSBhIGhhc2hlZCB0aW1lc3RhbXAKKHNpbmNlIHFpZC52
ZXJzaW9uIGlzIG9ubHkgMzItYml0cykuICBUaGlzIHByb2JhYmx5IGNvdmVycyBtb3N0IGJhc2Vz
LApidXQgaXRzIG5vdCBpZGVhbCAtLSBzbyBjdXJycmVudGx5IHRoaW5raW5nIHRocm91Z2ggd2hl
dGhlciB3ZSBkbyBhCmZ1cnRoZXIgZXh0ZW5zaW9uIG9mIHRoZSBwcm90b2NvbCBvciB1c2Ugc29t
ZSBvdGhlciBtZWNoYW5pc20uClRoZXJlJ3MgYSBwb3NzaWJpbGl0eSBvZiB1c2luZyBhIGZ1bGwg
Z2V0YXR0ciBldmVyeSBzbyBvZnRlbiB0bwpiYWNrLXVwIHFpZC52ZXJzaW9uIHZhbGlkYXRpb24s
IGJ1dCBpZiB3ZSB3YW50IHRydWx5IHRpZ2h0IGNvaGVyZW5jZQoobm90IGp1c3Qgb3BlbiB0byBj
bG9zZSkgdGhlbiB3ZSBuZWVkIHRvIG9wZW4gdXAgc29tZSBzb3J0IG9mIGJhY2sKY2hhbm5lbCBm
b3IgaW52YWxpZGF0ZXMgZnJvbSB0aGUgc2VydmVyIC0tIGJ1dCBJIHRoaW5rIHRoZSBxaWQgYmFz
ZWQKaW52YWxpZGF0aW9uIHByb2JhYmx5IGdldHMgdXMgbW9zdCBvZiB3aGF0IHdlIG5lZWQgc28g
Z29pbmcgdG8gc3RhcnQKd2l0aCB0aGF0LgoKPiBSaWdodCBub3cgYSBob3N0IHdpdGggZGViaWFu
IDYuMC4wLTYtYW1kNjQgY2VydGFpbmx5IGRvZXMgbm90IHNlZW0gdG8gcHVzaAo+IG91dCBjaGFu
Z2VzIHRvIDlwIGNsaWVudHMgb24gVk1zIGJ1dCBKb3NlZiBpbmZvcm1zIG1lIHRoYXQgd2l0aCA2
LjItcmM4Cj4gaGUgZGlkIHNlZSB0aGUgY2hhbmdlcyBwcm9wYWdhdGUuCgpJIGRpZCB0aWdodGVu
IHVwIHNvbWUgb2YgdGhlIGludmFsaWRhdGlvbiBpbiB0aGUgbGFzdCByb3VuZCBvZgpwYXRjaGVz
LCBob3dldmVyIHRoZXNlIGFyZSBsaWtlbHkgbW9yZSBvbiB0aGUgb3Zlcmx5IGNvbnNlcnZhdGl2
ZSBzaWRlCnZlcnN1cyBkb2luZyB0aGUgcmlnaHQgdGhpbmcgLS0gaG93ZXZlciwgaXRzIHJlYWxs
eSBub3QgYXQgdGhlIHBvaW50CndoZXJlIHlvdSBjYW4gcmVseSBvbiBpdC4gIElmIGNvbnNpc3Rl
bmN5IGlzIHNvbWV0aGluZyB5b3UgY2FyZSBhYm91dCwKSSdkIHN1Z2dlc3QgY2FjaGU9bm9uZSB1
bnRpbCB5b3UgY2FuIGdldCBjYWNoZT1yZWFkYWhlYWQuCgo+Cj4gRG8gbm9uZSBvZiB0aGUgZXhp
c3RpbmcgOXAgY2FjaGUgbW9kZXMgbm90IHN1cHBvcnQgb3Blbi10by1jbG9zZSBwb2xpY2llcwo+
IGF0IGFsbD8KPgoKbm90IHNwZWNpZmljYWxseSBvcGVuLXRvLWNsb3NlLCBsb29zZSBzdXBwb3J0
cyBmaWxlIGFuZCBkaXIgY2FjaGluZwpidXQgd2l0aG91dCBjb25zaXN0ZW5jeSwgaXQgbWlnaHQg
YmUgdGVtcHRpbmcgdG8gdHJ5IGNhY2hlPW1tYXAgdG8gc2VlCmlmIGl0IGdldHMgeW91IGNsb3Nl
ciwgYnV0IG15IGZyYW1lIG9mIHJlZmVyZW5jZSBpcyBtb3JlIHRoZSBjdXJyZW50CnBhdGNoZXMg
dmVyc3VzIHRoZSBvbGQgY29kZSBzbyBub3Qgc3VyZSBpdCB3b3VsZCBidXkgeW91IGFueXRoaW5n
LgoKPgo+IFJpZ2h0IG5vdyB0aGUgY2FjaGUgbW9kZSB1c2VkIGlzIGNhY2hlPWxvb3NlIGFzIHRo
YXQncyB0aGUgZGVmYXVsdCwKPiB3aGF0IGRvIHlvdSByZWNvbW1lbmQgZm9yIGEgdHlwaWNhbCBr
ZXJuZWwgZGV2ZWxvcG1lbnQgZW52aXJvbmVtbnQ/Cj4KCkFzIEkgc2FpZCwgaWYgeW91IGFyZSBp
bnRlcmFjdGl2ZWx5IGNoYW5naW5nIHRoaW5ncyBJIHRoaW5rIHlvdSdkIHdhbnQKdG8gZ28gZm9y
IGNhY2hlPW5vbmUgZm9yIG5vdyAoYXMgcGFpbmZ1bCBhcyBpdCBpcykuICBJIGhhdmUgZml4ZWQg
d2hhdApJIGhvcGUgdG8gYmUgbXkgbGFzdCBidWcgd2l0aCB0aGUgbmV3IHBhdGNoIHNlcmllcyBz
byBpdCBzaG91bGQgYmUKZ29pbmcgaW50byBsaW51eC1uZXh0IHRvZGF5LgoKICAgICAgLWVyaWMK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxv
cGVyCg==
