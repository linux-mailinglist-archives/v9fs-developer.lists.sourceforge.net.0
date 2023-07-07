Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6322974B641
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Jul 2023 20:28:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qHqBZ-0004WL-4u;
	Fri, 07 Jul 2023 18:28:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <42.hyeyoo@gmail.com>) id 1qHqBY-0004WF-Ct
 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 18:28:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iYQfxXiGIbONBSMq6Yza7HFvxxB0EcOOzA9wruYd9/s=; b=VK/OGH6hFWfAV+Db95UFqoMaZd
 5SSQU4AOtMZMk935bGksd1rtWLkubPVXIhwU++FRIi8Zqr05xbmNnzAAc4A+RyFmrTmGH4CcfM6W3
 IElkJaA4NZvq6Pwye+mkuPZEljwyC+cexH4MSwGovHhI6KlwUHElVkhFnThQPgEP5N4Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iYQfxXiGIbONBSMq6Yza7HFvxxB0EcOOzA9wruYd9/s=; b=DPKYApx4rLRZPQvF+v5zE5yOIS
 T20q8v/tLY0mzrdS5kIOexaAyL+q4eWhmnyZ5Mnpo0oqruP87L6bRjt5DQ0F3E2TFNCfZvXvr1Meu
 7mzB7t9B0tWVBqdOWI9ytyk+da85nN1guCqULuwm09YGXy4+VAZH06dHJaySFssL9T1U=;
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qHqBa-00084t-IG for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 18:28:05 +0000
Received: by mail-oi1-f170.google.com with SMTP id
 5614622812f47-39eab4bcee8so1812475b6e.0
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 07 Jul 2023 11:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688754479; x=1691346479;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=iYQfxXiGIbONBSMq6Yza7HFvxxB0EcOOzA9wruYd9/s=;
 b=j3geTWRkEi3aeiGz2BF4fSfBPYHNsjFbdUALg4Z6+wh1OZhMpmxe/qUenhsbvBmC7j
 yHrk29Qw2/fd222QSd/7L4e5lvCPVgiE7jHmQo3vZhwwMY5ZLYMj1UogKzNP8cKCecVd
 XQSML42ydPCsukuqBl2iATBWJF7vYK2eoHPL3XioEeZsm9U83H+9t46w1o/iePkULvMn
 ghR0Nyuna3L17isRB+Xifod3A37dAqVGRhZvZZ2GSnkZd1Fkp1+FrJ0mN9myunq1zU0c
 7DtBuaWasks/8OCl45eKLTPffT2APC4cQVO8IKkIGOTZ8naNNY/joAXdt62xDiY8be+U
 ZfBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688754479; x=1691346479;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iYQfxXiGIbONBSMq6Yza7HFvxxB0EcOOzA9wruYd9/s=;
 b=iGmkbQItNqZQTxPGJ0Bye2DFw2RxhMCUM/F19XEMrz9bnIfzk26/OeusjiV3armRXD
 YW7J9/qc6E1bDU3XSwlUMGbVuO/I9EsCPADO0L3dEO3zmvk4u47jqw0IfWDQH4UYeYxR
 E3bQv9V+QnT22KCSXhcQ4gr6idifkMY37yS79+D/zRc4NIlNitZsqSS4+mBYwDTBIH7s
 jFRp2LgNLJli1WcBAb46UIuH2UKOw93JmgraW4jagtI8pMiYvD25wV110yUBWrWKX8cq
 IywAbb/uGz87nreHdKCe85e0a2l7lOvDjc+GYamtekyA/h6JTVA+0CcUKdgMCRWo0D5I
 EFrA==
X-Gm-Message-State: ABy/qLZt19N6Y/rnXoFubsorv4wd1V/LQBpng2ldmg0wJfw8XoXtJs7m
 f783xiT3n2SdwCSOgXWwVfo=
X-Google-Smtp-Source: APBJJlGyNnx65V8DrUjHW0YCJrqFGc33K7OB7NDJ9VF8y/PY5FmBu9OfcUtqWP5Qz4NxceHxptdnHQ==
X-Received: by 2002:a05:6808:202a:b0:3a3:d153:2723 with SMTP id
 q42-20020a056808202a00b003a3d1532723mr6588090oiw.29.1688754478621; 
 Fri, 07 Jul 2023 11:27:58 -0700 (PDT)
