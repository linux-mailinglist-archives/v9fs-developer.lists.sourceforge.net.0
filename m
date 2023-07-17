Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D91F7562FF
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Jul 2023 14:44:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qLNam-0002Lt-Vs;
	Mon, 17 Jul 2023 12:44:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dwysocha@redhat.com>) id 1qLNal-0002Lk-UL
 for v9fs-developer@lists.sourceforge.net;
 Mon, 17 Jul 2023 12:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cPBr5P6RMAc5J6eRrRxygG6j4FumvyTiuWHqCKdLMWY=; b=Wn4SeeFopf0gb/sacSfbGh3V//
 N1qVuel7GPpvzHuMNevkRY+Ie6FJFU7bvoNs4fXXNElt6pVmRmYEHPxZffThLrapMEZbLiEvWllJD
 3HTCyr5IgK3XughuvA4QZAVSwTL7Vgmb+J8rKO29qEcFmXJEabxUx0oxpvfxtwDaJE7g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cPBr5P6RMAc5J6eRrRxygG6j4FumvyTiuWHqCKdLMWY=; b=T+8h37fP6UuAvSmr0n63OPrSv/
 YJOYstK3ViR8knmt0O5SZU327TA6FQRXX0DSPLQlPQ53I6qSw6ZshWqoe0d2HK59jLnZJCN6JegHb
 I/tlP7AaUUzVkWWi59pis5GAK8c2vV85WIz0vGZac8yGe+NUgFvzveXOkPO0boKfZf+A=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qLNaf-00AbWo-QP for v9fs-developer@lists.sourceforge.net;
 Mon, 17 Jul 2023 12:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1689597871;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cPBr5P6RMAc5J6eRrRxygG6j4FumvyTiuWHqCKdLMWY=;
 b=aDHpUpmUn/U+cZFS/NefpRRSb+sHvxQXJxmlGtJtfT9kYpi1SEGiRcVdqAKuoWsXQ+J3yN
 LSoyGQ+6G+PCIqzrDNaP6rnwMFAdZxP/CcoksMtBvT0IpfwhU1/dPz93geSjbNrJGxU22n
 LD3HvrL2lEsELaPNBqy+pFZSSxX4HEM=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-368-XwIhIyDDMHOKFdj-s40c7Q-1; Mon, 17 Jul 2023 08:44:30 -0400
X-MC-Unique: XwIhIyDDMHOKFdj-s40c7Q-1
Received: by mail-pj1-f69.google.com with SMTP id
 98e67ed59e1d1-263036d4c9dso1976335a91.2
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 17 Jul 2023 05:44:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689597867; x=1692189867;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cPBr5P6RMAc5J6eRrRxygG6j4FumvyTiuWHqCKdLMWY=;
 b=dW8i7uIvYKWutBMossVXCNdG9yCdnVT7fGzVwI7tu02jOaGNV8M/cYvRlr4KybC3xv
 fBG/jrNYnVoo0bTaK7nwf673vK21HGz+MJQVvAMF+ujhevUs6IH+bXohIDNVubkuVPY/
 bDYRzvDEtAbxiQTl7laqnICmYIDD7FEiJrvO36YhwF59wnQ3THIzqg/Hd2TIZe6TvifA
 sPBbQUz51jIoru9py+09BDhlFSfn287QOk/2j6UHSry5HsWfA22hC1J89MH8Goeq2+8W
 BrOAQ8Pq0cO3aQgUtlhpKYd1KFwmj9Tn9455smKHeB9TkoHrh+LeOI3J7ZaQabA+L3KG
 XIow==
X-Gm-Message-State: ABy/qLawLqvDrux3L8+bjMnk8XlJH4DFmSPphHdYhvcnBi4fB4lb1j7p
 LLXbVL6ppWJ9LmGmv2wVz+TxKR0RErGx2u9O3LuX4PVqo8yHMjDoEnUJq4K/3uJhBQTao3VgBut
 BngSc+APmi76ZGVnxlviiu6EJxetYB+pPsfynmNr+zPIRHpB1C2E=
X-Received: by 2002:a17:90a:5902:b0:263:ea6a:1049 with SMTP id
 k2-20020a17090a590200b00263ea6a1049mr10021670pji.2.1689597867203; 
 Mon, 17 Jul 2023 05:44:27 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHasnKG+SNiDONa+CP1OSdvJTohPXX69WzDE7nIpw5fYJbI1G9ilrC2Cj9qoIe3xkPsQOURqnSvBH8qP+XIJY0=
