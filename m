Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E419970FBCA
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 May 2023 18:39:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1q1rW5-0002P3-M4;
	Wed, 24 May 2023 16:39:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dwysocha@redhat.com>) id 1q1rW4-0002Ox-EP
 for v9fs-developer@lists.sourceforge.net;
 Wed, 24 May 2023 16:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hIRDFYHmrI2ea9PgJ9cG2BzagPncv2WifE6ykqY/z1c=; b=a3tOshQ3wHXolRzjg3j1E8Onnb
 Mf0hvVbZPW+UW49MSWQAnVAx6mIdaw+IOA1eFRYX43Y0/J9x70io+XHTtdDnRh0XgmXOAZwX+raFW
 Qije8LsF21cENQWwQt4rILwQPq1K8w7+wE748KZIGtoMrG0X2LiQoMC4FexAoIzhds08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hIRDFYHmrI2ea9PgJ9cG2BzagPncv2WifE6ykqY/z1c=; b=cd2qqo0rW/+u8TmNVWUQTfhutc
 Wc3D6HfkRpuQZUetuSFu6bbhb4ef88j9JKyI+LU+jatMgSgCWINFXQuBMa2X12HrRd8tAF+bQ9L1O
 +fjm0jBpZCVLEkykd+d28JtRF3TSx+SIxAVVOhVgeABGfBoh6Pwt9xEewojcCpHOTy24=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q1rVz-001WDY-CN for v9fs-developer@lists.sourceforge.net;
 Wed, 24 May 2023 16:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684946340;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hIRDFYHmrI2ea9PgJ9cG2BzagPncv2WifE6ykqY/z1c=;
 b=JYylOJb+NzvsPb3go+eofLvRUsLwcMr6QMlGTwp3VirHN/L/4sKl9a9qYhnmC/cR4+GW3d
 WgZ+rzV2h5FhAmPtIqtdJOvefiLDq8bJMcp/9FetIiZ55k+xnl16pB8pwk1zJnzq32Gafw
 R3IUsKP3/2ZQEZff8cdkFFfF9WrdBBE=
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-340-v_qMO4nZMYa-SdAOCtxHUQ-1; Wed, 24 May 2023 12:38:59 -0400
X-MC-Unique: v_qMO4nZMYa-SdAOCtxHUQ-1
Received: by mail-pl1-f197.google.com with SMTP id
 d9443c01a7336-1ae3b512991so4321765ad.0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 24 May 2023 09:38:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684946338; x=1687538338;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hIRDFYHmrI2ea9PgJ9cG2BzagPncv2WifE6ykqY/z1c=;
 b=GENf8bef/H0ksa4jKesOe1LsRRY2W1c5KlLUquXhIWVjPOGRMwehA5taGMkQBUWtGz
 S9WZ9MQ5FMAuc9fBvgxhOPwxMdqcrImAfwXp3fKfb5ScjefkSc2xMTYUZ/AliM/TKwy5
 ZQiGIewrWGmf4XPAZyE9JBnlFBfd+2jnKIUXqayIRGt4nCdhpRptqDb5g4QgTF419zDG
 bvJaaXyuU9szwcTaZ/kPMTlz+ccziv8Ree1DOCTBNLTKqbbZ/Yh/BmtaN/k9rFkd4VlL
 g5Hm14q4+1QrmOnzKrCAyBY/bZdKrtkWERfTnFR22C4Affn7t9mPxjwozBFvOrfJWYyy
 JAKQ==
X-Gm-Message-State: AC+VfDxS5TYHgs8wo/AAX6TzKr8revKsbto3A8hyKs5hoAJp31DAKdir
 lyfibbcqHg4ah0kPNwKNoNcTk+Q3s5BpoVgVDlzt3y8ltfVq6kiK1uGhO2cC7+ioHGKnRWqZyGS
 D32eNStv2aXYScwwZCHL75RbCQ2VSO34MsZES9nlsFaqVvvLg9bE=
X-Received: by 2002:a17:903:428a:b0:1ac:4a41:d38d with SMTP id
 ju10-20020a170903428a00b001ac4a41d38dmr15831018plb.51.1684946337865; 
 Wed, 24 May 2023 09:38:57 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7QhwNbEG7dVnvKUcvcrF5VXTCpluYFQoMIGO7odXS8eF4N7acYVvSWWvlkVR9tfx1GsK6DpUi0zEDdnwhFY7c=
