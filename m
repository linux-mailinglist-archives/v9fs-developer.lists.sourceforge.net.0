Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CECDA6EEB2A
	for <lists+v9fs-developer@lfdr.de>; Wed, 26 Apr 2023 02:01:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1prSbB-0006it-DY;
	Wed, 26 Apr 2023 00:01:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1prSbA-0006im-1p
 for v9fs-developer@lists.sourceforge.net;
 Wed, 26 Apr 2023 00:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wectYBc81s9rcS6Me1HQ0c1yguVussNQE55apc3pMII=; b=jYJj9LiB0dASlsU7iWbBzfV4iy
 EVO+ROtoVQ1WBtq6e5sv/wVM57si2U5g5+r+xvimuVEyxL2QimvmLUF57Misx8LRgHqvgAfbx22md
 tHUFbdHq5+IMn34pBRdZOWg2ehC6vh/vSWKrDk/vzeMoaLdv7qTsB+eiK4T4WmuHEtGY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wectYBc81s9rcS6Me1HQ0c1yguVussNQE55apc3pMII=; b=FeZ2ErbcKQeKnS6HE0D4t+OpLK
 ougx4t2Y1Yta8qws/aS7vimdKfeZe3kpXIVusmR/th6GdXUz0P7VbWxdaM+RH5Ss7cADIV+Pst8aE
 jAPaxDPE7hDowmf0XixPzn23M1ohp0cTFjUhtPatxArFo4nch5/imUS1JzBZigjgnJ64=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1prSb3-001b0K-TJ for v9fs-developer@lists.sourceforge.net;
 Wed, 26 Apr 2023 00:01:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A9609631CE
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Apr 2023 00:01:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0680EC433A0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Apr 2023 00:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1682467275;
 bh=65K7Cfyen6bnf2mZnH4Di3GHXwOFItB8erJ//utGX5U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PLK2dHWsdZkgzzxryFF1SLQDynepiILESN5cZIFwk1wqcAGCwINS41doy1UfEqGBZ
 2gZITqVGzXynLyWmpSzuK3aFFauMJ+mTTF4X1TBmEAbvEHiOIQbCifJGjkCnc8BoRC
 awFdwd87wFxL8+rl3xFhvPG8l9GhHwJsAwpvyazPMjiiO6dcIdKA/HPDZxKQFJr9nt
 10OOn2eSR3TRzjtA7L7NnRhCha6A4MmzPy8TiwD+GVEaYj7Aw6qoUq/O1ulOOliOo2
 9R3el/c/1n3GZnnC4EF1V5YZyYbXkyrROsv6GpDvvwE/nUrH7LZ53319EmG/l9RI41
 Pjao9J9EWSHPg==
Received: by mail-yw1-f181.google.com with SMTP id
 00721157ae682-54fe2e39156so76837207b3.2
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 25 Apr 2023 17:01:14 -0700 (PDT)
X-Gm-Message-State: AAQBX9efWhUo3gQDXWYabl0i0/T02zb8pasYLes/krp+OLuEuXLXoM7K
 0JptVl8C4NwwlP63AymO6ygvnwP/GXvi9xBZmBg=
X-Google-Smtp-Source: AKy350bqhG4b57DBoF/DhuGpuedwoIq9kgM3yX7+amLnkF3rSUHq1JlM73TuDB5N4DEWyuDuFaUh2eLIqE23miJEgUs=
X-Received: by 2002:a0d:db47:0:b0:54f:ba89:225d with SMTP id
 d68-20020a0ddb47000000b0054fba89225dmr12104461ywe.19.1682467274086; Tue, 25
 Apr 2023 17:01:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230218003323.2322580-11-ericvh@kernel.org>
 <ZCEGmS4FBRFClQjS@7e9e31583646>
 <7686c810-4ed6-9e3a-3714-8b803e2d3c46@wanadoo.fr>