X-Received: by 2002:a17:90a:5902:b0:263:ea6a:1049 with SMTP id
 k2-20020a17090a590200b00263ea6a1049mr10021649pji.2.1689597866936; Mon, 17 Jul
 2023 05:44:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230628104852.3391651-3-dhowells@redhat.com>
 <202307171548.7ab20146-oliver.sang@intel.com>
In-Reply-To: <202307171548.7ab20146-oliver.sang@intel.com>
From: David Wysochanski <dwysocha@redhat.com>
Date: Mon, 17 Jul 2023 08:43:50 -0400
Message-ID: <CALF+zOm5RuFSkd=KNxh+-vF+2SNsgP7s-WVrwHxVxxLrS6NtxQ@mail.gmail.com>
To: kernel test robot <oliver.sang@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Jul 17, 2023 at 3:35 AM kernel test robot <oliver.sang@intel.com>
    wrote: > > > > Hello, > > kernel test robot noticed "canonical_address#:#[##]"
    on: > > commit: 830503440449014dcf0e4b0b6d905 [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qLNaf-00AbWo-QP
Subject: Re: [V9fs-developer] [PATCH v7 2/2] mm, netfs,
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
Cc: Jeff Layton <jlayton@kernel.org>, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 lkp@intel.com, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-ext4@vger.kernel.org, oe-lkp@lists.linux.dev, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 linux-erofs@lists.ozlabs.org, v9fs@lists.linux.dev,
 samba-technical@lists.samba.org, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCBKdWwgMTcsIDIwMjMgYXQgMzozNeKAr0FNIGtlcm5lbCB0ZXN0IHJvYm90IDxvbGl2
ZXIuc2FuZ0BpbnRlbC5jb20+IHdyb3RlOgo+Cj4KPgo+IEhlbGxvLAo+Cj4ga2VybmVsIHRlc3Qg
cm9ib3Qgbm90aWNlZCAiY2Fub25pY2FsX2FkZHJlc3MjOiNbIyNdIiBvbjoKPgo+IGNvbW1pdDog
ODMwNTAzNDQwNDQ5MDE0ZGNmMGU0YjBiNmQ5MDVhMWIwYjJjOTJhZCAoIltQQVRDSCB2NyAyLzJd
IG1tLCBuZXRmcywgZnNjYWNoZTogU3RvcCByZWFkIG9wdGltaXNhdGlvbiB3aGVuIGZvbGlvIHJl
bW92ZWQgZnJvbSBwYWdlY2FjaGUiKQo+IHVybDogaHR0cHM6Ly9naXRodWIuY29tL2ludGVsLWxh
Yi1sa3AvbGludXgvY29tbWl0cy9EYXZpZC1Ib3dlbGxzL21tLU1lcmdlLWZvbGlvX2hhc19wcml2
YXRlLWZpbGVtYXBfcmVsZWFzZV9mb2xpby1jYWxsLXBhaXJzLzIwMjMwNjI4LTE4NTEwMAo+IGJh
c2U6IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvY2dpdC9saW51eC9rZXJuZWwvZ2l0L2FrcG0vbW0u
Z2l0IG1tLWV2ZXJ5dGhpbmcKPiBwYXRjaCBsaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvMjAyMzA2MjgxMDQ4NTIuMzM5MTY1MS0zLWRob3dlbGxzQHJlZGhhdC5jb20vCj4gcGF0Y2gg
c3ViamVjdDogW1BBVENIIHY3IDIvMl0gbW0sIG5ldGZzLCBmc2NhY2hlOiBTdG9wIHJlYWQgb3B0
aW1pc2F0aW9uIHdoZW4gZm9saW8gcmVtb3ZlZCBmcm9tIHBhZ2VjYWNoZQo+Cj4gaW4gdGVzdGNh
c2U6IHZtLXNjYWxhYmlsaXR5Cj4gdmVyc2lvbjogdm0tc2NhbGFiaWxpdHkteDg2XzY0LTEuMC0w
XzIwMjIwNTE4Cj4gd2l0aCBmb2xsb3dpbmcgcGFyYW1ldGVyczoKPgo+ICAgICAgICAgcnVudGlt
ZTogMzAwCj4gICAgICAgICB0aHBfZW5hYmxlZDogYWx3YXlzCj4gICAgICAgICB0aHBfZGVmcmFn
OiBhbHdheXMKPiAgICAgICAgIG5yX3Rhc2s6IDMyCj4gICAgICAgICBucl9zc2Q6IDEKPiAgICAg
ICAgIHByaW9yaXR5OiAxCj4gICAgICAgICB0ZXN0OiBzd2FwLXctcmFuZAo+ICAgICAgICAgY3B1
ZnJlcV9nb3Zlcm5vcjogcGVyZm9ybWFuY2UKPgo+IHRlc3QtZGVzY3JpcHRpb246IFRoZSBtb3Rp
dmF0aW9uIGJlaGluZCB0aGlzIHN1aXRlIGlzIHRvIGV4ZXJjaXNlIGZ1bmN0aW9ucyBhbmQgcmVn
aW9ucyBvZiB0aGUgbW0vIG9mIHRoZSBMaW51eCBrZXJuZWwgd2hpY2ggYXJlIG9mIGludGVyZXN0
IHRvIHVzLgo+IHRlc3QtdXJsOiBodHRwczovL2dpdC5rZXJuZWwub3JnL2NnaXQvbGludXgva2Vy
bmVsL2dpdC93Zmcvdm0tc2NhbGFiaWxpdHkuZ2l0Lwo+Cj4KPiBjb21waWxlcjogZ2NjLTEyCj4g
dGVzdCBtYWNoaW5lOiAxMjggdGhyZWFkcyAyIHNvY2tldHMgSW50ZWwoUikgWGVvbihSKSBQbGF0
aW51bSA4MzU4IENQVSBAIDIuNjBHSHogKEljZSBMYWtlKSB3aXRoIDEyOEcgbWVtb3J5Cj4KPiAo
cGxlYXNlIHJlZmVyIHRvIGF0dGFjaGVkIGRtZXNnL2ttc2cgZm9yIGVudGlyZSBsb2cvYmFja3Ry
YWNlKQo+Cj4KPgo+IElmIHlvdSBmaXggdGhlIGlzc3VlIGluIGEgc2VwYXJhdGUgcGF0Y2gvY29t
bWl0IChpLmUuIG5vdCBqdXN0IGEgbmV3IHZlcnNpb24gb2YKPiB0aGUgc2FtZSBwYXRjaC9jb21t
aXQpLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWdzCj4gfCBSZXBvcnRlZC1ieToga2VybmVsIHRl
c3Qgcm9ib3QgPG9saXZlci5zYW5nQGludGVsLmNvbT4KPiB8IENsb3NlczogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvb2UtbGtwLzIwMjMwNzE3MTU0OC43YWIyMDE0Ni1vbGl2ZXIuc2FuZ0BpbnRl
bC5jb20KPgoKVGhpcyBoYXMgYWxyZWFkeSBiZWVuIGZpeGVkIHdpdGgKaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYWtwbS9tbS5naXQvY29tbWl0Lz9oPW1t
LWV2ZXJ5dGhpbmcmaWQ9YWYxODU3MzQ3MWRiNWM1YzliOTZlYzk1MjA4YzM0MGFlN2MwMGU2NAoK
Cj4KPiBbICAgNDUuODk4NzIwXVsgVDE0NTNdCj4gWyAgIDQ1LjkwNzQ4MF1bIFQxNDUzXSAyMDIz
LTA3LTE2IDAwOjM2OjA3ICAuL2Nhc2Utc3dhcC13LXJhbmQKPiBbICAgNDUuOTA3NDgxXVsgVDE0
NTNdCj4gWyAgIDQ1LjkxNzg3M11bIFQxNDUzXSAyMDIzLTA3LTE2IDAwOjM2OjA3ICAuL3VzZW1l
bSAtLXJ1bnRpbWUgMzAwIC1uIDMyIC0tcmFuZG9tIDgwNDgxNDI0MzIKPiBbICAgNDUuOTE3ODc2
XVsgVDE0NTNdCj4gWyAgIDQ3LjM0ODYzMl1bICBUOTczXSBnZW5lcmFsIHByb3RlY3Rpb24gZmF1
bHQsIHByb2JhYmx5IGZvciBub24tY2Fub25pY2FsIGFkZHJlc3MgMHhmOGZmMTEwMDIwNzc3OGU2
OiAwMDAwIFsjMV0gU01QIE5PUFRJCj4gWyAgIDQ3LjM1OTc4N11bICBUOTczXSBDUFU6IDEyMyBQ
SUQ6IDk3MyBDb21tOiBrc3dhcGQxIFRhaW50ZWQ6IEcgUyAgICAgICAgICAgICAgICAgNi40LjAt
cmM0LTAwNTMzLWc4MzA1MDM0NDA0NDkgIzMKPiBbICAgNDcuMzcwMzAxXVsgIFQ5NzNdIEhhcmR3
YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIE01MENZUDJTQjFVL001MENZUDJTQjFVLCBCSU9T
IFNFNUM2MjAuODZCLjAxLjAxLjAwMDMuMjEwNDI2MDEyNCAwNC8yNi8yMDIxCj4gWyA0Ny4zODIy
MDFdWyBUOTczXSBSSVA6IDAwMTA6ZmlsZW1hcF9yZWxlYXNlX2ZvbGlvIChrYnVpbGQvc3JjL3g4
Nl82NC9tbS9maWxlbWFwLmM6NDA2MyAoZGlzY3JpbWluYXRvciAxKSkKPiBbIDQ3LjM4ODE3Ml1b
IFQ5NzNdIENvZGU6IDAwIDQ4IDhiIDA3IDQ4IDhiIDU3IDE4IDgzIGUwIDAxIDc0IDRmIDQ4IGY3
IDA3IDAwIDYwIDAwIDAwIDc0IDIyIDQ4IDhiIDA3IGY2IGM0IDgwIDc1IDMyIDQ4IDg1IGQyIDc0
IDM0IDQ4IDhiIDgyIDkwIDAwIDAwIDAwIDw0OD4gOGIgNDAgNDggNDggODUgYzAgNzQgMjQgZmYg
ZTAgY2MgNjYgOTAgNDggODUgZDIgNzQgMTUgNDggOGIgOGEKPiBBbGwgY29kZQo+ID09PT09PT09
Cj4gICAgMDogICAwMCA0OCA4YiAgICAgICAgICAgICAgICBhZGQgICAgJWNsLC0weDc1KCVyYXgp
Cj4gICAgMzogICAwNyAgICAgICAgICAgICAgICAgICAgICAoYmFkKQo+ICAgIDQ6ICAgNDggOGIg
NTcgMTggICAgICAgICAgICAgbW92ICAgIDB4MTgoJXJkaSksJXJkeAo+ICAgIDg6ICAgODMgZTAg
MDEgICAgICAgICAgICAgICAgYW5kICAgICQweDEsJWVheAo+ICAgIGI6ICAgNzQgNGYgICAgICAg
ICAgICAgICAgICAgamUgICAgIDB4NWMKPiAgICBkOiAgIDQ4IGY3IDA3IDAwIDYwIDAwIDAwICAg
IHRlc3RxICAkMHg2MDAwLCglcmRpKQo+ICAgMTQ6ICAgNzQgMjIgICAgICAgICAgICAgICAgICAg
amUgICAgIDB4MzgKPiAgIDE2OiAgIDQ4IDhiIDA3ICAgICAgICAgICAgICAgIG1vdiAgICAoJXJk
aSksJXJheAo+ICAgMTk6ICAgZjYgYzQgODAgICAgICAgICAgICAgICAgdGVzdCAgICQweDgwLCVh
aAo+ICAgMWM6ICAgNzUgMzIgICAgICAgICAgICAgICAgICAgam5lICAgIDB4NTAKPiAgIDFlOiAg
IDQ4IDg1IGQyICAgICAgICAgICAgICAgIHRlc3QgICAlcmR4LCVyZHgKPiAgIDIxOiAgIDc0IDM0
ICAgICAgICAgICAgICAgICAgIGplICAgICAweDU3Cj4gICAyMzogICA0OCA4YiA4MiA5MCAwMCAw
MCAwMCAgICBtb3YgICAgMHg5MCglcmR4KSwlcmF4Cj4gICAyYToqICA0OCA4YiA0MCA0OCAgICAg
ICAgICAgICBtb3YgICAgMHg0OCglcmF4KSwlcmF4ICAgICAgICAgIDwtLSB0cmFwcGluZyBpbnN0
cnVjdGlvbgo+ICAgMmU6ICAgNDggODUgYzAgICAgICAgICAgICAgICAgdGVzdCAgICVyYXgsJXJh
eAo+ICAgMzE6ICAgNzQgMjQgICAgICAgICAgICAgICAgICAgamUgICAgIDB4NTcKPiAgIDMzOiAg
IGZmIGUwICAgICAgICAgICAgICAgICAgIGptcHEgICAqJXJheAo+ICAgMzU6ICAgY2MgICAgICAg
ICAgICAgICAgICAgICAgaW50Mwo+ICAgMzY6ICAgNjYgOTAgICAgICAgICAgICAgICAgICAgeGNo
ZyAgICVheCwlYXgKPiAgIDM4OiAgIDQ4IDg1IGQyICAgICAgICAgICAgICAgIHRlc3QgICAlcmR4
LCVyZHgKPiAgIDNiOiAgIDc0IDE1ICAgICAgICAgICAgICAgICAgIGplICAgICAweDUyCj4gICAz
ZDogICA0OCAgICAgICAgICAgICAgICAgICAgICByZXguVwo+ICAgM2U6ICAgOGIgICAgICAgICAg
ICAgICAgICAgICAgLmJ5dGUgMHg4Ygo+ICAgM2Y6ICAgOGEgICAgICAgICAgICAgICAgICAgICAg
LmJ5dGUgMHg4YQo+Cj4gQ29kZSBzdGFydGluZyB3aXRoIHRoZSBmYXVsdGluZyBpbnN0cnVjdGlv
bgo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiAgICAwOiAg
IDQ4IDhiIDQwIDQ4ICAgICAgICAgICAgIG1vdiAgICAweDQ4KCVyYXgpLCVyYXgKPiAgICA0OiAg
IDQ4IDg1IGMwICAgICAgICAgICAgICAgIHRlc3QgICAlcmF4LCVyYXgKPiAgICA3OiAgIDc0IDI0
ICAgICAgICAgICAgICAgICAgIGplICAgICAweDJkCj4gICAgOTogICBmZiBlMCAgICAgICAgICAg
ICAgICAgICBqbXBxICAgKiVyYXgKPiAgICBiOiAgIGNjICAgICAgICAgICAgICAgICAgICAgIGlu
dDMKPiAgICBjOiAgIDY2IDkwICAgICAgICAgICAgICAgICAgIHhjaGcgICAlYXgsJWF4Cj4gICAg
ZTogICA0OCA4NSBkMiAgICAgICAgICAgICAgICB0ZXN0ICAgJXJkeCwlcmR4Cj4gICAxMTogICA3
NCAxNSAgICAgICAgICAgICAgICAgICBqZSAgICAgMHgyOAo+ICAgMTM6ICAgNDggICAgICAgICAg
ICAgICAgICAgICAgcmV4LlcKPiAgIDE0OiAgIDhiICAgICAgICAgICAgICAgICAgICAgIC5ieXRl
IDB4OGIKPiAgIDE1OiAgIDhhICAgICAgICAgICAgICAgICAgICAgIC5ieXRlIDB4OGEKPiBbICAg
NDcuNDA4MTAzXVsgIFQ5NzNdIFJTUDogMDAxODpmZmEwMDAwMDA5NGY3YjI4IEVGTEFHUzogMDAw
MTAyNDYKPiBbICAgNDcuNDE0MjY2XVsgIFQ5NzNdIFJBWDogZjhmZjExMDAyMDc3Nzg5ZSBSQlg6
IGZmYTAwMDAwMDk0ZjdjMDggUkNYOiA5OGZmMTEwMDIwNzc3ODk4Cj4gWyAgIDQ3LjQyMjMzN11b
ICBUOTczXSBSRFg6IGZmMTEwMDIwNzc3ODhmNzEgUlNJOiAwMDAwMDAwMDAwMDAwY2MwIFJESTog
ZmZkNDAwMDA0Mjg3MGQwMAo+IFsgICA0Ny40MzA0MTddWyAgVDk3M10gUkJQOiBmZmEwMDAwMDA5
NGY3Yjk4IFIwODogZmYxMTAwMDFiYTEwNjMwMCBSMDk6IDAwMDAwMDAwMDAwMDAwMjgKPiBbICAg
NDcuNDM4NDk3XVsgIFQ5NzNdIFIxMDogZmYxMTAwMTA4NDZiZDA4MCBSMTE6IGZmMTEwMDIwN2Zm
ZDQwMDAgUjEyOiBmZmQ0MDAwMDQyODcwZDAwCj4gWyAgIDQ3LjQ0NjU3NV1bICBUOTczXSBSMTM6
IGZmYTAwMDAwMDk0ZjdlMTAgUjE0OiBmZmEwMDAwMDA5NGY3YzFjIFIxNTogZmZkNDAwMDA0Mjg3
MGQwOAo+IFsgICA0Ny40NTQ2NThdWyAgVDk3M10gRlM6ICAwMDAwMDAwMDAwMDAwMDAwKDAwMDAp
IEdTOmZmMTEwMDIwMDQ2YzAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+IFsgICA0
Ny40NjM3MDNdWyAgVDk3M10gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAw
MDA4MDA1MDAzMwo+IFsgICA0Ny40NzA0MDZdWyAgVDk3M10gQ1IyOiAwMDAwN2ZkZGNhZjMwOGY4
IENSMzogMDAwMDAwMDFlMWE4MjAwMyBDUjQ6IDAwMDAwMDAwMDA3NzFlZTAKPiBbICAgNDcuNDc4
NDk2XVsgIFQ5NzNdIERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAg
RFIyOiAwMDAwMDAwMDAwMDAwMDAwCj4gWyAgIDQ3LjQ4NjU5NF1bICBUOTczXSBEUjM6IDAwMDAw
MDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUwZmYwIERSNzogMDAwMDAwMDAwMDAwMDQwMAo+
IFsgICA0Ny40OTQ2OTZdWyAgVDk3M10gUEtSVTogNTU1NTU1NTQKPiBbICAgNDcuNDk4MzcyXVsg
IFQ5NzNdIENhbGwgVHJhY2U6Cj4gWyAgIDQ3LjUwMTc5NV1bICBUOTczXSAgPFRBU0s+Cj4gWyA0
Ny41MDQ4NzBdWyBUOTczXSA/IGRpZV9hZGRyIChrYnVpbGQvc3JjL3g4Nl82NC9hcmNoL3g4Ni9r
ZXJuZWwvZHVtcHN0YWNrLmM6NDIxIGtidWlsZC9zcmMveDg2XzY0L2FyY2gveDg2L2tlcm5lbC9k
dW1wc3RhY2suYzo0NjApCj4gWyA0Ny41MDkxNTNdWyBUOTczXSA/IGV4Y19nZW5lcmFsX3Byb3Rl
Y3Rpb24gKGtidWlsZC9zcmMveDg2XzY0L2FyY2gveDg2L2tlcm5lbC90cmFwcy5jOjc4MyBrYnVp
bGQvc3JjL3g4Nl82NC9hcmNoL3g4Ni9rZXJuZWwvdHJhcHMuYzo3MjgpCj4gWyA0Ny41MTQ4MjZd
WyBUOTczXSA/IGFzbV9leGNfZ2VuZXJhbF9wcm90ZWN0aW9uIChrYnVpbGQvc3JjL3g4Nl82NC9h
cmNoL3g4Ni9pbmNsdWRlL2FzbS9pZHRlbnRyeS5oOjU2NCkKPiBbIDQ3LjUyMDY3OV1bIFQ5NzNd
ID8gZmlsZW1hcF9yZWxlYXNlX2ZvbGlvIChrYnVpbGQvc3JjL3g4Nl82NC9tbS9maWxlbWFwLmM6
NDA2MyAoZGlzY3JpbWluYXRvciAxKSkKPgo+Cj4gVG8gcmVwcm9kdWNlOgo+Cj4gICAgICAgICBn
aXQgY2xvbmUgaHR0cHM6Ly9naXRodWIuY29tL2ludGVsL2xrcC10ZXN0cy5naXQKPiAgICAgICAg
IGNkIGxrcC10ZXN0cwo+ICAgICAgICAgc3VkbyBiaW4vbGtwIGluc3RhbGwgam9iLnlhbWwgICAg
ICAgICAgICMgam9iIGZpbGUgaXMgYXR0YWNoZWQgaW4gdGhpcyBlbWFpbAo+ICAgICAgICAgYmlu
L2xrcCBzcGxpdC1qb2IgLS1jb21wYXRpYmxlIGpvYi55YW1sICMgZ2VuZXJhdGUgdGhlIHlhbWwg
ZmlsZSBmb3IgbGtwIHJ1bgo+ICAgICAgICAgc3VkbyBiaW4vbGtwIHJ1biBnZW5lcmF0ZWQteWFt
bC1maWxlCj4KPiAgICAgICAgICMgaWYgY29tZSBhY3Jvc3MgYW55IGZhaWx1cmUgdGhhdCBibG9j
a3MgdGhlIHRlc3QsCj4gICAgICAgICAjIHBsZWFzZSByZW1vdmUgfi8ubGtwIGFuZCAvbGtwIGRp
ciB0byBydW4gZnJvbSBhIGNsZWFuIHN0YXRlLgo+Cj4KPgo+IC0tCj4gMC1EQVkgQ0kgS2VybmVs
IFRlc3QgU2VydmljZQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC9sa3AtdGVzdHMvd2lraQo+
Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
