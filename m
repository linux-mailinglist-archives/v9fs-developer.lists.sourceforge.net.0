Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9B252C410
	for <lists+v9fs-developer@lfdr.de>; Wed, 18 May 2022 22:22:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nrQBd-00033p-Rh; Wed, 18 May 2022 20:22:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <keescook@chromium.org>) id 1nrQBc-00033j-4a
 for v9fs-developer@lists.sourceforge.net; Wed, 18 May 2022 20:22:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MgCA3HhvCAXdmpcrypetaNA0L9iEcnT799fYDKq1FeY=; b=kRWrLYwhaGIZHVZVVFnvf4KDQX
 6ou7kMmINXccTrOhg5ZxYUBZS9JmoTMmN0sfuCfsEKv2w3xQlA0OH8SaAxzYtGaynHdq3rUlfS1r4
 RHb6fVatdid1K321q6jF5zllHfdkdRWjR05op84gBYasZdKBXZobKJ0BDN+UGdQLh0+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MgCA3HhvCAXdmpcrypetaNA0L9iEcnT799fYDKq1FeY=; b=T
 oUo2+B8pg192R+BhLQEgUZaNadwInDZdCxphkRskAzII3QuL8tm/yXqtVvnX0qPJSMF2GXry1WqMB
 4eZ9IItYdWN38YivcafI2t2SliIKtHTcdGXTLrrPd5MzTHz4N2zFC4pn3PAuR/5sOhJ05iag/KF8R
 2Qyj3ssIuocL9cwE=;
