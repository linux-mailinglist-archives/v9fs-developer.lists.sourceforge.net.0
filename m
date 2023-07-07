Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B446D74B622
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Jul 2023 20:13:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qHpww-0003UE-AP;
	Fri, 07 Jul 2023 18:12:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dwysocha@redhat.com>) id 1qHpwv-0003U7-2i
 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 18:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dYp6SX4idj0K2s8mMqxJ4XFt6H9/PBaHUEfz7SiAvZA=; b=JJyLV8pSlXCsT4y0psLvDbP5W8
 IOnl6Zo0L4e3H4rJBKGe9wMLhY+6pFv2CJ/aMrSoJmmy2nUTOx6vB0uBtxsIc+RMnN97XZBOmHmwL
 g4WWReJPM0Iqn3Sh7pfniMapgbRp5dhF4Mqus3luz2MwCkPxWkWOHzd6YRYkNe/t6zQ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dYp6SX4idj0K2s8mMqxJ4XFt6H9/PBaHUEfz7SiAvZA=; b=AuHz0u37AMkiyz17QxbeUAmNQu
 5w4RSIgzwkzguOWj1D8ISfndJ13xX6IwOjMhu87RDNskx3e3wKi4blyTAI4FMkgFkFaq49Mk6JBRp
 xyyFxQy3TnxrJPuvYbYH1XIN+7KX5CnnR+wg3lRtbFaHmnrdgL38bTDbTQKI60QVfFl8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qHpwp-000qOS-Ne for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 18:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1688753565;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dYp6SX4idj0K2s8mMqxJ4XFt6H9/PBaHUEfz7SiAvZA=;
 b=PsvYJEbxUBucMhQkMVERI4Y0gEC6D59jE1JTSnGBpr/j2uTq6wbAp2u6+O91yQFDF+OjMP
 8sJyE4C/cuur2Tyw3y+mt5EnJMVng6NLXk7BA2akSPXx7J9ecywqo+LxBUNktYyXkpU2GM
 bR145k8uQxS7PfmVrCbTqr+qw75cSWU=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-126-ybwFN9LyMbOlNS8bHjeeNw-1; Fri, 07 Jul 2023 14:12:44 -0400
X-MC-Unique: ybwFN9LyMbOlNS8bHjeeNw-1
Received: by mail-pj1-f71.google.com with SMTP id
 98e67ed59e1d1-262e5e719eeso2833468a91.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 07 Jul 2023 11:12:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688753563; x=1691345563;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dYp6SX4idj0K2s8mMqxJ4XFt6H9/PBaHUEfz7SiAvZA=;
 b=KZyUcU5rTxwh27sP/Fo8Ea01QlOMuWaKOR5+aN4Y1rXbJwWfq6KCwHK3CYy5Ri4MFh
 EsklOLe39/DtiWq2KrDonMweYOL48poz9tLxDh4nTyxwCaIY/jMlKZLPKlPyv1pf00P/
 hx3igoEEwA71YIPORpNMnkAt0hxCiruihuhGpEedBmi5LezVSjoIP/CY25zJmQnsdkJe
 qymCsJ/ZFf3mXxNAjD1n1n1N/jFX/CDVyVyUixzsM3AEPIS0w9d9mpfwKCtCm0MdYg5M
 4cJoLs+9TZxqUecl38JSHeQZU0zFrrBaPkQhwBt5BllRsXWJDflSs0iv9MFaPaRaZE2h
 4+DA==
X-Gm-Message-State: ABy/qLZYFam4UtN0snztw/Ogi/Bjc9wCP51JLJ75VBm0N1zX7xvYsAdw
 o4zTZ8zdjHy/TTU6JrLNPXuxU94rZ33bbWptap61cNRFVznetWBHH7nwYsNmQ9CyfSLsEUgKxiE
 NC1UWri5K/HMfavdwTJciPnHz7Nsw4zmKP8xr/EDkhmUjP8FTvW0=
X-Received: by 2002:a17:90a:bd01:b0:262:b229:7e45 with SMTP id
 y1-20020a17090abd0100b00262b2297e45mr4613493pjr.11.1688753563139; 
 Fri, 07 Jul 2023 11:12:43 -0700 (PDT)
