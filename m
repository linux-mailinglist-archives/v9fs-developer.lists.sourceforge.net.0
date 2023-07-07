Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C48B74B709
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Jul 2023 21:23:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qHr2v-0001Pg-K0;
	Fri, 07 Jul 2023 19:23:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sj@kernel.org>) id 1qHr2t-0001Pa-JO
 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 19:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bVzwqDCXswNVqFcgL0ALQEMEJDUQGqbFL2Bn7HygaSU=; b=Mu/MUiUHK7iOsY9jJ5OznQ4qKJ
 f7I1PU47Yo3zSUZ3r+zOaouN89jMgmFmaVVg0UqRkd0vrpZRmgHZzsYgJjFwzdWd2W9wJSIdgGc2O
 ZucA2SqoG6C58vM5uDNBb0EzXywMbkSVKhbTV2UwzLCm2BWvGOJH/aR+btuukGqKD4Rc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bVzwqDCXswNVqFcgL0ALQEMEJDUQGqbFL2Bn7HygaSU=; b=AVcr6VwJeX60Jw2h+xwncA8tHg
 bowGuBCXuVu62xL0I4g9PrsCW+CTjhlVcRbMzxf3iFTUoiWuSKjhSVzXKbOgILOPkww8UqtKjU8QM
 XR3ZKGvHPJ25paxCAcFOyQkyXEM5c/He5bZj+ULY+lOuZMDYQY9aPGKvUHXgOR3C+bJg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qHr2t-000tB9-5u for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 19:23:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B601A61A34;
 Fri,  7 Jul 2023 19:23:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63501C433C7;
 Fri,  7 Jul 2023 19:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1688757785;
 bh=94A738552oPcNLUcdadUB8TIEGBu7Z7b4zP4i/CSZhk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tgLCFacDRH2vFBvGsS1BdApLvk5sLS7WaSV2sgoXnSapnBONfvmv9X8eKnvugMJHE
 jqjgRwSKqOqTX8fmIldEGKg0KhXTvE0Bema9AGOztxJ3On1k5IAODVtjRLYQSXxP2D
 t/ZQ+Qpmi+iWBisfwT5UB4sgtSMbE1mZirUi9Sv4DwscQ0HrO92bVw63QK67r9cxrQ
 QxbM6U35zant3vdXmjw3fsF5Ss+czDaGBBWJvUTejeoPPj3ruozwzQAv9CaKvhOlKV
 2nM3B31uev1RK+ZATSoyzNzgygragekkgVMBHp/70Fr46Mi/QGbs3iEtE2igexxk6o
 AYNbqLhudXizg==