Received: from mail-pj1-f42.google.com ([209.85.216.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nrQBa-007RRP-1Y
 for v9fs-developer@lists.sourceforge.net; Wed, 18 May 2022 20:22:23 +0000
Received: by mail-pj1-f42.google.com with SMTP id
 nr2-20020a17090b240200b001df2b1bfc40so6676205pjb.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 18 May 2022 13:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MgCA3HhvCAXdmpcrypetaNA0L9iEcnT799fYDKq1FeY=;
 b=eUyPQoUqfSD8xsDhA/B0vZLSwHoojYBvJnnLjVlugAxl3OcR1hp5mtTsL6x0DgAzjf
 ewwSD6kN9Pz8wGhV7maiFqWQ+njNzpaPjLGOjIl9tm8a5xMbSz1Eo1CnoLqJu+qkhpOE
 wQfEGMkesuPusTPpvsODQ3YOnyZkYPHvJPUu4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MgCA3HhvCAXdmpcrypetaNA0L9iEcnT799fYDKq1FeY=;
 b=O5fUg/0G64vCKkK9OB0tDWEexAb/RqRT3+351XdE+WlJMkDrXkMJsKmRyZpT+Pxrwh
 txUMoeVxFKrdVUSPMgPaSMo1swFLyvpYwjV5JgCTgW32er1MfiKzYAA1EkWz4iHVrkHZ
 UndSsHZ3tJMolSrFiix+cphTZmI5m1wmSjn0PDAiNuNpbzZd6Pvkn4zXpkdnkkIMHDvf
 J3DAraDuzCXvnCaK9jv4yuGttBbkz7EIb1PWhTJ96oLk/DriagoBLLXj4Zi90mczrXp8
 tQzSWpiFFo6mTV6vm4JrmT7nix3wR3OaZCaJi2Ab4uDtqCKNoiQnC708ZcLK/g9pmUZg
 JOjg==
X-Gm-Message-State: AOAM530pNs5zDv0Kk/U4N9xGARHILFchArsOpQJ2ZvP7kxv4iodNK4dN
 /B/2huLfDwUUlgskDVjCajkXWg==
X-Google-Smtp-Source: ABdhPJznrLPyYbV5bbR8+4C6C1cVQu0Yq1fBrFhg67MPULK6ma0ssZNbmRiDeip1c6RHqNbq54OS2w==
X-Received: by 2002:a17:90b:4c48:b0:1dc:a631:e353 with SMTP id
 np8-20020a17090b4c4800b001dca631e353mr1217248pjb.218.1652905336439; 
 Wed, 18 May 2022 13:22:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 a18-20020a170902ecd200b0015e8d4eb1b6sm10837plh.0.2022.05.18.13.22.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 May 2022 13:22:16 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Jeff Layton <jlayton@kernel.org>,
	David Howells <dhowells@redhat.com>
Date: Wed, 18 May 2022 13:22:12 -0700
Message-Id: <20220518202212.2322058-1-keescook@chromium.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7332; h=from:subject;
 bh=qJGxhml2rFK2BJJgAS/PiywVQK/xYAr077qKmK7SVGo=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBihVVzlUQF9SKJKoYvrOpMzfZ8CGJau/PDLX18DAD6
 bCJQ1zqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYoVVcwAKCRCJcvTf3G3AJlOGD/
 9kStftzMAF20n6V/iNDvJkfn96gEB/daLj6GWvY57giVsimoJCLOI4v+zZOus/nBPo0qEEbNZgjvma
 gr49UkgcThdX7m8bzkZUdifBScyaaOSYgXSuwSBJsyfMeHQutcw8IuCSomLejuLb8temYWMOzs9Bvb
 37J2FabV8XTmGRTVfMrtgpVio7W2ZlNc7X+j8u1UiSUgYfsLG3Xj4qZdXsVBBUZFOtYnIqd8lvYfDT
 qFhL1MY8PURQAmrQOLZ7P72DJo76E5OR5CaSvUU/7NS/wZ38ojRUZ6/5vxwUODS9CLbJS6UlnyK2Gq
 p18x4qwXVfW79GTyCDTSX3unMTIkonUQbvOe4HG6LbINLtv84zpDaRHGasJfUisifaz+7s2gx2MzIC
 ENd4cRmetR/pHomBvpa0v8peH9TiigpTEMS6x0seW87HoedV6wL3QO/vQhQ35h5iD4ytOA6dow4dQM
 qddyT1tV8P1h902HdPf6uzMR+SoCQJaYDRkiJuJTwqeL/Hc9L0Gv4DqT9YVkCsBUy39/3kn7KIhRWg
 cQDqgCrf/fgX8qvQo+mBN64MiWcQIZZqeMEYFuMLqBvqtzmjXeBRH/cm5DF5PhRNzkMcnbvUpHg+Wm
 vWqs0Zb1xlTfnJaSA6VMpeXxoq9bRLehaMLryh9eQbe8PbcxQLPJsU7VFGaw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: While randstruct was satisfied with using an open-coded "void
 *" offset cast for the netfs_i_context <-> inode casting,
 __builtin_object_size()
 as used by FORTIFY_SOURCE was not as easily fooled. Swit [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.42 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nrQBa-007RRP-1Y
Subject: [V9fs-developer] [PATCH v2] netfs: Use container_of() for offset
 casting
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-cifs@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Jonathan Corbet <corbet@lwn.net>,
 Eric Van Hensbergen <ericvh@gmail.com>, samba-technical@lists.samba.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Steve French <sfrench@samba.org>,
 William Kucharski <william.kucharski@oracle.com>, ceph-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

V2hpbGUgcmFuZHN0cnVjdCB3YXMgc2F0aXNmaWVkIHdpdGggdXNpbmcgYW4gb3Blbi1jb2RlZCAi
dm9pZCAqIiBvZmZzZXQKY2FzdCBmb3IgdGhlIG5ldGZzX2lfY29udGV4dCA8LT4gaW5vZGUgY2Fz
dGluZywgX19idWlsdGluX29iamVjdF9zaXplKCkKYXMgdXNlZCBieSBGT1JUSUZZX1NPVVJDRSB3
YXMgbm90IGFzIGVhc2lseSBmb29sZWQuIFN3aXRjaCB0byB1c2luZwphbiBpbnRlcm5hbGx5IGRl
ZmluZWQgbmV0ZnNfaV9jb250ZXh0L2lub2RlIHN0cnVjdCBmb3IgZG9pbmcgYSBmdWxsCmNvbnRh
aW5lcl9vZigpIGNhc3RpbmcuIFRoaXMga2VlcHMgYm90aCByYW5kc3RydWN0IGFuZCBfX2Jvcygp
IGhhcHB5CnVuZGVyIEdDQyAxMi4gU2lsZW5jZXM6CgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9p
bmNsdWRlL2xpbnV4L3N0cmluZy5oOjI1MywKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVk
ZS9saW51eC9jZXBoL2NlcGhfZGVidWcuaDo3LAogICAgICAgICAgICAgICAgIGZyb20gZnMvY2Vw
aC9pbm9kZS5jOjI6CkluIGZ1bmN0aW9uIOKAmGZvcnRpZnlfbWVtc2V0X2Noa+KAmSwKICAgIGlu
bGluZWQgZnJvbSDigJhuZXRmc19pX2NvbnRleHRfaW5pdOKAmSBhdCAuL2luY2x1ZGUvbGludXgv
bmV0ZnMuaDozMjY6MiwKICAgIGlubGluZWQgZnJvbSDigJhjZXBoX2FsbG9jX2lub2Rl4oCZIGF0
IGZzL2NlcGgvaW5vZGUuYzo0NjM6MjoKLi9pbmNsdWRlL2xpbnV4L2ZvcnRpZnktc3RyaW5nLmg6
MjQyOjI1OiB3YXJuaW5nOiBjYWxsIHRvIOKAmF9fd3JpdGVfb3ZlcmZsb3dfZmllbGTigJkgZGVj
bGFyZWQgd2l0aCBhdHRyaWJ1dGUgd2FybmluZzoKZGV0ZWN0ZWQgd3JpdGUgYmV5b25kIHNpemUg
b2YgZmllbGQgKDFzdCBwYXJhbWV0ZXIpOyBtYXliZSB1c2Ugc3RydWN0X2dyb3VwKCk/IFstV2F0
dHJpYnV0ZS13YXJuaW5nXQogIDI0MiB8ICAgICAgICAgICAgICAgICAgICAgICAgIF9fd3JpdGVf
b3ZlcmZsb3dfZmllbGQocF9zaXplX2ZpZWxkLCBzaXplKTsKICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KClJl
cG9ydGVkLWJ5OiBKZWZmIExheXRvbiA8amxheXRvbkBrZXJuZWwub3JnPgpMaW5rOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9sa21sL2QyYWQzYTNkN2JkZDc5NGM2ZWZiNTYyZDJmMmI2NTVmYjY3
NzU2YjkuY2FtZWxAa2VybmVsLm9yZwpDYzogSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVsLm9y
Zz4KQ2M6IERhdmlkIEhvd2VsbHMgPGRob3dlbGxzQHJlZGhhdC5jb20+ClNpZ25lZC1vZmYtYnk6
IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgotLS0KdjE6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xrbWwvMjAyMjA1MTcyMTAyMzAuODY0MjM5LTEta2Vlc2Nvb2tAY2hyb21pdW0u
b3JnCnYyOgogLSBBZGQgbWFjcm8gZm9yIGtlZXBpbmcgYWxsIG5ldGZzIHVzZXJzIG9uIHRoZSBz
YW1lIHBhZ2UKIC0gVXBkYXRlIGRvY3VtZW50YXRpb24gYW5kIGVhY2ggbmV0ZnMgdXNlcgotLS0K
IERvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvbmV0ZnNfbGlicmFyeS5yc3QgfCAxMiArKysrLS0t
LS0tCiBmcy85cC92OWZzLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDcgKyst
LS0tCiBmcy9hZnMvaW50ZXJuYWwuaCAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDcgKy0t
LS0tCiBmcy9jZXBoL3N1cGVyLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDcgKyst
LS0tCiBmcy9jaWZzL2NpZnNnbG9iLmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDcgKyst
LS0tCiBpbmNsdWRlL2xpbnV4L25ldGZzLmggICAgICAgICAgICAgICAgICAgICAgIHwgMjYgKysr
KysrKysrKysrKysrKysrKy0tCiA2IGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDMw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvbmV0
ZnNfbGlicmFyeS5yc3QgYi9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL25ldGZzX2xpYnJhcnku
cnN0CmluZGV4IDY5ZjAwMTc5ZmRmZS4uODAyNGQ0NDI4MzNlIDEwMDY0NAotLS0gYS9Eb2N1bWVu
dGF0aW9uL2ZpbGVzeXN0ZW1zL25ldGZzX2xpYnJhcnkucnN0CisrKyBiL0RvY3VtZW50YXRpb24v
ZmlsZXN5c3RlbXMvbmV0ZnNfbGlicmFyeS5yc3QKQEAgLTQzLDE1ICs0MywxMyBAQCBzdHJ1Y3R1
cmUgaXMgZGVmaW5lZDo6CiAJfTsKIAogQSBuZXR3b3JrIGZpbGVzeXN0ZW0gdGhhdCB3YW50cyB0
byB1c2UgbmV0ZnMgbGliIG11c3QgcGxhY2Ugb25lIG9mIHRoZXNlCi1kaXJlY3RseSBhZnRlciB0
aGUgVkZTIGBgc3RydWN0IGlub2RlYGAgaXQgYWxsb2NhdGVzLCB1c3VhbGx5IGFzIHBhcnQgb2Yg
aXRzCi1vd24gc3RydWN0LiAgVGhpcyBjYW4gYmUgZG9uZSBpbiBhIHdheSBzaW1pbGFyIHRvIHRo
ZSBmb2xsb3dpbmc6OgorZGlyZWN0bHkgYWZ0ZXIgdGhlIFZGUyBgYHN0cnVjdCBpbm9kZWBgIGl0
IGFsbG9jYXRlcywgZWl0aGVyIGJ5IHVzaW5nCitgYHN0cnVjdCBuZXRmc19pX2NfcGFpcmBgIG9y
IGJ5IHVzaW5nIHRoZSBgYERFQ0xBUkVfTkVURlNfSU5PREUoKWBgIGhlbHBlciwKK3doaWNoIGFy
cmFuZ2VzIGBgc3RydWN0IGlub2RlYGAgYW5kIGBgc3RydWN0IG5ldGZzX2lfY29udGV4dGBgIHRv
Z2V0aGVyCit3aXRob3V0IGEgc3RydWN0IG5hbWVzcGFjZTo6CiAKIAlzdHJ1Y3QgbXlfaW5vZGUg
ewotCQlzdHJ1Y3QgewotCQkJLyogVGhlc2UgbXVzdCBiZSBjb250aWd1b3VzICovCi0JCQlzdHJ1
Y3QgaW5vZGUJCXZmc19pbm9kZTsKLQkJCXN0cnVjdCBuZXRmc19pX2NvbnRleHQgIG5ldGZzX2N0
eDsKLQkJfTsKKwkJREVDTEFSRV9ORVRGU19JTk9ERSh2ZnNfaW5vZGUsIG5ldGZzX2N0eCk7CiAJ
CS4uLgogCX07CiAKZGlmZiAtLWdpdCBhL2ZzLzlwL3Y5ZnMuaCBiL2ZzLzlwL3Y5ZnMuaAppbmRl
eCBlYzBlOGRmM2IyZWIuLjU5NWFkZDY4N2FjNiAxMDA2NDQKLS0tIGEvZnMvOXAvdjlmcy5oCisr
KyBiL2ZzLzlwL3Y5ZnMuaApAQCAtMTA5LDExICsxMDksOCBAQCBzdHJ1Y3Qgdjlmc19zZXNzaW9u
X2luZm8gewogI2RlZmluZSBWOUZTX0lOT19JTlZBTElEX0FUVFIgMHgwMQogCiBzdHJ1Y3Qgdjlm
c19pbm9kZSB7Ci0Jc3RydWN0IHsKLQkJLyogVGhlc2UgbXVzdCBiZSBjb250aWd1b3VzICovCi0J
CXN0cnVjdCBpbm9kZQl2ZnNfaW5vZGU7CS8qIHRoZSBWRlMncyBpbm9kZSByZWNvcmQgKi8KLQkJ
c3RydWN0IG5ldGZzX2lfY29udGV4dCBuZXRmc19jdHg7IC8qIE5ldGZzbGliIGNvbnRleHQgKi8K
LQl9OworCS8qIHRoZSBWRlMncyBpbm9kZSByZWNvcmQgYW5kIHRoZSBOZXRmc2xpYiBjb250ZXh0
ICovCisJREVDTEFSRV9ORVRGU19JTk9ERSh2ZnNfaW5vZGUsIG5ldGZzX2N0eCk7CiAJc3RydWN0
IHA5X3FpZCBxaWQ7CiAJdW5zaWduZWQgaW50IGNhY2hlX3ZhbGlkaXR5OwogCXN0cnVjdCBwOV9m
aWQgKndyaXRlYmFja19maWQ7CmRpZmYgLS1naXQgYS9mcy9hZnMvaW50ZXJuYWwuaCBiL2ZzL2Fm
cy9pbnRlcm5hbC5oCmluZGV4IDdiN2VmOTQ1ZGM3OC4uZTJjYjk0MTk2ODI4IDEwMDY0NAotLS0g
YS9mcy9hZnMvaW50ZXJuYWwuaAorKysgYi9mcy9hZnMvaW50ZXJuYWwuaApAQCAtNjE5LDEyICs2
MTksNyBAQCBlbnVtIGFmc19sb2NrX3N0YXRlIHsKICAqIGxlYWsgZnJvbSBvbmUgaW5vZGUgdG8g
YW5vdGhlci4KICAqLwogc3RydWN0IGFmc192bm9kZSB7Ci0Jc3RydWN0IHsKLQkJLyogVGhlc2Ug
bXVzdCBiZSBjb250aWd1b3VzICovCi0JCXN0cnVjdCBpbm9kZQl2ZnNfaW5vZGU7CS8qIHRoZSBW
RlMncyBpbm9kZSByZWNvcmQgKi8KLQkJc3RydWN0IG5ldGZzX2lfY29udGV4dCBuZXRmc19jdHg7
IC8qIE5ldGZzbGliIGNvbnRleHQgKi8KLQl9OwotCisJREVDTEFSRV9ORVRGU19JTk9ERSh2ZnNf
aW5vZGUsIG5ldGZzX2N0eCk7IC8qIFZGUyBpbm9kZSBhbmQgTmV0ZnNsaWIgY29udGV4dCAqLwog
CXN0cnVjdCBhZnNfdm9sdW1lCSp2b2x1bWU7CS8qIHZvbHVtZSBvbiB3aGljaCB2bm9kZSByZXNp
ZGVzICovCiAJc3RydWN0IGFmc19maWQJCWZpZDsJCS8qIHRoZSBmaWxlIGlkZW50aWZpZXIgZm9y
IHRoaXMgaW5vZGUgKi8KIAlzdHJ1Y3QgYWZzX2ZpbGVfc3RhdHVzCXN0YXR1czsJCS8qIEFGUyBz
dGF0dXMgaW5mbyBmb3IgdGhpcyBmaWxlICovCmRpZmYgLS1naXQgYS9mcy9jZXBoL3N1cGVyLmgg
Yi9mcy9jZXBoL3N1cGVyLmgKaW5kZXggMjBjZWFiNzRlODcxLi43YzM2NjIzYmI0MmMgMTAwNjQ0
Ci0tLSBhL2ZzL2NlcGgvc3VwZXIuaAorKysgYi9mcy9jZXBoL3N1cGVyLmgKQEAgLTMxNiwxMSAr
MzE2LDggQEAgc3RydWN0IGNlcGhfaW5vZGVfeGF0dHJzX2luZm8gewogICogQ2VwaCBpbm9kZS4K
ICAqLwogc3RydWN0IGNlcGhfaW5vZGVfaW5mbyB7Ci0Jc3RydWN0IHsKLQkJLyogVGhlc2UgbXVz
dCBiZSBjb250aWd1b3VzICovCi0JCXN0cnVjdCBpbm9kZSB2ZnNfaW5vZGU7Ci0JCXN0cnVjdCBu
ZXRmc19pX2NvbnRleHQgbmV0ZnNfY3R4OyAvKiBOZXRmc2xpYiBjb250ZXh0ICovCi0JfTsKKwkv
KiB0aGUgVkZTJ3MgaW5vZGUgcmVjb3JkIGFuZCB0aGUgTmV0ZnNsaWIgY29udGV4dCAqLworCURF
Q0xBUkVfTkVURlNfSU5PREUodmZzX2lub2RlLCBuZXRmc19jdHgpOwogCXN0cnVjdCBjZXBoX3Zp
bm8gaV92aW5vOyAgIC8qIGNlcGggaW5vICsgc25hcCAqLwogCiAJc3BpbmxvY2tfdCBpX2NlcGhf
bG9jazsKZGlmZiAtLWdpdCBhL2ZzL2NpZnMvY2lmc2dsb2IuaCBiL2ZzL2NpZnMvY2lmc2dsb2Iu
aAppbmRleCA4ZGU5NzdjMzU5YjEuLjRhMzZkYWQ5OWUzMiAxMDA2NDQKLS0tIGEvZnMvY2lmcy9j
aWZzZ2xvYi5oCisrKyBiL2ZzL2NpZnMvY2lmc2dsb2IuaApAQCAtMTQwNSwxMSArMTQwNSw4IEBA
IHZvaWQgY2lmc0ZpbGVJbmZvX3B1dChzdHJ1Y3QgY2lmc0ZpbGVJbmZvICpjaWZzX2ZpbGUpOwog
ICovCiAKIHN0cnVjdCBjaWZzSW5vZGVJbmZvIHsKLQlzdHJ1Y3QgewotCQkvKiBUaGVzZSBtdXN0
IGJlIGNvbnRpZ3VvdXMgKi8KLQkJc3RydWN0IGlub2RlCXZmc19pbm9kZTsJLyogdGhlIFZGUydz
IGlub2RlIHJlY29yZCAqLwotCQlzdHJ1Y3QgbmV0ZnNfaV9jb250ZXh0IG5ldGZzX2N0eDsgLyog
TmV0ZnNsaWIgY29udGV4dCAqLwotCX07CisJLyogdGhlIFZGUydzIGlub2RlIHJlY29yZCBhbmQg
dGhlIE5ldGZzbGliIGNvbnRleHQgKi8KKwlERUNMQVJFX05FVEZTX0lOT0RFKHZmc19pbm9kZSwg
bmV0ZnNfY3R4KTsKIAlib29sIGNhbl9jYWNoZV9icmxja3M7CiAJc3RydWN0IGxpc3RfaGVhZCBs
bGlzdDsJLyogbG9ja3MgaGVsYiBieSB0aGlzIGlub2RlICovCiAJLyoKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvbmV0ZnMuaCBiL2luY2x1ZGUvbGludXgvbmV0ZnMuaAppbmRleCAwYzMzYjcx
NWNiZmQuLjdmYWNiMTFjOWFjNyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9uZXRmcy5oCisr
KyBiL2luY2x1ZGUvbGludXgvbmV0ZnMuaApAQCAtMjg2LDYgKzI4NiwyOCBAQCBleHRlcm4gdm9p
ZCBuZXRmc19wdXRfc3VicmVxdWVzdChzdHJ1Y3QgbmV0ZnNfaW9fc3VicmVxdWVzdCAqc3VicmVx
LAogCQkJCSBib29sIHdhc19hc3luYywgZW51bSBuZXRmc19zcmVxX3JlZl90cmFjZSB3aGF0KTsK
IGV4dGVybiB2b2lkIG5ldGZzX3N0YXRzX3Nob3coc3RydWN0IHNlcV9maWxlICopOwogCisvKgor
ICogVGhlIHN0cnVjdCBuZXRmc19pX2NvbnRleHQgaW5zdGFuY2UgbXVzdCBhbHdheXMgZm9sbG93
IHRoZSBWRlMgaW5vZGUsIHNvCisgKiBzdHJ1Y3QgbmV0ZnNfaV9jX3BhaXIgZW5mb3JjZXMgdGhp
cy4gSG93ZXZlciwgbmV0ZnMgdXNlcnMgbWF5IHdhbnQgdG8KKyAqIGF2b2lkIGEgc3ViLXN0cnVj
dCBuYW1lc3BhY2UsIHNvIHRoZXkgY2FuIGFsdGVybmF0aXZlbHkgdXNlIHRoZQorICogREVDTEFS
RV9ORVRGU19JTk9ERSBtYWNybyB0byBwcm92aWRlIGFuIGFub255bW91cyB1bmlvbi9zdHJ1Y3Qg
d3JhcHBlciwKKyAqIGFsbG93aW5nIG5ldGZzIGludGVybmFscyB0byBzdGlsbCBjb3JyZWN0bHkg
dXNlIGNvbnRhaW5lcl9vZigpIGFnYWluc3QKKyAqIHRoZSBzdHJ1Y3QgbmV0ZnNfaV9jX3BhaXIg
Zm9yIGNhc3RpbmcgYmV0d2VlbiB2ZnNfaW5vZGUgYW5kIG5ldGZzX2N0eC4KKyAqLworc3RydWN0
IG5ldGZzX2lfY19wYWlyIHsKKwlzdHJ1Y3QgaW5vZGUJCXZmc19pbm9kZTsKKwlzdHJ1Y3QgbmV0
ZnNfaV9jb250ZXh0CW5ldGZzX2N0eDsKK307CisKKyNkZWZpbmUgREVDTEFSRV9ORVRGU19JTk9E
RShfaW5vZGUsIF9jdHgpCQkJXAorCXVuaW9uIHsJCQkJCQkJXAorCQlzdHJ1Y3QgewkJCQkJXAor
CQkJc3RydWN0IGlub2RlCQlfaW5vZGU7CQlcCisJCQlzdHJ1Y3QgbmV0ZnNfaV9jb250ZXh0CV9j
dHg7CQlcCisJCX07CQkJCQkJXAorCQlzdHJ1Y3QgbmV0ZnNfaV9jX3BhaXIJCW5ldGZzX2lub2Rl
OwlcCisJfQorCiAvKioKICAqIG5ldGZzX2lfY29udGV4dCAtIEdldCB0aGUgbmV0ZnMgaW5vZGUg
Y29udGV4dCBmcm9tIHRoZSBpbm9kZQogICogQGlub2RlOiBUaGUgaW5vZGUgdG8gcXVlcnkKQEAg
LTI5NSw3ICszMTcsNyBAQCBleHRlcm4gdm9pZCBuZXRmc19zdGF0c19zaG93KHN0cnVjdCBzZXFf
ZmlsZSAqKTsKICAqLwogc3RhdGljIGlubGluZSBzdHJ1Y3QgbmV0ZnNfaV9jb250ZXh0ICpuZXRm
c19pX2NvbnRleHQoc3RydWN0IGlub2RlICppbm9kZSkKIHsKLQlyZXR1cm4gKHZvaWQgKilpbm9k
ZSArIHNpemVvZigqaW5vZGUpOworCXJldHVybiAmY29udGFpbmVyX29mKGlub2RlLCBzdHJ1Y3Qg
bmV0ZnNfaV9jX3BhaXIsIHZmc19pbm9kZSktPm5ldGZzX2N0eDsKIH0KIAogLyoqCkBAIC0zMDcs
NyArMzI5LDcgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgbmV0ZnNfaV9jb250ZXh0ICpuZXRmc19p
X2NvbnRleHQoc3RydWN0IGlub2RlICppbm9kZSkKICAqLwogc3RhdGljIGlubGluZSBzdHJ1Y3Qg
aW5vZGUgKm5ldGZzX2lub2RlKHN0cnVjdCBuZXRmc19pX2NvbnRleHQgKmN0eCkKIHsKLQlyZXR1
cm4gKHZvaWQgKiljdHggLSBzaXplb2Yoc3RydWN0IGlub2RlKTsKKwlyZXR1cm4gJmNvbnRhaW5l
cl9vZihjdHgsIHN0cnVjdCBuZXRmc19pX2NfcGFpciwgbmV0ZnNfY3R4KS0+dmZzX2lub2RlOwog
fQogCiAvKioKLS0gCjIuMzIuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