In-Reply-To: <7686c810-4ed6-9e3a-3714-8b803e2d3c46@wanadoo.fr>
From: Eric Van Hensbergen <ericvh@kernel.org>
Date: Tue, 25 Apr 2023 17:01:03 -0700
X-Gmail-Original-Message-ID: <CAFkjPT=-EvCf1HKT2-k73G4SVBwRDp=YtvfwhNAcjv6BzS4f9Q@mail.gmail.com>
Message-ID: <CAFkjPT=-EvCf1HKT2-k73G4SVBwRDp=YtvfwhNAcjv6BzS4f9Q@mail.gmail.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I swear I fixed that,
 must have been one of my fixes got dropped
 in the process of churning over this patch. I'm quite concerned that this
 is coming up during the merge window because I'd really rathe [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1prSb3-001b0K-TJ
Subject: Re: [V9fs-developer] [PATCH v5] fs/9p: remove writeback fid and fix
 per-file modes
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSBzd2VhciBJIGZpeGVkIHRoYXQsIG11c3QgaGF2ZSBiZWVuIG9uZSBvZiBteSBmaXhlcyBnb3Qg
ZHJvcHBlZCBpbgp0aGUgcHJvY2VzcyBvZiBjaHVybmluZyBvdmVyIHRoaXMgcGF0Y2guICBJJ20g
cXVpdGUgY29uY2VybmVkIHRoYXQKdGhpcyBpcyBjb21pbmcgdXAgZHVyaW5nIHRoZSBtZXJnZSB3
aW5kb3cgYmVjYXVzZSBJJ2QgcmVhbGx5IHJhdGhlcgpub3QgcHVudCB0aGlzIHBhdGNoIHNlcmll
cyBhbm90aGVyIHR3byBtb250aHMuICBJJ20gZ29pbmcgdG8gYXBwbHkgdGhlCmZpeCBhcyBhbiBh
ZGRpdGlvbmFsIHBhdGNoIHdoaWNoIGhvcGVmdWxseSBMaW51cyB3aWxsIGFjY2VwdCB3aXRoIHRo
ZQpyZXN0IG9mIHRoZSBzZXJpZXMuCgpPbiBUdWUsIEFwciAyNSwgMjAyMyBhdCAxMjoxMeKAr0FN
IENocmlzdG9waGUgSkFJTExFVAo8Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+IHdyb3Rl
Ogo+Cj4gTGUgMjcvMDMvMjAyMyDDoCAwNDo1OSwgRXJpYyBWYW4gSGVuc2JlcmdlbiBhIMOpY3Jp
dCA6Cj4gPiBUaGlzIHBhdGNoIHJlbW92ZXMgdGhlIGNyZWF0aW5nIG9mIGFuIGFkZGl0aW9uYWwg
d3JpdGViYWNrX2ZpZAo+ID4gZm9yIG9wZW5lZCBmaWxlcy4gIFRoZSBwYXRjaCBhZGRyZXNzZXMg
cHJvYmxlbXMgd2hlbiBmaWxlcwo+ID4gd2VyZSBvcGVuZWQgd3JpdGUtb25seSBvciBnZXRhdHRy
IG9uIGZpbGVzIHdpdGggZGlydHkgY2FjaGVzLgo+ID4KPiA+IFRoaXMgcGF0Y2ggYWxzbyBpbmNv
cnBvcmF0ZXMgaW5mb3JtYXRpb24gYWJvdXQgY2FjaGUgYmVoYXZpb3IKPiA+IGluIHRoZSBmaWQg
Zm9yIGV2ZXJ5IGZpbGUuICBUaGlzIGFsbG93cyB1cyB0byByZWZsZWN0IGNhY2hlCj4gPiBiZWhh
dmlvciBmcm9tIG1vdW50IGZsYWdzLCBvcGVuIG1vZGUsIGFuZCBpbmZvcm1hdGlvbiBmcm9tCj4g
PiB0aGUgc2VydmVyIHRvIGluZm9ybSByZWFkYWhlYWQgYW5kIHdyaXRlYmFjayBiZWhhdmlvci4K
PiA+Cj4gPiBUaGlzIGluY2x1ZGVzIGFkZGluZyBzdXBwb3J0IGZvciBhIDlwIHNlbWFudGljIHRo
YXQgcWlkLnZlcnNpb249PTAKPiA+IGlzIHVzZWQgdG8gbWFyayBhIGZpbGUgYXMgbm9uLWNhY2hh
YmxlIHdoaWNoIGlzIGltcG9ydGFudCBmb3IKPiA+IHN5bnRoZXRpYyBmaWxlcy4gIFRoaXMgbWF5
IGhhdmUgYSBzaWRlLWVmZmVjdCBvZiBub3Qgc3VwcG9ydGluZwo+ID4gY2FjaGluZyBvbiBjZXJ0
YWluIGxlZ2FjeSBmaWxlIHNlcnZlcnMgdGhhdCBkbyBub3QgcHJvcGVybHkgc2V0Cj4gPiBxaWQu
dmVyc2lvbi4gIFRoZXJlIGlzIGFsc28gbm93IGEgbW91bnQgZmxhZyB3aGljaCBjYW4gZGlzYWJs
ZQo+ID4gdGhlIHFpZC52ZXJzaW9uIGJlaGF2aW9yLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEVy
aWMgVmFuIEhlbnNiZXJnZW4gPGVyaWN2aEBrZXJuZWwub3JnPgo+ID4gLS0tCj4gPiAgIGZzLzlw
L2ZpZC5jICAgICAgICAgICAgfCA0OCArKysrKysrKystLS0tLS0tLS0tLS0tCj4gPiAgIGZzLzlw
L2ZpZC5oICAgICAgICAgICAgfCAzMyArKysrKysrKysrKysrKy0KPiA+ICAgZnMvOXAvdjlmcy5o
ICAgICAgICAgICB8ICAxIC0KPiA+ICAgZnMvOXAvdmZzX2FkZHIuYyAgICAgICB8IDIyICsrKysr
LS0tLS0KPiA+ICAgZnMvOXAvdmZzX2ZpbGUuYyAgICAgICB8IDkxICsrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gICBmcy85cC92ZnNfaW5vZGUuYyAgICAgIHwg
NDUgKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gPiAgIGZzLzlwL3Zmc19pbm9kZV9kb3RsLmMgfCA0
OCArKysrKysrKystLS0tLS0tLS0tLS0tCj4gPiAgIGZzLzlwL3Zmc19zdXBlci5jICAgICAgfCAz
MyArKysrLS0tLS0tLS0tLS0KPiA+ICAgOCBmaWxlcyBjaGFuZ2VkLCAxMzUgaW5zZXJ0aW9ucygr
KSwgMTg2IGRlbGV0aW9ucygtKQo+ID4KPgo+IEhpLAo+Cj4gdGhpcyBwYXRjaCBoYXMgYWxyZWFk
eSByZWFjaGVkIC1uZXh0LCBidXQgdGhlcmUgaXMgc29tZSBzcHVyaW91cyBjb2RlLgo+Cj4gQXMs
IEknbSBub3Qgc3VyZSB3aGF0IHRoZSByZWFsIGludGVudCBpcywgSSBwcmVmZXIgdG8gcmVwbHkg
aGVyZSBpbnN0ZWFkCj4gb2Ygc2VuZGluZyBhIHBhdGNoLgo+Cj4KPiBbLi4uXQo+Cj4gPiBAQCAt
ODE3LDkgKzgxNCwxNCBAQCB2OWZzX3Zmc19hdG9taWNfb3BlbihzdHJ1Y3QgaW5vZGUgKmRpciwg
c3RydWN0IGRlbnRyeSAqZGVudHJ5LAo+ID4KPiA+ICAgICAgIHY5c2VzID0gdjlmc19pbm9kZTJ2
OXNlcyhkaXIpOwo+ID4gICAgICAgcGVybSA9IHVuaXhtb2RlMnA5bW9kZSh2OXNlcywgbW9kZSk7
Cj4gPiAtICAgICBmaWQgPSB2OWZzX2NyZWF0ZSh2OXNlcywgZGlyLCBkZW50cnksIE5VTEwsIHBl
cm0sCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2OWZzX3VmbGFnczJvbW9kZShm
bGFncywKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2
OWZzX3Byb3RvX2RvdHUodjlzZXMpKSk7Cj4gPiArICAgICBwOV9vbW9kZSA9IHY5ZnNfdWZsYWdz
Mm9tb2RlKGZsYWdzLCB2OWZzX3Byb3RvX2RvdHUodjlzZXMpKTsKPiA+ICsKPiA+ICsgICAgIGlm
ICgodjlzZXMtPmNhY2hlID49IENBQ0hFX1dSSVRFQkFDSykgJiYgKHA5X29tb2RlICYgUDlfT1dS
SVRFKSkgewo+ID4gKyAgICAgICAgICAgICBwOV9vbW9kZSA9IChwOV9vbW9kZSAmICFQOV9PV1JJ
VEUpIHwgUDlfT1JEV1I7Cj4KPiBUaGlzIGNvZGUgbG9va3Mgc3RyYW5nZS4KPiBQOV9PV1JJVEUg
aXMgMHgwMSwgc28gIVA5X09XUklURSBpcyAwLgo+IFNvIHRoZSBjb2RlIGlzIGVxdWl2YWxlbnQg
dG8gInA5X29tb2RlID0gUDlfT1JEV1I7Igo+Cj4gSXMgaXQgd2hhdCBpcyBleHBleHRlZD8KPgo+
IE1heWJlCj4gICAgICAgICBwOV9vbW9kZSA9IChwOV9vbW9kZSAmIH5QOV9PV1JJVEUpIHwgUDlf
T1JEV1I7Cj4gPwo+Cj4gPiArICAgICAgICAgICAgIHA5X2RlYnVnKFA5X0RFQlVHX0NBQ0hFLAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICJ3cml0ZS1vbmx5IGZpbGUgd2l0aCB3cml0ZWJhY2sg
ZW5hYmxlZCwgY3JlYXRpbmcgdy8gT19SRFdSXG4iKTsKPiA+ICsgICAgIH0KPiA+ICsgICAgIGZp
ZCA9IHY5ZnNfY3JlYXRlKHY5c2VzLCBkaXIsIGRlbnRyeSwgTlVMTCwgcGVybSwgcDlfb21vZGUp
Owo+ID4gICAgICAgaWYgKElTX0VSUihmaWQpKSB7Cj4gPiAgICAgICAgICAgICAgIGVyciA9IFBU
Ul9FUlIoZmlkKTsKPiA+ICAgICAgICAgICAgICAgZ290byBlcnJvcjsKPgo+IFsuLi5dCj4KPiA+
IGRpZmYgLS1naXQgYS9mcy85cC92ZnNfaW5vZGVfZG90bC5jIGIvZnMvOXAvdmZzX2lub2RlX2Rv
dGwuYwo+ID4gaW5kZXggYTI4ZWIzYWVhYjI5Li40Yjk0ODhjYjdhNTYgMTAwNjQ0Cj4gPiAtLS0g
YS9mcy85cC92ZnNfaW5vZGVfZG90bC5jCj4gPiArKysgYi9mcy85cC92ZnNfaW5vZGVfZG90bC5j
Cj4gPiBAQCAtMjMyLDEyICsyMzIsMTIgQEAgdjlmc192ZnNfYXRvbWljX29wZW5fZG90bChzdHJ1
Y3QgaW5vZGUgKmRpciwgc3RydWN0IGRlbnRyeSAqZGVudHJ5LAo+ID4gICAgICAgaW50IGVyciA9
IDA7Cj4gPiAgICAgICBrZ2lkX3QgZ2lkOwo+ID4gICAgICAgdW1vZGVfdCBtb2RlOwo+ID4gKyAg
ICAgaW50IHA5X29tb2RlID0gdjlmc19vcGVuX3RvX2RvdGxfZmxhZ3MoZmxhZ3MpOwo+ID4gICAg
ICAgY29uc3QgdW5zaWduZWQgY2hhciAqbmFtZSA9IE5VTEw7Cj4gPiAgICAgICBzdHJ1Y3QgcDlf
cWlkIHFpZDsKPiA+ICAgICAgIHN0cnVjdCBpbm9kZSAqaW5vZGU7Cj4gPiAgICAgICBzdHJ1Y3Qg
cDlfZmlkICpmaWQgPSBOVUxMOwo+ID4gLSAgICAgc3RydWN0IHY5ZnNfaW5vZGUgKnY5aW5vZGU7
Cj4gPiAtICAgICBzdHJ1Y3QgcDlfZmlkICpkZmlkID0gTlVMTCwgKm9maWQgPSBOVUxMLCAqaW5v
ZGVfZmlkID0gTlVMTDsKPiA+ICsgICAgIHN0cnVjdCBwOV9maWQgKmRmaWQgPSBOVUxMLCAqb2Zp
ZCA9IE5VTEw7Cj4gPiAgICAgICBzdHJ1Y3Qgdjlmc19zZXNzaW9uX2luZm8gKnY5c2VzOwo+ID4g
ICAgICAgc3RydWN0IHBvc2l4X2FjbCAqcGFjbCA9IE5VTEwsICpkYWNsID0gTlVMTDsKPiA+ICAg
ICAgIHN0cnVjdCBkZW50cnkgKnJlcyA9IE5VTEw7Cj4gPiBAQCAtMjgyLDE0ICsyODIsMTkgQEAg
djlmc192ZnNfYXRvbWljX29wZW5fZG90bChzdHJ1Y3QgaW5vZGUgKmRpciwgc3RydWN0IGRlbnRy
eSAqZGVudHJ5LAo+ID4gICAgICAgLyogVXBkYXRlIG1vZGUgYmFzZWQgb24gQUNMIHZhbHVlICov
Cj4gPiAgICAgICBlcnIgPSB2OWZzX2FjbF9tb2RlKGRpciwgJm1vZGUsICZkYWNsLCAmcGFjbCk7
Cj4gPiAgICAgICBpZiAoZXJyKSB7Cj4gPiAtICAgICAgICAgICAgIHA5X2RlYnVnKFA5X0RFQlVH
X1ZGUywgIkZhaWxlZCB0byBnZXQgYWNsIHZhbHVlcyBpbiBjcmVhdCAlZFxuIiwKPiA+ICsgICAg
ICAgICAgICAgcDlfZGVidWcoUDlfREVCVUdfVkZTLCAiRmFpbGVkIHRvIGdldCBhY2wgdmFsdWVz
IGluIGNyZWF0ZSAlZFxuIiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgZXJyKTsKPiA+ICAg
ICAgICAgICAgICAgZ290byBvdXQ7Cj4gPiAgICAgICB9Cj4gPiAtICAgICBlcnIgPSBwOV9jbGll
bnRfY3JlYXRlX2RvdGwob2ZpZCwgbmFtZSwgdjlmc19vcGVuX3RvX2RvdGxfZmxhZ3MoZmxhZ3Mp
LAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1vZGUsIGdpZCwgJnFpZCk7
Cj4gPiArCj4gPiArICAgICBpZiAoKHY5c2VzLT5jYWNoZSA+PSBDQUNIRV9XUklURUJBQ0spICYm
IChwOV9vbW9kZSAmIFA5X09XUklURSkpIHsKPiA+ICsgICAgICAgICAgICAgcDlfb21vZGUgPSAo
cDlfb21vZGUgJiAhUDlfT1dSSVRFKSB8IFA5X09SRFdSOwo+Cj4gU2FtZSBoZXJlLgo+Cj4gQ0oK
Pgo+ID4gKyAgICAgICAgICAgICBwOV9kZWJ1ZyhQOV9ERUJVR19DQUNIRSwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAid3JpdGUtb25seSBmaWxlIHdpdGggd3JpdGViYWNrIGVuYWJsZWQsIGNy
ZWF0aW5nIHcvIE9fUkRXUlxuIik7Cj4gPiArICAgICB9Cj4gPiArICAgICBlcnIgPSBwOV9jbGll
bnRfY3JlYXRlX2RvdGwob2ZpZCwgbmFtZSwgcDlfb21vZGUsIG1vZGUsIGdpZCwgJnFpZCk7Cj4g
PiAgICAgICBpZiAoZXJyIDwgMCkgewo+ID4gLSAgICAgICAgICAgICBwOV9kZWJ1ZyhQOV9ERUJV
R19WRlMsICJwOV9jbGllbnRfb3Blbl9kb3RsIGZhaWxlZCBpbiBjcmVhdCAlZFxuIiwKPiA+ICsg
ICAgICAgICAgICAgcDlfZGVidWcoUDlfREVCVUdfVkZTLCAicDlfY2xpZW50X29wZW5fZG90bCBm
YWlsZWQgaW4gY3JlYXRlICVkXG4iLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICBlcnIpOwo+
ID4gICAgICAgICAgICAgICBnb3RvIG91dDsKPiA+ICAgICAgIH0KPgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