Received: from fedora ([121.135.181.61]) by smtp.gmail.com with ESMTPSA id
 fe27-20020a056a002f1b00b0064d47cd117esm3189901pfb.39.2023.07.07.11.27.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jul 2023 11:27:58 -0700 (PDT)
Date: Sat, 8 Jul 2023 03:27:42 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: David Wysochanski <dwysocha@redhat.com>
Message-ID: <ZKhZHg6LSGnvryIe@fedora>
References: <20230628104852.3391651-1-dhowells@redhat.com>
 <20230628104852.3391651-3-dhowells@redhat.com>
 <ZKg/J3OG3kQ9ynSO@fedora>
 <CAB=+i9Qbi7+o90Cd_ecd1TeaAYnWPcO-gNp7kzc95Pxecy0XTw@mail.gmail.com>
 <CALF+zO=nGdoxcT-ya3aaUCBi-4iKPo3kZyzcWYCKMCf4n2wVbA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALF+zO=nGdoxcT-ya3aaUCBi-4iKPo3kZyzcWYCKMCf4n2wVbA@mail.gmail.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, Jul 07, 2023 at 02:12:06PM -0400, David Wysochanski
    wrote: > On Fri, Jul 7, 2023 at 12:46 PM Hyeonggon Yoo wrote: > > > > On
    Sat, Jul 8, 2023 at 1:39 AM Hyeonggon Yoo wrote: > > > > > [...] 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.3 HK_RANDOM_FROM         From username looks random
  1.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [42.hyeyoo[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.170 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qHqBa-00084t-IG
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
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-cifs@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-ext4@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 Daire Byrne <daire.byrne@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gRnJpLCBKdWwgMDcsIDIwMjMgYXQgMDI6MTI6MDZQTSAtMDQwMCwgRGF2aWQgV3lzb2NoYW5z
a2kgd3JvdGU6Cj4gT24gRnJpLCBKdWwgNywgMjAyMyBhdCAxMjo0NuKAr1BNIEh5ZW9uZ2dvbiBZ
b28gPDQyLmh5ZXlvb0BnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFNhdCwgSnVsIDgsIDIw
MjMgYXQgMTozOeKAr0FNIEh5ZW9uZ2dvbiBZb28gPDQyLmh5ZXlvb0BnbWFpbC5jb20+IHdyb3Rl
Ogo+ID4gPgo+ID4gPiBPbiBXZWQsIEp1biAyOCwgMjAyMyBhdCAxMTo0ODo1MkFNICswMTAwLCBE
YXZpZCBIb3dlbGxzIHdyb3RlOgo+ID4gPiA+IEZzY2FjaGUgaGFzIGFuIG9wdGltaXNhdGlvbiBi
eSB3aGljaCByZWFkcyBmcm9tIHRoZSBjYWNoZSBhcmUgc2tpcHBlZCB1bnRpbAo+ID4gPiA+IHdl
IGtub3cgdGhhdCAoYSkgdGhlcmUncyBkYXRhIHRoZXJlIHRvIGJlIHJlYWQgYW5kIChiKSB0aGF0
IGRhdGEgaXNuJ3QKPiA+ID4gPiBlbnRpcmVseSBjb3ZlcmVkIGJ5IHBhZ2VzIHJlc2lkZW50IGlu
IHRoZSBuZXRmcyBwYWdlY2FjaGUuICBUaGlzIGlzIGRvbmUKPiA+ID4gPiB3aXRoIHR3byBmbGFn
cyBtYW5pcHVsYXRlZCBieSBmc2NhY2hlX25vdGVfcGFnZV9yZWxlYXNlKCk6Cj4gPiA+ID4KPiA+
ID4gPiAgICAgICBpZiAoLi4uCj4gPiA+ID4gICAgICAgICAgIHRlc3RfYml0KEZTQ0FDSEVfQ09P
S0lFX0hBVkVfREFUQSwgJmNvb2tpZS0+ZmxhZ3MpICYmCj4gPiA+ID4gICAgICAgICAgIHRlc3Rf
Yml0KEZTQ0FDSEVfQ09PS0lFX05PX0RBVEFfVE9fUkVBRCwgJmNvb2tpZS0+ZmxhZ3MpKQo+ID4g
PiA+ICAgICAgICAgICAgICAgY2xlYXJfYml0KEZTQ0FDSEVfQ09PS0lFX05PX0RBVEFfVE9fUkVB
RCwgJmNvb2tpZS0+ZmxhZ3MpOwo+ID4gPiA+Cj4gPiA+ID4gd2hlcmUgdGhlIE5PX0RBVEFfVE9f
UkVBRCBmbGFnIGNhdXNlcyBjYWNoZWZpbGVzX3ByZXBhcmVfcmVhZCgpIHRvIGluZGljYXRlCj4g
PiA+ID4gdGhhdCBuZXRmc2xpYiBzaG91bGQgZG93bmxvYWQgZnJvbSB0aGUgc2VydmVyIG9yIGNs
ZWFyIHRoZSBwYWdlIGluc3RlYWQuCj4gPiA+ID4KPiA+ID4gPiBUaGUgZnNjYWNoZV9ub3RlX3Bh
Z2VfcmVsZWFzZSgpIGZ1bmN0aW9uIGlzIGludGVuZGVkIHRvIGJlIGNhbGxlZCBmcm9tCj4gPiA+
ID4gLT5yZWxlYXNlcGFnZSgpIC0gYnV0IHRoYXQgb25seSBnZXRzIGNhbGxlZCBpZiBQR19wcml2
YXRlIG9yIFBHX3ByaXZhdGVfMgo+ID4gPiA+IGlzIHNldCAtIGFuZCBjdXJyZW50bHkgdGhlIGZv
cm1lciBpcyBhdCB0aGUgZGlzY3JldGlvbiBvZiB0aGUgbmV0d29yawo+ID4gPiA+IGZpbGVzeXN0
ZW0gYW5kIHRoZSBsYXR0ZXIgaXMgb25seSBzZXQgd2hpbHN0IGEgcGFnZSBpcyBiZWluZyB3cml0
dGVuIHRvIHRoZQo+ID4gPiA+IGNhY2hlLCBzbyBzb21ldGltZXMgd2UgbWlzcyBjbGVhcmluZyB0
aGUgb3B0aW1pc2F0aW9uLgo+ID4gPiA+Cj4gPiA+ID4gRml4IHRoaXMgYnkgZm9sbG93aW5nIFdp
bGx5J3Mgc3VnZ2VzdGlvblsxXSBhbmQgYWRkaW5nIGFuIGFkZHJlc3Nfc3BhY2UKPiA+ID4gPiBm
bGFnLCBBU19SRUxFQVNFX0FMV0FZUywgdGhhdCBjYXVzZXMgZmlsZW1hcF9yZWxlYXNlX2ZvbGlv
KCkgdG8gYWx3YXlzIGNhbGwKPiA+ID4gPiAtPnJlbGVhc2VfZm9saW8oKSBpZiBpdCdzIHNldCwg
ZXZlbiBpZiBQR19wcml2YXRlIG9yIFBHX3ByaXZhdGVfMiBhcmVuJ3QKPiA+ID4gPiBzZXQuCj4g
PiA+ID4KPiA+ID4gPiBOb3RlIHRoYXQgdGhpcyB3b3VsZCByZXF1aXJlIGZvbGlvX3Rlc3RfcHJp
dmF0ZSgpIGFuZCBwYWdlX2hhc19wcml2YXRlKCkgdG8KPiA+ID4gPiBiZWNvbWUgbW9yZSBjb21w
bGljYXRlZC4gIFRvIGF2b2lkIHRoYXQsIGluIHRoZSBwbGFjZXNbKl0gd2hlcmUgdGhlc2UgYXJl
Cj4gPiA+ID4gdXNlZCB0byBjb25kaXRpb25hbGlzZSBjYWxscyB0byBmaWxlbWFwX3JlbGVhc2Vf
Zm9saW8oKSBhbmQKPiA+ID4gPiB0cnlfdG9fcmVsZWFzZV9wYWdlKCksIHRoZSB0ZXN0cyBhcmUg
cmVtb3ZlZCB0aGUgdGhvc2UgZnVuY3Rpb25zIGp1c3QKPiA+ID4gPiBqdW1wZWQgdG8gdW5jb25k
aXRpb25hbGx5IGFuZCB0aGUgdGVzdCBpcyBwZXJmb3JtZWQgdGhlcmUuCj4gPiA+ID4KPiA+ID4g
PiBbKl0gVGhlcmUgYXJlIHNvbWUgZXhjZXB0aW9ucyBpbiB2bXNjYW4uYyB3aGVyZSB0aGUgY2hl
Y2sgZ3VhcmRzIG1vcmUgdGhhbgo+ID4gPiA+IGp1c3QgYSBjYWxsIHRvIHRoZSByZWxlYXNlci4g
IEkndmUgYWRkZWQgYSBmdW5jdGlvbiwgZm9saW9fbmVlZHNfcmVsZWFzZSgpCj4gPiA+ID4gdG8g
d3JhcCBhbGwgdGhlIGNoZWNrcyBmb3IgdGhhdC4KPiA+ID4gPgo+ID4gPiA+IEFTX1JFTEVBU0Vf
QUxXQVlTIHNob3VsZCBiZSBzZXQgaWYgYSBub24tTlVMTCBjb29raWUgaXMgb2J0YWluZWQgZnJv
bQo+ID4gPiA+IGZzY2FjaGUgYW5kIGNsZWFyZWQgaW4gLT5ldmljdF9pbm9kZSgpIGJlZm9yZSB0
cnVuY2F0ZV9pbm9kZV9wYWdlc19maW5hbCgpCj4gPiA+ID4gaXMgY2FsbGVkLgo+ID4gPiA+Cj4g
PiA+ID4gQWRkaXRpb25hbGx5LCB0aGUgRlNDQUNIRV9DT09LSUVfTk9fREFUQV9UT19SRUFEIGZs
YWcgbmVlZHMgdG8gYmUgY2xlYXJlZAo+ID4gPiA+IGFuZCB0aGUgb3B0aW1pc2F0aW9uIGNhbmNl
bGxlZCBpZiBhIGNhY2hlZmlsZXMgb2JqZWN0IGFscmVhZHkgY29udGFpbnMgZGF0YQo+ID4gPiA+
IHdoZW4gd2Ugb3BlbiBpdC4KPiA+ID4gPgo+ID4gPiA+IEZpeGVzOiAxZjY3ZTZkMGIxODggKCJm
c2NhY2hlOiBQcm92aWRlIGEgZnVuY3Rpb24gdG8gbm90ZSB0aGUgcmVsZWFzZSBvZiBhIHBhZ2Ui
KQo+ID4gPiA+IEZpeGVzOiAwNDc0ODdjOTQ3ZTggKCJjYWNoZWZpbGVzOiBJbXBsZW1lbnQgdGhl
IEkvTyByb3V0aW5lcyIpCj4gPiA+ID4gUmVwb3J0ZWQtYnk6IFJvaGl0aCBTdXJhYmF0dHVsYSA8
cm9oaXRocy5tc2Z0QGdtYWlsLmNvbT4KPiA+ID4gPiBTdWdnZXN0ZWQtYnk6IE1hdHRoZXcgV2ls
Y294IDx3aWxseUBpbmZyYWRlYWQub3JnPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IERhdmlkIEhv
d2VsbHMgPGRob3dlbGxzQHJlZGhhdC5jb20+Cj4gPiA+Cj4gPiA+IEhpIERhdmlkLAo+ID4gPgo+
ID4gPiBJIHdhcyBiaXNlY3RpbmcgYSB1c2UtYWZ0ZXItZnJlZSBCVUcgb24gdGhlIGxhdGVzdCBt
bS11bnN0YWJsZSwKPiA+ID4gd2hlcmUgSEVBRCBpcyAzNDdlMjA4ZGUwZTQgKCJybWFwOiBwYXNz
IHRoZSBmb2xpbyB0byBfX3BhZ2VfY2hlY2tfYW5vbl9ybWFwKCkiKS4KPiA+ID4KPiA+ID4gQWNj
b3JkaW5nIHRvIG15IGJpc2VjdGlvbiwgdGhpcyBpcyB0aGUgZmlyc3QgYmFkIGNvbW1pdC4KPiA+
ID4gVXNlLUFmdGVyLUZyZWUgaXMgdHJpZ2dlcmVkIG9uIHJlY2xhbWF0aW9uIHBhdGggd2hlbiBz
d2FwIGlzIGVuYWJsZWQuCj4gPgo+ID4gVGhpcyB3YXMgb3JpZ2luYWxseSBvY2N1cnJlZCBkdXJp
bmcga2VybmVsIGNvbXBpbGF0aW9uIGJ1dAo+ID4gY2FuIGVhc2lseSBiZSByZXByb2R1Y2VkIHZp
YToKPiA+Cj4gPiBzdHJlc3MtbmcgLS1iaWdoZWFwICQobnByb2MpCj4gPgo+ID4gPiAoYW5kIGNv
dWxkbid0IHRyaWdnZXIgd2l0aG91dCBzd2FwIGVuYWJsZWQpCj4gPiA+Cj4gPiA+IHRoZSBjb25m
aWcsIEtBU0FOIHNwbGF0LCBiaXNlY3QgbG9nIGFyZSBhdHRhY2hlZC4KPiA+ID4gaG9wZSB0aGlz
IGlzbid0IHRvbyBsYXRlIDooCj4gPiA+Cj4gPiA+ID4gY2M6IE1hdHRoZXcgV2lsY294IDx3aWxs
eUBpbmZyYWRlYWQub3JnPgo+ID4gPiA+IGNjOiBMaW51cyBUb3J2YWxkcyA8dG9ydmFsZHNAbGlu
dXgtZm91bmRhdGlvbi5vcmc+Cj4gPiA+ID4gY2M6IFN0ZXZlIEZyZW5jaCA8c2ZyZW5jaEBzYW1i
YS5vcmc+Cj4gPiA+ID4gY2M6IFNoeWFtIFByYXNhZCBOIDxuc3BtYW5nYWxvcmVAZ21haWwuY29t
Pgo+ID4gPiA+IGNjOiBSb2hpdGggU3VyYWJhdHR1bGEgPHJvaGl0aHMubXNmdEBnbWFpbC5jb20+
Cj4gPiA+ID4gY2M6IERhdmUgV3lzb2NoYW5za2kgPGR3eXNvY2hhQHJlZGhhdC5jb20+Cj4gPiA+
ID4gY2M6IERvbWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29kZXdyZWNrLm9yZz4KPiA+ID4g
PiBjYzogSWx5YSBEcnlvbW92IDxpZHJ5b21vdkBnbWFpbC5jb20+Cj4gPiA+ID4gY2M6IGxpbnV4
LWNhY2hlZnNAcmVkaGF0LmNvbQo+ID4gPiA+IGNjOiBsaW51eC1jaWZzQHZnZXIua2VybmVsLm9y
Zwo+ID4gPiA+IGNjOiBsaW51eC1hZnNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiA+IGNjOiB2
OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiA+ID4gPiBjYzogY2VwaC1kZXZl
bEB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gPiBjYzogbGludXgtbmZzQHZnZXIua2VybmVsLm9yZwo+
ID4gPiA+IGNjOiBsaW51eC1mc2RldmVsQHZnZXIua2VybmVsLm9yZwo+ID4gPiA+IGNjOiBsaW51
eC1tbUBrdmFjay5vcmcKPiA+ID4gPiAtLS0KPiA+ID4gPgo+ID4gPiA+IE5vdGVzOgo+ID4gPiA+
ICAgICB2ZXIgIzcpCj4gPiA+ID4gICAgICAtIE1ha2UgTkZTIHNldCBBU19SRUxFQVNFX0FMV0FZ
Uy4KPiA+ID4gPgo+ID4gPiA+ICAgICB2ZXIgIzQpCj4gPiA+ID4gICAgICAtIFNwbGl0IG91dCBt
ZXJnaW5nIG9mIGZvbGlvX2hhc19wcml2YXRlKCkvZmlsZW1hcF9yZWxlYXNlX2ZvbGlvKCkgY2Fs
bAo+ID4gPiA+ICAgICAgICBwYWlycyBpbnRvIGEgcHJlY2VkaW5nIHBhdGNoLgo+ID4gPiA+ICAg
ICAgLSBEb24ndCBuZWVkIHRvIGNsZWFyIEFTX1JFTEVBU0VfQUxXQVlTIGluIC0+ZXZpY3RfaW5v
ZGUoKS4KPiA+ID4gPgo+ID4gPiA+ICAgICB2ZXIgIzMpCj4gPiA+ID4gICAgICAtIEZpeGVkIG1h
cHBpbmdfY2xlYXJfcmVsZWFzZV9hbHdheXMoKSB0byB1c2UgY2xlYXJfYml0KCkgbm90IHNldF9i
aXQoKS4KPiA+ID4gPiAgICAgIC0gTW92ZWQgYSAnJiYnIHRvIHRoZSBjb3JyZWN0IGxpbmUuCj4g
PiA+ID4KPiA+ID4gPiAgICAgdmVyICMyKQo+ID4gPiA+ICAgICAgLSBSZXdyb3RlIGVudGlyZWx5
IGFjY29yZGluZyB0byBXaWxseSdzIHN1Z2dlc3Rpb25bMV0uCj4gPiA+ID4KPiA+ID4gPiAgZnMv
OXAvY2FjaGUuYyAgICAgICAgICAgfCAgMiArKwo+ID4gPiA+ICBmcy9hZnMvaW50ZXJuYWwuaCAg
ICAgICB8ICAyICsrCj4gPiA+ID4gIGZzL2NhY2hlZmlsZXMvbmFtZWkuYyAgIHwgIDIgKysKPiA+
ID4gPiAgZnMvY2VwaC9jYWNoZS5jICAgICAgICAgfCAgMiArKwo+ID4gPiA+ICBmcy9uZnMvZnNj
YWNoZS5jICAgICAgICB8ICAzICsrKwo+ID4gPiA+ICBmcy9zbWIvY2xpZW50L2ZzY2FjaGUuYyB8
ICAyICsrCj4gPiA+ID4gIGluY2x1ZGUvbGludXgvcGFnZW1hcC5oIHwgMTYgKysrKysrKysrKysr
KysrKwo+ID4gPiA+ICBtbS9pbnRlcm5hbC5oICAgICAgICAgICB8ICA1ICsrKystCj4gPiA+ID4g
IDggZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IAo+
IEkgdGhpbmsgbXlzZWxmIC8gRGFpcmUgQnlybmUgbWF5IGhhdmUgYWxyZWFkeSB0cmFja2VkIHRo
aXMgZG93biBhbmQgSQo+IGZvdW5kIGEgMS1saW5lciB0aGF0IGZpeGVkIGEgc2ltaWxhciBjcmFz
aCBpbiBoaXMgZW52aXJvbm1lbnQuCj4gCj4gQ2FuIHlvdSB0cnkgdGhpcyBwYXRjaCBvbiB0b3Ag
YW5kIGxldCBtZSBrbm93IGlmIGl0IHN0aWxsIGNyYXNoZXM/Cj4gaHR0cHM6Ly9naXRodWIuY29t
L0RhdmVXeXNvY2hhbnNraVJIL2tlcm5lbC9jb21taXQvOTAyYzk5MGUzMTExMjAxNzlmYTVkZTk5
ZDY4MzY0YjI5NDdiNzllYwoKT2gsIGl0IGRvZXMgbm90IGNyYXNoIHdpdGggdGhlIHBhdGNoIGFw
cGxpZWQuCgpIbW0sIHdhcyBpdCBVQUYgYmVjYXVzZSBpdCByZWZlcmVuY2VzIHdyb25nIGZpZWxk
IC0+bWFwcGluZywKaW5zdGVhZCBvZiBzd2FwcGVyIGFkZHJlc3Mgc3BhY2U/CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