X-Received: by 2002:a17:903:428a:b0:1ac:4a41:d38d with SMTP id
 ju10-20020a170903428a00b001ac4a41d38dmr15830993plb.51.1684946337555; Wed, 24
 May 2023 09:38:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230216150701.3654894-1-dhowells@redhat.com>
 <CALF+zO=w2Gyz6JtzEoFgTVjH67-_CuTaK7e+2yoHEwXZ8bPx_A@mail.gmail.com>
In-Reply-To: <CALF+zO=w2Gyz6JtzEoFgTVjH67-_CuTaK7e+2yoHEwXZ8bPx_A@mail.gmail.com>
From: David Wysochanski <dwysocha@redhat.com>
Date: Wed, 24 May 2023 12:38:21 -0400
Message-ID: <CALF+zO=Y8dMsJ79RYp1e7n9B5_0=segpqW9_tetBqPhFiQcZxA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>, Matthew Wilcox <willy@infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, May 16, 2023 at 3:29 PM David Wysochanski <dwysocha@redhat.com>
    wrote: > > On Thu, Feb 16, 2023 at 10:07 AM David Howells <dhowells@redhat.com>
    wrote: > > > > Hi Willy, > > > > Is this oka [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.133.124 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q1rVz-001WDY-CN
Subject: Re: [V9fs-developer] [Linux-cachefs] [PATCH v6 0/2] mm, netfs,
 fscache: Stop read optimisation when folio removed from pagecache
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVHVlLCBNYXkgMTYsIDIwMjMgYXQgMzoyOeKAr1BNIERhdmlkIFd5c29jaGFuc2tpIDxkd3lz
b2NoYUByZWRoYXQuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgRmViIDE2LCAyMDIzIGF0IDEwOjA3
4oCvQU0gRGF2aWQgSG93ZWxscyA8ZGhvd2VsbHNAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4g
SGkgV2lsbHksCj4gPgo+ID4gSXMgdGhpcyBva2F5IGJ5IHlvdT8gIFlvdSBzYWlkIHlvdSB3YW50
ZWQgdG8gbG9vayBhdCB0aGUgcmVtYWluaW5nIHVzZXMgb2YKPiA+IHBhZ2VfaGFzX3ByaXZhdGUo
KSwgb2Ygd2hpY2ggdGhlcmUgYXJlIHRoZW4gdGhyZWUgYWZ0ZXIgdGhlc2UgcGF0Y2hlcywgbm90
Cj4gPiBjb3VudGluZyBmb2xpb19oYXNfcHJpdmF0ZSgpOgo+ID4KPiA+ICAgICAgICAgYXJjaC9z
MzkwL2tlcm5lbC91di5jOiAgICAgICAgICBpZiAocGFnZV9oYXNfcHJpdmF0ZShwYWdlKSkKPiA+
ICAgICAgICAgbW0va2h1Z2VwYWdlZC5jOiAgICAgICAgICAgICAgICAgICAgMSArIHBhZ2VfbWFw
Y291bnQocGFnZSkgKyBwYWdlX2hhc19wcml2YXRlKHBhZ2UpKSB7Cj4gPiAgICAgICAgIG1tL21p
Z3JhdGVfZGV2aWNlLmM6ICAgICAgICAgICAgZXh0cmEgKz0gMSArIHBhZ2VfaGFzX3ByaXZhdGUo
cGFnZSk7Cj4gPgo+ID4gLS0KPiA+IEkndmUgc3BsaXQgdGhlIGZvbGlvX2hhc19wcml2YXRlKCkv
ZmlsZW1hcF9yZWxlYXNlX2ZvbGlvKCkgY2FsbCBwYWlyCj4gPiBtZXJnaW5nIGludG8gaXRzIG93
biBwYXRjaCwgc2VwYXJhdGUgZnJvbSB0aGUgYWN0dWFsIGJ1Z2ZpeCBhbmQgcHVsbGVkIG91dAo+
ID4gdGhlIGZvbGlvX25lZWRzX3JlbGVhc2UoKSBmdW5jdGlvbiBpbnRvIG1tL2ludGVybmFsLmgg
YW5kIG1hZGUKPiA+IGZpbGVtYXBfcmVsZWFzZV9mb2xpbygpIHVzZSBpdC4gIEkndmUgYWxzbyBn
b3QgcmlkIG9mIHRoZSBiaXQgY2xlYXJhbmNlcwo+ID4gZnJvbSB0aGUgbmV0d29yayBmaWxlc3lz
dGVtIGV2aWN0X2lub2RlIGZ1bmN0aW9ucyBhcyB0aGV5IGRvZXNuJ3Qgc2VlbSB0bwo+ID4gYmUg
bmVjZXNzYXJ5Lgo+ID4KPiA+IE5vdGUgdGhhdCB0aGUgbGFzdCB2ZXN0aWdlcyBvZiB0cnlfdG9f
cmVsZWFzZV9wYWdlKCkgZ290IHN3ZXB0IGF3YXksIHNvIEkKPiA+IHJlYmFzZWQgYW5kIGRlYWx0
IHdpdGggdGhhdC4gIE9uZSBjb21tZW50IHJlbWFpbmVkLCB3aGljaCBpcyByZW1vdmVkIGJ5IHRo
ZQo+ID4gZmlyc3QgcGF0Y2guCj4gPgo+ID4gRGF2aWQKPiA+Cj4gPiBDaGFuZ2VzOgo+ID4gPT09
PT09PT0KPiA+IHZlciAjNikKPiA+ICAtIERyb3AgdGhlIHRoaXJkIHBhdGNoIHdoaWNoIHJlbW92
ZXMgYSBkdXBsaWNhdGUgY2hlY2sgaW4gdm1zY2FuKCkuCj4gPgo+ID4gdmVyICM1KQo+ID4gIC0g
UmViYXNlZCBvbiBsaW51cy9tYXN0ZXIuICB0cnlfdG9fcmVsZWFzZV9wYWdlKCkgaGFzIG5vdyBi
ZWVuIGVudGlyZWx5Cj4gPiAgICByZXBsYWNlZCBieSBmaWxlbWFwX3JlbGVhc2VfZm9saW8oKSwg
YmFycmluZyBvbmUgY29tbWVudC4KPiA+ICAtIENsZWFuZWQgdXAgc29tZSBwYWlycyBpbiBleHQ0
Lgo+ID4KPiA+IHZlciAjNCkKPiA+ICAtIFNwbGl0IGhhc19wcml2YXRlL3JlbGVhc2UgY2FsbCBw
YWlycyBpbnRvIG93biBwYXRjaC4KPiA+ICAtIE1vdmVkIGZvbGlvX25lZWRzX3JlbGVhc2UoKSB0
byBtbS9pbnRlcm5hbC5oIGFuZCByZW1vdmVkIG9wZW4tY29kZWQKPiA+ICAgIHZlcnNpb24gZnJv
bSBmaWxlbWFwX3JlbGVhc2VfZm9saW8oKS4KPiA+ICAtIERvbid0IG5lZWQgdG8gY2xlYXIgQVNf
UkVMRUFTRV9BTFdBWVMgaW4gLT5ldmljdF9pbm9kZSgpLgo+ID4gIC0gQWRkZWQgZXhwZXJpbWVu
dGFsIHBhdGNoIHRvIHJlZHVjZSBzaHJpbmtfZm9saW9fbGlzdCgpLgo+ID4KPiA+IHZlciAjMykK
PiA+ICAtIEZpeGVkIG1hcHBpbmdfY2xlYXJfcmVsZWFzZV9hbHdheXMoKSB0byB1c2UgY2xlYXJf
Yml0KCkgbm90IHNldF9iaXQoKS4KPiA+ICAtIE1vdmVkIGEgJyYmJyB0byB0aGUgY29ycmVjdCBs
aW5lLgo+ID4KPiA+IHZlciAjMikKPiA+ICAtIFJld3JvdGUgZW50aXJlbHkgYWNjb3JkaW5nIHRv
IFdpbGx5J3Mgc3VnZ2VzdGlvblsxXS4KPiA+Cj4gPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yL1lrOVYvMDN3Z2RZaTY1TGJAY2FzcGVyLmluZnJhZGVhZC5vcmcvIFsxXQo+ID4gTGlu
azogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8xNjQ5Mjg2MzA1NzcuNDU3MTAyLjg1MTkyNTEx
NzkzMjc2MDExNzguc3RnaXRAd2FydGhvZy5wcm9jeW9uLm9yZy51ay8gIyB2MQo+ID4gTGluazog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8xNjY4NDQxNzQwNjkuMTEyNDUyMS4xMDg5MDUwNjM2
MDk3NDE2OTk5NC5zdGdpdEB3YXJ0aG9nLnByb2N5b24ub3JnLnVrLyAjIHYyCj4gPiBMaW5rOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9yLzE2Njg2OTQ5NTIzOC4zNzIwNDY4LjQ4NzgxNTE0MDkw
ODUxNDY3NjQuc3RnaXRAd2FydGhvZy5wcm9jeW9uLm9yZy51ay8gIyB2Mwo+ID4gTGluazogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8xNDU5MTUyLjE2NjkyMDg1NTBAd2FydGhvZy5wcm9jeW9u
Lm9yZy51ay8gIyB2MyBhbHNvCj4gPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzE2
NjkyNDM3MDUzOS4xNzcyNzkzLjEzNzMwNjk4MzYwNzcxODIxMzE3LnN0Z2l0QHdhcnRob2cucHJv
Y3lvbi5vcmcudWsvICMgdjQKPiA+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMTY3
MTcyMTMxMzY4LjIzMzQ1MjUuODU2OTgwODkyNTY4NzczMTkzNy5zdGdpdEB3YXJ0aG9nLnByb2N5
b24ub3JnLnVrLyAjIHY1Cj4gPiAtLS0KPiA+ICUoc2hvcnRsb2cpcwo+ID4gJShkaWZmc3RhdClz
Cj4gPgo+ID4gRGF2aWQgSG93ZWxscyAoMik6Cj4gPiAgIG1tOiBNZXJnZSBmb2xpb19oYXNfcHJp
dmF0ZSgpL2ZpbGVtYXBfcmVsZWFzZV9mb2xpbygpIGNhbGwgcGFpcnMKPiA+ICAgbW0sIG5ldGZz
LCBmc2NhY2hlOiBTdG9wIHJlYWQgb3B0aW1pc2F0aW9uIHdoZW4gZm9saW8gcmVtb3ZlZCBmcm9t
Cj4gPiAgICAgcGFnZWNhY2hlCj4gPgo+ID4gIGZzLzlwL2NhY2hlLmMgICAgICAgICAgIHwgIDIg
KysKPiA+ICBmcy9hZnMvaW50ZXJuYWwuaCAgICAgICB8ICAyICsrCj4gPiAgZnMvY2FjaGVmaWxl
cy9uYW1laS5jICAgfCAgMiArKwo+ID4gIGZzL2NlcGgvY2FjaGUuYyAgICAgICAgIHwgIDIgKysK
PiA+ICBmcy9jaWZzL2ZzY2FjaGUuYyAgICAgICB8ICAyICsrCj4gPiAgZnMvZXh0NC9tb3ZlX2V4
dGVudC5jICAgfCAxMiArKysrLS0tLS0tLS0KPiA+ICBmcy9zcGxpY2UuYyAgICAgICAgICAgICB8
ICAzICstLQo+ID4gIGluY2x1ZGUvbGludXgvcGFnZW1hcC5oIHwgMTYgKysrKysrKysrKysrKysr
Kwo+ID4gIG1tL2ZpbGVtYXAuYyAgICAgICAgICAgIHwgIDIgKysKPiA+ICBtbS9odWdlX21lbW9y
eS5jICAgICAgICB8ICAzICstLQo+ID4gIG1tL2ludGVybmFsLmggICAgICAgICAgIHwgMTEgKysr
KysrKysrKysKPiA+ICBtbS9raHVnZXBhZ2VkLmMgICAgICAgICB8ICAzICstLQo+ID4gIG1tL21l
bW9yeS1mYWlsdXJlLmMgICAgIHwgIDggKysrLS0tLS0KPiA+ICBtbS9taWdyYXRlLmMgICAgICAg
ICAgICB8ICAzICstLQo+ID4gIG1tL3RydW5jYXRlLmMgICAgICAgICAgIHwgIDYgKystLS0tCj4g
PiAgbW0vdm1zY2FuLmMgICAgICAgICAgICAgfCAgOCArKysrLS0tLQo+ID4gIDE2IGZpbGVzIGNo
YW5nZWQsIDU2IGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQo+ID4KPiA+IC0tCj4gPiBM
aW51eC1jYWNoZWZzIG1haWxpbmcgbGlzdAo+ID4gTGludXgtY2FjaGVmc0ByZWRoYXQuY29tCj4g
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWNhY2hl
ZnMKPiA+Cj4KPiBXaWxseSwgYW5kIERhdmlkLAo+Cj4gQ2FuIHRoaXMgc2VyaWVzIG1vdmUgZm9y
d2FyZD8KPiBUaGlzIGp1c3QgZ290IG1lbnRpb25lZCBhZ2FpbiBbMV0gYWZ0ZXIgQ2hyaXMgdGVz
dGVkIHRoZSBORlMgbmV0ZnMKPiBwYXRjaGVzIHRoYXQgd2VyZSBtZXJnZWQgaW4gNi40LXJjMQo+
Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW5mcy9DQUFtYmstZl9VOENQY1RR
TTg2Nkw1NzJ1VUhkSzRwNWlXS25VUXM0cjhma1c9NlJXOWdAbWFpbC5nbWFpbC5jb20vCgpTb3Jy
eSBhYm91dCB0aGUgdGltaW5nIG9uIHRoZSBvcmlnaW5hbCBlbWFpbCBhcyBJIGZvcmdvdCBpdCBs
aW5lZCB1cAp3aXRoIExTRi9NTS4KCkZZSSwgSSB0ZXN0ZWQgd2l0aCA2LjQtcmMxIHBsdXMgdGhl
c2UgdHdvIHBhdGNoZXMsIHRoZW4gSSBhZGRlZCB0aGUgTkZTCmh1bmsgbmVlZGVkIChzZWUgYmVs
b3cpLiAgQWxsIG15IHRlc3RzIHBhc3Mgbm93WzFdLCBhbmQgaXQgbWFrZXMgc2Vuc2UKZnJvbSBh
bGwgdGhlIGZ0cmFjZXMgSSd2ZSBzZWVuIG9uIHRlc3QgcnVucyB0aGF0IGZhaWwgKGNhY2hlZmls
ZXNfcHJlcF9yZWFkCnRyYWNlIGV2ZW50IHdvdWxkIHNob3cgIkRPV04gbm8tZGF0YSIgZXZlbiBh
ZnRlciBkYXRhIHdhcyB3cml0dGVuCnByZXZpb3VzbHkpLgoKVGhpcyBzbWFsbCBORlMgaHVuayBu
ZWVkcyBhZGRlZCB0byBwYXRjaCAjMiBpbiB0aGlzIHNlcmllczoKCmRpZmYgLS1naXQgYS9mcy9u
ZnMvZnNjYWNoZS5jIGIvZnMvbmZzL2ZzY2FjaGUuYwppbmRleCA4YzM1ZDg4YTg0YjEuLmQ0YTIw
NzQ4YjE0ZiAxMDA2NDQKLS0tIGEvZnMvbmZzL2ZzY2FjaGUuYworKysgYi9mcy9uZnMvZnNjYWNo
ZS5jCkBAIC0xODAsNiArMTgwLDEwIEBAIHZvaWQgbmZzX2ZzY2FjaGVfaW5pdF9pbm9kZShzdHJ1
Y3QgaW5vZGUgKmlub2RlKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICZhdXhkYXRhLCAgICAgIC8qIGF1eF9kYXRhICovCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZW9mKGF1eGRhdGEpLAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlfc2l6ZV9yZWFkKGlub2RlKSk7CisK
KyAgICAgICBpZiAobmV0ZnNfaW5vZGUoaW5vZGUpLT5jYWNoZSkKKyAgICAgICAgICAgICAgIG1h
cHBpbmdfc2V0X3JlbGVhc2VfYWx3YXlzKGlub2RlLT5pX21hcHBpbmcpOworCiB9CgogLyoKClsx
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1uZnMvQ0FMRit6T25fcVg0dGNUMnVjcTRq
RDNHLTFFUnFaa0w2Q3c3aHg3NU9uUUYwaXZxU2VBQG1haWwuZ21haWwuY29tLwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