X-Google-Smtp-Source: APBJJlG6u68dTynLKu27IgkCmRz2kNSu4UGaUBT2IU6X1iGZYQeExxypGVXNQUOEHGzK3cyz6ytMfUjBA5GoKXPvaz8=
X-Received: by 2002:a17:90a:bd01:b0:262:b229:7e45 with SMTP id
 y1-20020a17090abd0100b00262b2297e45mr4613468pjr.11.1688753562822; Fri, 07 Jul
 2023 11:12:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230628104852.3391651-1-dhowells@redhat.com>
 <20230628104852.3391651-3-dhowells@redhat.com>
 <ZKg/J3OG3kQ9ynSO@fedora>
 <CAB=+i9Qbi7+o90Cd_ecd1TeaAYnWPcO-gNp7kzc95Pxecy0XTw@mail.gmail.com>
In-Reply-To: <CAB=+i9Qbi7+o90Cd_ecd1TeaAYnWPcO-gNp7kzc95Pxecy0XTw@mail.gmail.com>
From: David Wysochanski <dwysocha@redhat.com>
Date: Fri, 7 Jul 2023 14:12:06 -0400
Message-ID: <CALF+zO=nGdoxcT-ya3aaUCBi-4iKPo3kZyzcWYCKMCf4n2wVbA@mail.gmail.com>
To: Hyeonggon Yoo <42.hyeyoo@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, Jul 7, 2023 at 12:46 PM Hyeonggon Yoo <42.hyeyoo@gmail.com>
    wrote: > > On Sat, Jul 8, 2023 at 1:39 AM Hyeonggon Yoo <42.hyeyoo@gmail.com>
    wrote: > > > > On Wed, Jun 28, 2023 at 11:48:52AM [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qHpwp-000qOS-Ne
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

T24gRnJpLCBKdWwgNywgMjAyMyBhdCAxMjo0NuKAr1BNIEh5ZW9uZ2dvbiBZb28gPDQyLmh5ZXlv
b0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gU2F0LCBKdWwgOCwgMjAyMyBhdCAxOjM54oCvQU0g
SHllb25nZ29uIFlvbyA8NDIuaHlleW9vQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gV2Vk
LCBKdW4gMjgsIDIwMjMgYXQgMTE6NDg6NTJBTSArMDEwMCwgRGF2aWQgSG93ZWxscyB3cm90ZToK
PiA+ID4gRnNjYWNoZSBoYXMgYW4gb3B0aW1pc2F0aW9uIGJ5IHdoaWNoIHJlYWRzIGZyb20gdGhl
IGNhY2hlIGFyZSBza2lwcGVkIHVudGlsCj4gPiA+IHdlIGtub3cgdGhhdCAoYSkgdGhlcmUncyBk
YXRhIHRoZXJlIHRvIGJlIHJlYWQgYW5kIChiKSB0aGF0IGRhdGEgaXNuJ3QKPiA+ID4gZW50aXJl
bHkgY292ZXJlZCBieSBwYWdlcyByZXNpZGVudCBpbiB0aGUgbmV0ZnMgcGFnZWNhY2hlLiAgVGhp
cyBpcyBkb25lCj4gPiA+IHdpdGggdHdvIGZsYWdzIG1hbmlwdWxhdGVkIGJ5IGZzY2FjaGVfbm90
ZV9wYWdlX3JlbGVhc2UoKToKPiA+ID4KPiA+ID4gICAgICAgaWYgKC4uLgo+ID4gPiAgICAgICAg
ICAgdGVzdF9iaXQoRlNDQUNIRV9DT09LSUVfSEFWRV9EQVRBLCAmY29va2llLT5mbGFncykgJiYK
PiA+ID4gICAgICAgICAgIHRlc3RfYml0KEZTQ0FDSEVfQ09PS0lFX05PX0RBVEFfVE9fUkVBRCwg
JmNvb2tpZS0+ZmxhZ3MpKQo+ID4gPiAgICAgICAgICAgICAgIGNsZWFyX2JpdChGU0NBQ0hFX0NP
T0tJRV9OT19EQVRBX1RPX1JFQUQsICZjb29raWUtPmZsYWdzKTsKPiA+ID4KPiA+ID4gd2hlcmUg
dGhlIE5PX0RBVEFfVE9fUkVBRCBmbGFnIGNhdXNlcyBjYWNoZWZpbGVzX3ByZXBhcmVfcmVhZCgp
IHRvIGluZGljYXRlCj4gPiA+IHRoYXQgbmV0ZnNsaWIgc2hvdWxkIGRvd25sb2FkIGZyb20gdGhl
IHNlcnZlciBvciBjbGVhciB0aGUgcGFnZSBpbnN0ZWFkLgo+ID4gPgo+ID4gPiBUaGUgZnNjYWNo
ZV9ub3RlX3BhZ2VfcmVsZWFzZSgpIGZ1bmN0aW9uIGlzIGludGVuZGVkIHRvIGJlIGNhbGxlZCBm
cm9tCj4gPiA+IC0+cmVsZWFzZXBhZ2UoKSAtIGJ1dCB0aGF0IG9ubHkgZ2V0cyBjYWxsZWQgaWYg
UEdfcHJpdmF0ZSBvciBQR19wcml2YXRlXzIKPiA+ID4gaXMgc2V0IC0gYW5kIGN1cnJlbnRseSB0
aGUgZm9ybWVyIGlzIGF0IHRoZSBkaXNjcmV0aW9uIG9mIHRoZSBuZXR3b3JrCj4gPiA+IGZpbGVz
eXN0ZW0gYW5kIHRoZSBsYXR0ZXIgaXMgb25seSBzZXQgd2hpbHN0IGEgcGFnZSBpcyBiZWluZyB3
cml0dGVuIHRvIHRoZQo+ID4gPiBjYWNoZSwgc28gc29tZXRpbWVzIHdlIG1pc3MgY2xlYXJpbmcg
dGhlIG9wdGltaXNhdGlvbi4KPiA+ID4KPiA+ID4gRml4IHRoaXMgYnkgZm9sbG93aW5nIFdpbGx5
J3Mgc3VnZ2VzdGlvblsxXSBhbmQgYWRkaW5nIGFuIGFkZHJlc3Nfc3BhY2UKPiA+ID4gZmxhZywg
QVNfUkVMRUFTRV9BTFdBWVMsIHRoYXQgY2F1c2VzIGZpbGVtYXBfcmVsZWFzZV9mb2xpbygpIHRv
IGFsd2F5cyBjYWxsCj4gPiA+IC0+cmVsZWFzZV9mb2xpbygpIGlmIGl0J3Mgc2V0LCBldmVuIGlm
IFBHX3ByaXZhdGUgb3IgUEdfcHJpdmF0ZV8yIGFyZW4ndAo+ID4gPiBzZXQuCj4gPiA+Cj4gPiA+
IE5vdGUgdGhhdCB0aGlzIHdvdWxkIHJlcXVpcmUgZm9saW9fdGVzdF9wcml2YXRlKCkgYW5kIHBh
Z2VfaGFzX3ByaXZhdGUoKSB0bwo+ID4gPiBiZWNvbWUgbW9yZSBjb21wbGljYXRlZC4gIFRvIGF2
b2lkIHRoYXQsIGluIHRoZSBwbGFjZXNbKl0gd2hlcmUgdGhlc2UgYXJlCj4gPiA+IHVzZWQgdG8g
Y29uZGl0aW9uYWxpc2UgY2FsbHMgdG8gZmlsZW1hcF9yZWxlYXNlX2ZvbGlvKCkgYW5kCj4gPiA+
IHRyeV90b19yZWxlYXNlX3BhZ2UoKSwgdGhlIHRlc3RzIGFyZSByZW1vdmVkIHRoZSB0aG9zZSBm
dW5jdGlvbnMganVzdAo+ID4gPiBqdW1wZWQgdG8gdW5jb25kaXRpb25hbGx5IGFuZCB0aGUgdGVz
dCBpcyBwZXJmb3JtZWQgdGhlcmUuCj4gPiA+Cj4gPiA+IFsqXSBUaGVyZSBhcmUgc29tZSBleGNl
cHRpb25zIGluIHZtc2Nhbi5jIHdoZXJlIHRoZSBjaGVjayBndWFyZHMgbW9yZSB0aGFuCj4gPiA+
IGp1c3QgYSBjYWxsIHRvIHRoZSByZWxlYXNlci4gIEkndmUgYWRkZWQgYSBmdW5jdGlvbiwgZm9s
aW9fbmVlZHNfcmVsZWFzZSgpCj4gPiA+IHRvIHdyYXAgYWxsIHRoZSBjaGVja3MgZm9yIHRoYXQu
Cj4gPiA+Cj4gPiA+IEFTX1JFTEVBU0VfQUxXQVlTIHNob3VsZCBiZSBzZXQgaWYgYSBub24tTlVM
TCBjb29raWUgaXMgb2J0YWluZWQgZnJvbQo+ID4gPiBmc2NhY2hlIGFuZCBjbGVhcmVkIGluIC0+
ZXZpY3RfaW5vZGUoKSBiZWZvcmUgdHJ1bmNhdGVfaW5vZGVfcGFnZXNfZmluYWwoKQo+ID4gPiBp
cyBjYWxsZWQuCj4gPiA+Cj4gPiA+IEFkZGl0aW9uYWxseSwgdGhlIEZTQ0FDSEVfQ09PS0lFX05P
X0RBVEFfVE9fUkVBRCBmbGFnIG5lZWRzIHRvIGJlIGNsZWFyZWQKPiA+ID4gYW5kIHRoZSBvcHRp
bWlzYXRpb24gY2FuY2VsbGVkIGlmIGEgY2FjaGVmaWxlcyBvYmplY3QgYWxyZWFkeSBjb250YWlu
cyBkYXRhCj4gPiA+IHdoZW4gd2Ugb3BlbiBpdC4KPiA+ID4KPiA+ID4gRml4ZXM6IDFmNjdlNmQw
YjE4OCAoImZzY2FjaGU6IFByb3ZpZGUgYSBmdW5jdGlvbiB0byBub3RlIHRoZSByZWxlYXNlIG9m
IGEgcGFnZSIpCj4gPiA+IEZpeGVzOiAwNDc0ODdjOTQ3ZTggKCJjYWNoZWZpbGVzOiBJbXBsZW1l
bnQgdGhlIEkvTyByb3V0aW5lcyIpCj4gPiA+IFJlcG9ydGVkLWJ5OiBSb2hpdGggU3VyYWJhdHR1
bGEgPHJvaGl0aHMubXNmdEBnbWFpbC5jb20+Cj4gPiA+IFN1Z2dlc3RlZC1ieTogTWF0dGhldyBX
aWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IERhdmlkIEhv
d2VsbHMgPGRob3dlbGxzQHJlZGhhdC5jb20+Cj4gPgo+ID4gSGkgRGF2aWQsCj4gPgo+ID4gSSB3
YXMgYmlzZWN0aW5nIGEgdXNlLWFmdGVyLWZyZWUgQlVHIG9uIHRoZSBsYXRlc3QgbW0tdW5zdGFi
bGUsCj4gPiB3aGVyZSBIRUFEIGlzIDM0N2UyMDhkZTBlNCAoInJtYXA6IHBhc3MgdGhlIGZvbGlv
IHRvIF9fcGFnZV9jaGVja19hbm9uX3JtYXAoKSIpLgo+ID4KPiA+IEFjY29yZGluZyB0byBteSBi
aXNlY3Rpb24sIHRoaXMgaXMgdGhlIGZpcnN0IGJhZCBjb21taXQuCj4gPiBVc2UtQWZ0ZXItRnJl
ZSBpcyB0cmlnZ2VyZWQgb24gcmVjbGFtYXRpb24gcGF0aCB3aGVuIHN3YXAgaXMgZW5hYmxlZC4K
Pgo+IFRoaXMgd2FzIG9yaWdpbmFsbHkgb2NjdXJyZWQgZHVyaW5nIGtlcm5lbCBjb21waWxhdGlv
biBidXQKPiBjYW4gZWFzaWx5IGJlIHJlcHJvZHVjZWQgdmlhOgo+Cj4gc3RyZXNzLW5nIC0tYmln
aGVhcCAkKG5wcm9jKQo+Cj4gPiAoYW5kIGNvdWxkbid0IHRyaWdnZXIgd2l0aG91dCBzd2FwIGVu
YWJsZWQpCj4gPgo+ID4gdGhlIGNvbmZpZywgS0FTQU4gc3BsYXQsIGJpc2VjdCBsb2cgYXJlIGF0
dGFjaGVkLgo+ID4gaG9wZSB0aGlzIGlzbid0IHRvbyBsYXRlIDooCj4gPgo+ID4gPiBjYzogTWF0
dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+Cj4gPiA+IGNjOiBMaW51cyBUb3J2YWxk
cyA8dG9ydmFsZHNAbGludXgtZm91bmRhdGlvbi5vcmc+Cj4gPiA+IGNjOiBTdGV2ZSBGcmVuY2gg
PHNmcmVuY2hAc2FtYmEub3JnPgo+ID4gPiBjYzogU2h5YW0gUHJhc2FkIE4gPG5zcG1hbmdhbG9y
ZUBnbWFpbC5jb20+Cj4gPiA+IGNjOiBSb2hpdGggU3VyYWJhdHR1bGEgPHJvaGl0aHMubXNmdEBn
bWFpbC5jb20+Cj4gPiA+IGNjOiBEYXZlIFd5c29jaGFuc2tpIDxkd3lzb2NoYUByZWRoYXQuY29t
Pgo+ID4gPiBjYzogRG9taW5pcXVlIE1hcnRpbmV0IDxhc21hZGV1c0Bjb2Rld3JlY2sub3JnPgo+
ID4gPiBjYzogSWx5YSBEcnlvbW92IDxpZHJ5b21vdkBnbWFpbC5jb20+Cj4gPiA+IGNjOiBsaW51
eC1jYWNoZWZzQHJlZGhhdC5jb20KPiA+ID4gY2M6IGxpbnV4LWNpZnNAdmdlci5rZXJuZWwub3Jn
Cj4gPiA+IGNjOiBsaW51eC1hZnNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiBjYzogdjlmcy1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gPiA+IGNjOiBjZXBoLWRldmVsQHZnZXIu
a2VybmVsLm9yZwo+ID4gPiBjYzogbGludXgtbmZzQHZnZXIua2VybmVsLm9yZwo+ID4gPiBjYzog
bGludXgtZnNkZXZlbEB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gY2M6IGxpbnV4LW1tQGt2YWNrLm9y
Zwo+ID4gPiAtLS0KPiA+ID4KPiA+ID4gTm90ZXM6Cj4gPiA+ICAgICB2ZXIgIzcpCj4gPiA+ICAg
ICAgLSBNYWtlIE5GUyBzZXQgQVNfUkVMRUFTRV9BTFdBWVMuCj4gPiA+Cj4gPiA+ICAgICB2ZXIg
IzQpCj4gPiA+ICAgICAgLSBTcGxpdCBvdXQgbWVyZ2luZyBvZiBmb2xpb19oYXNfcHJpdmF0ZSgp
L2ZpbGVtYXBfcmVsZWFzZV9mb2xpbygpIGNhbGwKPiA+ID4gICAgICAgIHBhaXJzIGludG8gYSBw
cmVjZWRpbmcgcGF0Y2guCj4gPiA+ICAgICAgLSBEb24ndCBuZWVkIHRvIGNsZWFyIEFTX1JFTEVB
U0VfQUxXQVlTIGluIC0+ZXZpY3RfaW5vZGUoKS4KPiA+ID4KPiA+ID4gICAgIHZlciAjMykKPiA+
ID4gICAgICAtIEZpeGVkIG1hcHBpbmdfY2xlYXJfcmVsZWFzZV9hbHdheXMoKSB0byB1c2UgY2xl
YXJfYml0KCkgbm90IHNldF9iaXQoKS4KPiA+ID4gICAgICAtIE1vdmVkIGEgJyYmJyB0byB0aGUg
Y29ycmVjdCBsaW5lLgo+ID4gPgo+ID4gPiAgICAgdmVyICMyKQo+ID4gPiAgICAgIC0gUmV3cm90
ZSBlbnRpcmVseSBhY2NvcmRpbmcgdG8gV2lsbHkncyBzdWdnZXN0aW9uWzFdLgo+ID4gPgo+ID4g
PiAgZnMvOXAvY2FjaGUuYyAgICAgICAgICAgfCAgMiArKwo+ID4gPiAgZnMvYWZzL2ludGVybmFs
LmggICAgICAgfCAgMiArKwo+ID4gPiAgZnMvY2FjaGVmaWxlcy9uYW1laS5jICAgfCAgMiArKwo+
ID4gPiAgZnMvY2VwaC9jYWNoZS5jICAgICAgICAgfCAgMiArKwo+ID4gPiAgZnMvbmZzL2ZzY2Fj
aGUuYyAgICAgICAgfCAgMyArKysKPiA+ID4gIGZzL3NtYi9jbGllbnQvZnNjYWNoZS5jIHwgIDIg
KysKPiA+ID4gIGluY2x1ZGUvbGludXgvcGFnZW1hcC5oIHwgMTYgKysrKysrKysrKysrKysrKwo+
ID4gPiAgbW0vaW50ZXJuYWwuaCAgICAgICAgICAgfCAgNSArKysrLQo+ID4gPiAgOCBmaWxlcyBj
aGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgoKSSB0aGluayBteXNlbGYg
LyBEYWlyZSBCeXJuZSBtYXkgaGF2ZSBhbHJlYWR5IHRyYWNrZWQgdGhpcyBkb3duIGFuZCBJCmZv
dW5kIGEgMS1saW5lciB0aGF0IGZpeGVkIGEgc2ltaWxhciBjcmFzaCBpbiBoaXMgZW52aXJvbm1l
bnQuCgpDYW4geW91IHRyeSB0aGlzIHBhdGNoIG9uIHRvcCBhbmQgbGV0IG1lIGtub3cgaWYgaXQg
c3RpbGwgY3Jhc2hlcz8KaHR0cHM6Ly9naXRodWIuY29tL0RhdmVXeXNvY2hhbnNraVJIL2tlcm5l
bC9jb21taXQvOTAyYzk5MGUzMTExMjAxNzlmYTVkZTk5ZDY4MzY0YjI5NDdiNzllYwoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