From: SeongJae Park <sj@kernel.org>
To: David Wysochanski <dwysocha@redhat.com>
Date: Fri,  7 Jul 2023 19:23:01 +0000
Message-Id: <20230707192301.27308-1-sj@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CALF+zO=nGdoxcT-ya3aaUCBi-4iKPo3kZyzcWYCKMCf4n2wVbA@mail.gmail.com>
References: 
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 7 Jul 2023 14:12:06 -0400 David Wysochanski <dwysocha@redhat.com>
    wrote: > On Fri, Jul 7, 2023 at 12:46 PM Hyeonggon Yoo <42.hyeyoo@gmail.com>
    wrote: > > > > On Sat, Jul 8, 2023 at 1:39 AM Hyeonggon Yoo <42.hyeyoo@gmail.com>
    wrote: > > > > > > On Wed, Jun 28, 2023 at 1 [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qHr2t-000tB9-5u
Subject: Re: [V9fs-developer] [BUG mm-unstable] BUG: KASAN: use-after-free
 in shrink_folio_list+0x9f4/0x1ae0
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
Cc: David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org,
 SeongJae Park <sj@kernel.org>, Rohith Surabattula <rohiths.msft@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jeff Layton <jlayton@kernel.org>, Steve French <sfrench@samba.org>,
 Daire Byrne <daire.byrne@gmail.com>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gRnJpLCA3IEp1bCAyMDIzIDE0OjEyOjA2IC0wNDAwIERhdmlkIFd5c29jaGFuc2tpIDxkd3lz
b2NoYUByZWRoYXQuY29tPiB3cm90ZToKCj4gT24gRnJpLCBKdWwgNywgMjAyMyBhdCAxMjo0NuKA
r1BNIEh5ZW9uZ2dvbiBZb28gPDQyLmh5ZXlvb0BnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9u
IFNhdCwgSnVsIDgsIDIwMjMgYXQgMTozOeKAr0FNIEh5ZW9uZ2dvbiBZb28gPDQyLmh5ZXlvb0Bn
bWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBXZWQsIEp1biAyOCwgMjAyMyBhdCAxMTo0
ODo1MkFNICswMTAwLCBEYXZpZCBIb3dlbGxzIHdyb3RlOgo+ID4gPiA+IEZzY2FjaGUgaGFzIGFu
IG9wdGltaXNhdGlvbiBieSB3aGljaCByZWFkcyBmcm9tIHRoZSBjYWNoZSBhcmUgc2tpcHBlZCB1
bnRpbAo+ID4gPiA+IHdlIGtub3cgdGhhdCAoYSkgdGhlcmUncyBkYXRhIHRoZXJlIHRvIGJlIHJl
YWQgYW5kIChiKSB0aGF0IGRhdGEgaXNuJ3QKPiA+ID4gPiBlbnRpcmVseSBjb3ZlcmVkIGJ5IHBh
Z2VzIHJlc2lkZW50IGluIHRoZSBuZXRmcyBwYWdlY2FjaGUuICBUaGlzIGlzIGRvbmUKPiA+ID4g
PiB3aXRoIHR3byBmbGFncyBtYW5pcHVsYXRlZCBieSBmc2NhY2hlX25vdGVfcGFnZV9yZWxlYXNl
KCk6Cj4gPiA+ID4KPiA+ID4gPiAgICAgICBpZiAoLi4uCj4gPiA+ID4gICAgICAgICAgIHRlc3Rf
Yml0KEZTQ0FDSEVfQ09PS0lFX0hBVkVfREFUQSwgJmNvb2tpZS0+ZmxhZ3MpICYmCj4gPiA+ID4g
ICAgICAgICAgIHRlc3RfYml0KEZTQ0FDSEVfQ09PS0lFX05PX0RBVEFfVE9fUkVBRCwgJmNvb2tp
ZS0+ZmxhZ3MpKQo+ID4gPiA+ICAgICAgICAgICAgICAgY2xlYXJfYml0KEZTQ0FDSEVfQ09PS0lF
X05PX0RBVEFfVE9fUkVBRCwgJmNvb2tpZS0+ZmxhZ3MpOwo+ID4gPiA+Cj4gPiA+ID4gd2hlcmUg
dGhlIE5PX0RBVEFfVE9fUkVBRCBmbGFnIGNhdXNlcyBjYWNoZWZpbGVzX3ByZXBhcmVfcmVhZCgp
IHRvIGluZGljYXRlCj4gPiA+ID4gdGhhdCBuZXRmc2xpYiBzaG91bGQgZG93bmxvYWQgZnJvbSB0
aGUgc2VydmVyIG9yIGNsZWFyIHRoZSBwYWdlIGluc3RlYWQuCj4gPiA+ID4KPiA+ID4gPiBUaGUg
ZnNjYWNoZV9ub3RlX3BhZ2VfcmVsZWFzZSgpIGZ1bmN0aW9uIGlzIGludGVuZGVkIHRvIGJlIGNh
bGxlZCBmcm9tCj4gPiA+ID4gLT5yZWxlYXNlcGFnZSgpIC0gYnV0IHRoYXQgb25seSBnZXRzIGNh
bGxlZCBpZiBQR19wcml2YXRlIG9yIFBHX3ByaXZhdGVfMgo+ID4gPiA+IGlzIHNldCAtIGFuZCBj
dXJyZW50bHkgdGhlIGZvcm1lciBpcyBhdCB0aGUgZGlzY3JldGlvbiBvZiB0aGUgbmV0d29yawo+
ID4gPiA+IGZpbGVzeXN0ZW0gYW5kIHRoZSBsYXR0ZXIgaXMgb25seSBzZXQgd2hpbHN0IGEgcGFn
ZSBpcyBiZWluZyB3cml0dGVuIHRvIHRoZQo+ID4gPiA+IGNhY2hlLCBzbyBzb21ldGltZXMgd2Ug
bWlzcyBjbGVhcmluZyB0aGUgb3B0aW1pc2F0aW9uLgo+ID4gPiA+Cj4gPiA+ID4gRml4IHRoaXMg
YnkgZm9sbG93aW5nIFdpbGx5J3Mgc3VnZ2VzdGlvblsxXSBhbmQgYWRkaW5nIGFuIGFkZHJlc3Nf
c3BhY2UKPiA+ID4gPiBmbGFnLCBBU19SRUxFQVNFX0FMV0FZUywgdGhhdCBjYXVzZXMgZmlsZW1h
cF9yZWxlYXNlX2ZvbGlvKCkgdG8gYWx3YXlzIGNhbGwKPiA+ID4gPiAtPnJlbGVhc2VfZm9saW8o
KSBpZiBpdCdzIHNldCwgZXZlbiBpZiBQR19wcml2YXRlIG9yIFBHX3ByaXZhdGVfMiBhcmVuJ3QK
PiA+ID4gPiBzZXQuCj4gPiA+ID4KPiA+ID4gPiBOb3RlIHRoYXQgdGhpcyB3b3VsZCByZXF1aXJl
IGZvbGlvX3Rlc3RfcHJpdmF0ZSgpIGFuZCBwYWdlX2hhc19wcml2YXRlKCkgdG8KPiA+ID4gPiBi
ZWNvbWUgbW9yZSBjb21wbGljYXRlZC4gIFRvIGF2b2lkIHRoYXQsIGluIHRoZSBwbGFjZXNbKl0g
d2hlcmUgdGhlc2UgYXJlCj4gPiA+ID4gdXNlZCB0byBjb25kaXRpb25hbGlzZSBjYWxscyB0byBm
aWxlbWFwX3JlbGVhc2VfZm9saW8oKSBhbmQKPiA+ID4gPiB0cnlfdG9fcmVsZWFzZV9wYWdlKCks
IHRoZSB0ZXN0cyBhcmUgcmVtb3ZlZCB0aGUgdGhvc2UgZnVuY3Rpb25zIGp1c3QKPiA+ID4gPiBq
dW1wZWQgdG8gdW5jb25kaXRpb25hbGx5IGFuZCB0aGUgdGVzdCBpcyBwZXJmb3JtZWQgdGhlcmUu
Cj4gPiA+ID4KPiA+ID4gPiBbKl0gVGhlcmUgYXJlIHNvbWUgZXhjZXB0aW9ucyBpbiB2bXNjYW4u
YyB3aGVyZSB0aGUgY2hlY2sgZ3VhcmRzIG1vcmUgdGhhbgo+ID4gPiA+IGp1c3QgYSBjYWxsIHRv
IHRoZSByZWxlYXNlci4gIEkndmUgYWRkZWQgYSBmdW5jdGlvbiwgZm9saW9fbmVlZHNfcmVsZWFz
ZSgpCj4gPiA+ID4gdG8gd3JhcCBhbGwgdGhlIGNoZWNrcyBmb3IgdGhhdC4KPiA+ID4gPgo+ID4g
PiA+IEFTX1JFTEVBU0VfQUxXQVlTIHNob3VsZCBiZSBzZXQgaWYgYSBub24tTlVMTCBjb29raWUg
aXMgb2J0YWluZWQgZnJvbQo+ID4gPiA+IGZzY2FjaGUgYW5kIGNsZWFyZWQgaW4gLT5ldmljdF9p
bm9kZSgpIGJlZm9yZSB0cnVuY2F0ZV9pbm9kZV9wYWdlc19maW5hbCgpCj4gPiA+ID4gaXMgY2Fs
bGVkLgo+ID4gPiA+Cj4gPiA+ID4gQWRkaXRpb25hbGx5LCB0aGUgRlNDQUNIRV9DT09LSUVfTk9f
REFUQV9UT19SRUFEIGZsYWcgbmVlZHMgdG8gYmUgY2xlYXJlZAo+ID4gPiA+IGFuZCB0aGUgb3B0
aW1pc2F0aW9uIGNhbmNlbGxlZCBpZiBhIGNhY2hlZmlsZXMgb2JqZWN0IGFscmVhZHkgY29udGFp
bnMgZGF0YQo+ID4gPiA+IHdoZW4gd2Ugb3BlbiBpdC4KPiA+ID4gPgo+ID4gPiA+IEZpeGVzOiAx
ZjY3ZTZkMGIxODggKCJmc2NhY2hlOiBQcm92aWRlIGEgZnVuY3Rpb24gdG8gbm90ZSB0aGUgcmVs
ZWFzZSBvZiBhIHBhZ2UiKQo+ID4gPiA+IEZpeGVzOiAwNDc0ODdjOTQ3ZTggKCJjYWNoZWZpbGVz
OiBJbXBsZW1lbnQgdGhlIEkvTyByb3V0aW5lcyIpCj4gPiA+ID4gUmVwb3J0ZWQtYnk6IFJvaGl0
aCBTdXJhYmF0dHVsYSA8cm9oaXRocy5tc2Z0QGdtYWlsLmNvbT4KPiA+ID4gPiBTdWdnZXN0ZWQt
Ynk6IE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3JnPgo+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IERhdmlkIEhvd2VsbHMgPGRob3dlbGxzQHJlZGhhdC5jb20+Cj4gPiA+Cj4gPiA+IEhp
IERhdmlkLAo+ID4gPgo+ID4gPiBJIHdhcyBiaXNlY3RpbmcgYSB1c2UtYWZ0ZXItZnJlZSBCVUcg
b24gdGhlIGxhdGVzdCBtbS11bnN0YWJsZSwKPiA+ID4gd2hlcmUgSEVBRCBpcyAzNDdlMjA4ZGUw
ZTQgKCJybWFwOiBwYXNzIHRoZSBmb2xpbyB0byBfX3BhZ2VfY2hlY2tfYW5vbl9ybWFwKCkiKS4K
PiA+ID4KPiA+ID4gQWNjb3JkaW5nIHRvIG15IGJpc2VjdGlvbiwgdGhpcyBpcyB0aGUgZmlyc3Qg
YmFkIGNvbW1pdC4KPiA+ID4gVXNlLUFmdGVyLUZyZWUgaXMgdHJpZ2dlcmVkIG9uIHJlY2xhbWF0
aW9uIHBhdGggd2hlbiBzd2FwIGlzIGVuYWJsZWQuCj4gPgo+ID4gVGhpcyB3YXMgb3JpZ2luYWxs
eSBvY2N1cnJlZCBkdXJpbmcga2VybmVsIGNvbXBpbGF0aW9uIGJ1dAo+ID4gY2FuIGVhc2lseSBi
ZSByZXByb2R1Y2VkIHZpYToKPiA+Cj4gPiBzdHJlc3MtbmcgLS1iaWdoZWFwICQobnByb2MpCj4g
Pgo+ID4gPiAoYW5kIGNvdWxkbid0IHRyaWdnZXIgd2l0aG91dCBzd2FwIGVuYWJsZWQpCj4gPiA+
Cj4gPiA+IHRoZSBjb25maWcsIEtBU0FOIHNwbGF0LCBiaXNlY3QgbG9nIGFyZSBhdHRhY2hlZC4K
PiA+ID4gaG9wZSB0aGlzIGlzbid0IHRvbyBsYXRlIDooCj4gPiA+Cj4gPiA+ID4gY2M6IE1hdHRo
ZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3JnPgo+ID4gPiA+IGNjOiBMaW51cyBUb3J2YWxk
cyA8dG9ydmFsZHNAbGludXgtZm91bmRhdGlvbi5vcmc+Cj4gPiA+ID4gY2M6IFN0ZXZlIEZyZW5j
aCA8c2ZyZW5jaEBzYW1iYS5vcmc+Cj4gPiA+ID4gY2M6IFNoeWFtIFByYXNhZCBOIDxuc3BtYW5n
YWxvcmVAZ21haWwuY29tPgo+ID4gPiA+IGNjOiBSb2hpdGggU3VyYWJhdHR1bGEgPHJvaGl0aHMu
bXNmdEBnbWFpbC5jb20+Cj4gPiA+ID4gY2M6IERhdmUgV3lzb2NoYW5za2kgPGR3eXNvY2hhQHJl
ZGhhdC5jb20+Cj4gPiA+ID4gY2M6IERvbWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29kZXdy
ZWNrLm9yZz4KPiA+ID4gPiBjYzogSWx5YSBEcnlvbW92IDxpZHJ5b21vdkBnbWFpbC5jb20+Cj4g
PiA+ID4gY2M6IGxpbnV4LWNhY2hlZnNAcmVkaGF0LmNvbQo+ID4gPiA+IGNjOiBsaW51eC1jaWZz
QHZnZXIua2VybmVsLm9yZwo+ID4gPiA+IGNjOiBsaW51eC1hZnNAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+ID4gPiA+IGNjOiB2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiA+ID4g
PiBjYzogY2VwaC1kZXZlbEB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gPiBjYzogbGludXgtbmZzQHZn
ZXIua2VybmVsLm9yZwo+ID4gPiA+IGNjOiBsaW51eC1mc2RldmVsQHZnZXIua2VybmVsLm9yZwo+
ID4gPiA+IGNjOiBsaW51eC1tbUBrdmFjay5vcmcKPiA+ID4gPiAtLS0KPiA+ID4gPgo+ID4gPiA+
IE5vdGVzOgo+ID4gPiA+ICAgICB2ZXIgIzcpCj4gPiA+ID4gICAgICAtIE1ha2UgTkZTIHNldCBB
U19SRUxFQVNFX0FMV0FZUy4KPiA+ID4gPgo+ID4gPiA+ICAgICB2ZXIgIzQpCj4gPiA+ID4gICAg
ICAtIFNwbGl0IG91dCBtZXJnaW5nIG9mIGZvbGlvX2hhc19wcml2YXRlKCkvZmlsZW1hcF9yZWxl
YXNlX2ZvbGlvKCkgY2FsbAo+ID4gPiA+ICAgICAgICBwYWlycyBpbnRvIGEgcHJlY2VkaW5nIHBh
dGNoLgo+ID4gPiA+ICAgICAgLSBEb24ndCBuZWVkIHRvIGNsZWFyIEFTX1JFTEVBU0VfQUxXQVlT
IGluIC0+ZXZpY3RfaW5vZGUoKS4KPiA+ID4gPgo+ID4gPiA+ICAgICB2ZXIgIzMpCj4gPiA+ID4g
ICAgICAtIEZpeGVkIG1hcHBpbmdfY2xlYXJfcmVsZWFzZV9hbHdheXMoKSB0byB1c2UgY2xlYXJf
Yml0KCkgbm90IHNldF9iaXQoKS4KPiA+ID4gPiAgICAgIC0gTW92ZWQgYSAnJiYnIHRvIHRoZSBj
b3JyZWN0IGxpbmUuCj4gPiA+ID4KPiA+ID4gPiAgICAgdmVyICMyKQo+ID4gPiA+ICAgICAgLSBS
ZXdyb3RlIGVudGlyZWx5IGFjY29yZGluZyB0byBXaWxseSdzIHN1Z2dlc3Rpb25bMV0uCj4gPiA+
ID4KPiA+ID4gPiAgZnMvOXAvY2FjaGUuYyAgICAgICAgICAgfCAgMiArKwo+ID4gPiA+ICBmcy9h
ZnMvaW50ZXJuYWwuaCAgICAgICB8ICAyICsrCj4gPiA+ID4gIGZzL2NhY2hlZmlsZXMvbmFtZWku
YyAgIHwgIDIgKysKPiA+ID4gPiAgZnMvY2VwaC9jYWNoZS5jICAgICAgICAgfCAgMiArKwo+ID4g
PiA+ICBmcy9uZnMvZnNjYWNoZS5jICAgICAgICB8ICAzICsrKwo+ID4gPiA+ICBmcy9zbWIvY2xp
ZW50L2ZzY2FjaGUuYyB8ICAyICsrCj4gPiA+ID4gIGluY2x1ZGUvbGludXgvcGFnZW1hcC5oIHwg
MTYgKysrKysrKysrKysrKysrKwo+ID4gPiA+ICBtbS9pbnRlcm5hbC5oICAgICAgICAgICB8ICA1
ICsrKystCj4gPiA+ID4gIDggZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IAo+IEkgdGhpbmsgbXlzZWxmIC8gRGFpcmUgQnlybmUgbWF5IGhhdmUgYWxy
ZWFkeSB0cmFja2VkIHRoaXMgZG93biBhbmQgSQo+IGZvdW5kIGEgMS1saW5lciB0aGF0IGZpeGVk
IGEgc2ltaWxhciBjcmFzaCBpbiBoaXMgZW52aXJvbm1lbnQuCj4gCj4gQ2FuIHlvdSB0cnkgdGhp
cyBwYXRjaCBvbiB0b3AgYW5kIGxldCBtZSBrbm93IGlmIGl0IHN0aWxsIGNyYXNoZXM/Cj4gaHR0
cHM6Ly9naXRodWIuY29tL0RhdmVXeXNvY2hhbnNraVJIL2tlcm5lbC9jb21taXQvOTAyYzk5MGUz
MTExMjAxNzlmYTVkZTk5ZDY4MzY0YjI5NDdiNzllYwoKSSBhbHNvIGVuY291bnRlcmVkIHRoaXMg
aXNzdWUgd2l0aCBteSBEQU1PTiB0ZXN0cywgYW5kIHdhcyB0cnlpbmcgdG8gZmluZCBhCnRpbWUg
c2xvdCBmb3IgZGVlcCBkaXZlLiAgQW5kIEkgY29uZmlybWVkIHlvdXIgZml4IHdvcmtzLiAgVGhh
bmsgeW91IGZvciB0aGlzCmdyZWF0IHdvcmsuICBQbGVhc2UgQ2MgbWUgd2hlbiB5b3UgcG9zdCB0
aGUgcGF0Y2ggaWYgcG9zc2libGUuCgpUZXN0ZWQtYnk6IFNlb25nSmFlIFBhcmsgPHNqQGtlcm5l
bC5vcmc+CgoKVGhhbmtzLApTSgoKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
