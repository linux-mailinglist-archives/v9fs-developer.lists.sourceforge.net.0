Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 993D56C2711
	for <lists+v9fs-developer@lfdr.de>; Tue, 21 Mar 2023 02:12:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1peQYM-0006BV-AI;
	Tue, 21 Mar 2023 01:12:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1peQYL-0006BO-I1
 for v9fs-developer@lists.sourceforge.net;
 Tue, 21 Mar 2023 01:12:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SGVoWyoGs6zpi27lMBwJ27qLVxT0drgNa819/hyvuwQ=; b=gBfn2Av4gzC+s7PXD4sszdTx4F
 eXV5Jw2l+T0tzRuhOI6E+Z4rmxnpQ33o5PLW4ZHVa4UzfKFMVxJVQ2hdqITrce+Em4eJfBhiVw1Qv
 zbJ2LVC2wCnp+zvNVN2wS/4ILt0L37EJd2p4w8c5Ctygp30ymH71M1Rdxf4YqEsegg0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SGVoWyoGs6zpi27lMBwJ27qLVxT0drgNa819/hyvuwQ=; b=iydLd5OBB7IKb636/pVOa7lwfu
 xNoKnNw3zdTQ5eelluNd366gc+b1NI/j5lcU3+zdZbG+ueOuoI3IR1R0mN6vTMc5RG2ncgX8mbnk7
 a66GW4CwzdNZlqZvx/lz9HV3Zt+bu5IF0jz41pVIS2b8ZSEmfWHey3G2R3uH8VPU3sL8=;
Received: from mail-yb1-f175.google.com ([209.85.219.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1peQYI-0005pD-0w for v9fs-developer@lists.sourceforge.net;
 Tue, 21 Mar 2023 01:12:42 +0000
Received: by mail-yb1-f175.google.com with SMTP id e71so15436221ybc.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 20 Mar 2023 18:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679361152;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SGVoWyoGs6zpi27lMBwJ27qLVxT0drgNa819/hyvuwQ=;
 b=mb9NRATqXjQ2NCT9Xar10bn1AEXHXfBkPeH1XVYozCHUfNsXZSd7i6BdWw92hpGW8u
 XKXmYR2aAgTaSgPuK6VQvmzXkPECWS0HKIM+wBGS8vQlusT0BQ3715+15S77oF8bana3
 ZqsTPp28qnDJ+bmmTbejtbZ4jPdx3MXhZvi0JLCT+JdCRWSMe+HBqHVaOkaae+Iz9aN6
 0Ig7oQIxFgTuROm1wBHBz8rw1i32aN1XKmrzpItuUQcu2z9z5sa2wfJNBXbXOkRQaugM
 K0on78/1X1IopekrdDcumzEMbkSiQncLZZNo7LJsnWGeRP/myf7UkhzKpdXmoyV9GvVn
 59VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679361152;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SGVoWyoGs6zpi27lMBwJ27qLVxT0drgNa819/hyvuwQ=;
 b=tCJoiEcsqkuXpUBbSO1KvufeQGPHt1UasDzVvuCbyRJDHYO2rHSdcF5+a1r6rmRN27
 jF98eMrOZBzGWhaPfGVzqLHWBiZRFNiGz+QcfU3j8kK7Ky/VzFlAbBUHgGQ+D5Qc9L3M
 1UKQLR+Qo9wT56asc02m961aFA2sx973bbhVgTN7SbfzE4q9JBzgGzPKY3A956mazhgO
 0n+As5vmkq8e49Z0aH+aNojxNRTBtQTYSwmOQfcrMICINjS3Rwtf0KYnEzRFBxANJC8q
 2QO+1ygSa4HkFbKQk7Iag07K0X77bk9W8LgIetGWaroGbM+hKKwHOeJIop7/NHliSNOp
 UQNQ==
X-Gm-Message-State: AAQBX9dLbOdCxtauUPE1mj8LE7D+dLCnM+MgxpYhMEJjk2bCvM5oDKrC
 5RG9O8FcnEsuZZu7k97wEt3RZt/mdPLZXOvJtTg=
X-Google-Smtp-Source: AKy350bcU8c2Bu4z9cQ9CFpsAnxnxfLJc11yO2y6d4hSwUmsDc3BfIQpsHVT693GW6oXavGLgMj9qEA5LfZtpdW5cjM=
X-Received: by 2002:a05:6902:283:b0:aa2:475c:2982 with SMTP id
 v3-20020a056902028300b00aa2475c2982mr273731ybh.1.1679361151889; Mon, 20 Mar
 2023 18:12:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org> <Y/Ch8o/6HVS8Iyeh@codewreck.org>
 <Y/DBZSaAsRiNR2WV@codewreck.org>
In-Reply-To: <Y/DBZSaAsRiNR2WV@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 20 Mar 2023 20:12:20 -0500
Message-ID: <CAFkjPT=6PdhbtkMbotKpCwaP535-YHRqrzo4Z83=vfau2UVHBg@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I chased my tail on this for like the last month - but I
 finally
 found the problem with fscache and it was related to one of the other problems
 you pointed out - but I got distracted by a dozen red he [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.175 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1peQYI-0005pD-0w
Subject: Re: [V9fs-developer] [PATCH v4 10/11] fs/9p: writeback mode fixes
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSBjaGFzZWQgbXkgdGFpbCBvbiB0aGlzIGZvciBsaWtlIHRoZSBsYXN0IG1vbnRoIC0gYnV0IEkg
ZmluYWxseSBmb3VuZAp0aGUgcHJvYmxlbSB3aXRoIGZzY2FjaGUgYW5kIGl0IHdhcyByZWxhdGVk
IHRvIG9uZSBvZiB0aGUgb3RoZXIKcHJvYmxlbXMgeW91IHBvaW50ZWQgb3V0IC0gYnV0IEkgZ290
IGRpc3RyYWN0ZWQgYnkgYSBkb3plbiByZWQKaGVycmluZ3MgKHdoaWNoIGFyZSBwcm9iYWJseSBi
dWdzIGluIGZzY2FjaGUsIGJ1dCBub3QgY2F1c2VkIGJ5IG15CnBhdGNoKSAtLSBpbiBhbnkgY2Fz
ZSwgaXQgdHVybnMgb3V0IHRoZSBhc3NlcnQgaW4gZnNjYWNoZSBpcyBkdWUgdG8gYW4KaW1iYWxh
bmNlIGluIHVudXNlX2Nvb2tpZSAtLSBhbmQgaXRzIGJlY2F1c2UgZGlydHlfZm9saW8gY2FsbHMK
dXNlX2Nvb2tpZSB1bmRlciB0aGUgaG9vZCBhbmQgZnNjYWNoZV91bnBpbl93cml0ZWJhY2sgaXMg
dGhlIGJhbGFuY2UKYW5kIGl0IGNhbGxzIHVudXNlIGNvb2tpZSB1bmRlciB0aGUgaG9vZC4gIEJl
Y2F1c2UgdGhlcmUgd2FzIG5vIGZpZCwKd2Ugd2VyZSBlcnJvcmluZyBvdXQgYW5kIG5ldmVyIGJh
bGFuY2luZyAtIGFuZCBpdCBnZXRzIGNhdWdodCB3aGVuIHdlCmNsb3NlIHRoaW5ncyBkb3duLgoK
U2Vjb25kYXJpbHksIEknbSBub3Qgc3VyZSB3dGYgd2Ugd2VyZSBkb2luZyBpbiB3cml0ZV9pbm9k
ZSAtLQpldmVyeWJvZHkgZWxzZSBqdXN0IGNhbGxzIGZzY2FjaGVfdW5waW5fd3JpdGViYWNrIGFu
ZCBub3RoaW5nIGVsc2UuClRoZSB3aG9sZSBmc3luYyBzdHVmZiBhcHBlYXJzIHRvIGJlIHVubmVj
ZXNzYXJ5IGNvZGUgLS0gd2hpY2ggbWVhbnMgd2UKZG9uJ3QgbmVlZCBhIGZpZCAoY2VydGFpbmx5
IG5vdCBhbiBvcGVuIGZpZCkgc28gSSBqdXN0IHJlbW92ZWQgdGhhdApjb2RlLCBjYWxsZWQgdW5w
aW5fd3JpdGViYWNrIGFuZCBhbGwgbXkgdGVzdHMgcGFzcyB3aXRoIGZzY2FjaGUuICBJJ20KZ29p
bmcgdG8gcnVuIGEgbG9uZ2VyIHN1aXRlIG9mIHRlc3RzIGp1c3QgdG8gbWFrZSBzdXJlIEkgZGlk
bid0CmFjY2lkZW50bHkgcGVydHVyYiBhbnl0aGluZyBlbHNlLCBidXQgdGhlbiBJJ2xsIGNvbnNv
bGlkYXRlLCBjbGVhbi11cAphbmQgcmVwb3N0IHRoZSBwYXRjaGVzLgoKICAgICAgLWVyaWMKCgoK
T24gU2F0LCBGZWIgMTgsIDIwMjMgYXQgNjoxNuKAr0FNIDxhc21hZGV1c0Bjb2Rld3JlY2sub3Jn
PiB3cm90ZToKPgo+IGFzbWFkZXVzQGNvZGV3cmVjay5vcmcgd3JvdGUgb24gU2F0LCBGZWIgMTgs
IDIwMjMgYXQgMDc6MDE6MjJQTSArMDkwMDoKPiA+ID4gZGlmZiAtLWdpdCBhL2ZzLzlwL3Zmc19z
dXBlci5jIGIvZnMvOXAvdmZzX3N1cGVyLmMKPiA+ID4gaW5kZXggNWZjNmE5NDViZmZmLi43OTdm
NzE3ZTFhOTEgMTAwNjQ0Cj4gPiA+IC0tLSBhL2ZzLzlwL3Zmc19zdXBlci5jCj4gPiA+ICsrKyBi
L2ZzLzlwL3Zmc19zdXBlci5jCj4gPgo+ID4gPiBAQCAtMzIzLDE2ICszMjcsMTcgQEAgc3RhdGlj
IGludCB2OWZzX3dyaXRlX2lub2RlX2RvdGwoc3RydWN0IGlub2RlICppbm9kZSwKPiA+ID4gICAg
ICAqLwo+ID4gPiAgICAgdjlpbm9kZSA9IFY5RlNfSShpbm9kZSk7Cj4gPiA+ICAgICBwOV9kZWJ1
ZyhQOV9ERUJVR19WRlMsICIlczogaW5vZGUgJXAsIHdyaXRlYmFja19maWQgJXBcbiIsCj4gPiA+
IC0gICAgICAgICAgICBfX2Z1bmNfXywgaW5vZGUsIHY5aW5vZGUtPndyaXRlYmFja19maWQpOwo+
ID4gPiAtICAgaWYgKCF2OWlub2RlLT53cml0ZWJhY2tfZmlkKQo+ID4gPiAtICAgICAgICAgICBy
ZXR1cm4gMDsKPiA+ID4gKyAgICAgICAgICAgIF9fZnVuY19fLCBpbm9kZSwgZmlkKTsKPiA+ID4g
KyAgIGlmICghZmlkKQo+ID4gPiArICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+Cj4gPiBI
bW0sIHdoYXQgaGFwcGVucyBpZiB3ZSByZXR1cm4gRUlOVkFMIGhlcmU/Cj4gPiBNaWdodCB3YW50
IGEgV0FSTl9PTkNFIG9yIHNvbWV0aGluZz8KPgo+IEFuc3dlcmluZyBteXNlbGYgb24gdGhpczog
Tm8gaWRlYSB3aGF0IGhhcHBlbnMsIGJ1dCBpdCdzIGZhaXJseQo+IGNvbW1vbi4uLgo+IChJIHNh
dyBpdCBmcm9tIHdiX3dyaXRlYmFjayB3aGljaCBjb25zaWRlcnMgYW55IG5vbi16ZXJvIHJldHVy
biB2YWx1ZSBhcwo+ICdwcm9ncmVzcycsIHNvIHRoZSBlcnJvciBpcyBwcm9ncmVzcyBhcyB3ZWxs
Li4uIE1pZ2h0IG1ha2UgbW9yZSBzZW5zZSB0bwo+IHJldHVybiAwIGhlcmUgYWN0dWFsbHk/IG5l
ZWQgbW9yZSB0aG9yb3VnaCBjaGVja2luZywgZGlkbid0IHRha2UgdGltZSB0bwo+IGRpZyB0aHJv
dWdoIHRoaXMgZWl0aGVyLi4uKQo+Cj4gVGhhdCBhc2lkZSBJIHJhbiB3aXRoIG15IGNvbW1lbnRz
IGFkZHJlc3NlZCBhbmQgY2FjaGU9ZnNjYWNoZSwgYW5kCj4gdGhpbmdzIGJsZXcgdXAgZHVyaW5n
IC4vY29uZmlndXJlIG9mIGNvcmV1dGlscy05LjEgaW4gcWVtdToKPiAoSSByYW4gaXQgYXMgcm9v
dCB3aXRob3V0IHNldHRpbmcgdGhlIGVudiB2YXIgc28gaXQgZmFpbGVkLCB0aGF0IG11Y2ggaXMK
PiBleHBlY3RlZCAtLSB0aGUgZXZpY3RfaW5vZGUgYmxvd2luZyB1cCBpc24ndCkKPiAtLS0tLS0t
Cj4gY2hlY2tpbmcgd2hldGhlciBta25vZCBjYW4gY3JlYXRlIGZpZm8gd2l0aG91dCByb290IHBy
aXZpbGVnZXMuLi4gY29uZmlndXJlOiBlcnJvcjogaW4gYC9tbnQvY29yZXV0aWxzLTkuMSc6Cj4g
Y29uZmlndXJlOiBlcnJvcjogeW91IHNob3VsZCBub3QgcnVuIGNvbmZpZ3VyZSBhcyByb290IChz
ZXQgRk9SQ0VfVU5TQUZFX0NPTkZJR1VSRT0xIGluIGVudmlyb25tZW50IHRvIGJ5cGFzcyB0aGlz
IGNoZWNrKQo+IFNlZSBgY29uZmlnLmxvZycgZm9yIG1vcmUgZGV0YWlscwo+IEZTLUNhY2hlOgo+
IEZTLUNhY2hlOiBBc3NlcnRpb24gZmFpbGVkCj4gRlMtQ2FjaGU6IDIgPT0gMCBpcyBmYWxzZQo+
IC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+IGtlcm5lbCBCVUcgYXQgZnMv
ZnNjYWNoZS9jb29raWUuYzo5ODUhCj4gaW52YWxpZCBvcGNvZGU6IDAwMDAgWyMzXSBTTVAgUFRJ
Cj4gQ1BVOiAwIFBJRDogOTcwNyBDb21tOiBybSBUYWludGVkOiBHICAgICAgRCAgICAgICAgICAg
IDYuMi4wLXJjMisgIzM3Cj4gSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZY
ICsgUElJWCwgMTk5NiksIEJJT1MgMS4xNi4wLWRlYmlhbi0xLjE2LjAtNSAwNC8wMS8yMDE0Cj4g
UklQOiAwMDEwOl9fZnNjYWNoZV9yZWxpbnF1aXNoX2Nvb2tpZS5jb2xkKzB4NWEvMHg4Zgo+IENv
ZGU6IDQ4IGM3IGM3IDIxIDVlIGI4IDgxIGU4IDM0IDg3IGZmIGZmIDQ4IGM3IGM3IDJmIDVlIGI4
IDgxIGU4IDI4IDg3IGZmIGZmIDQ4IDYzIDczIDA0IDMxIGQyIDQ4IGM3IGM3IDAwIDYxIGI4IDgx
IGU4IDE2IDg3IGZmIGZmIDwwZj4gMGIgNDQgOGIgNDcgMDQgOGIgNGYgMGMgNDUgMGYgYjgKPiBS
U1A6IDAwMTg6ZmZmZmM5MDAwMjY5N2UwOCBFRkxBR1M6IDAwMDEwMjg2Cj4gUkFYOiAwMDAwMDAw
MDAwMDAwMDE5IFJCWDogZmZmZjg4ODAwNzdkZTIxMCBSQ1g6IDAwMDAwMDAwZmZmZmVmZmYKPiBS
RFg6IDAwMDAwMDAwZmZmZmZmZWEgUlNJOiAwMDAwMDAwMGZmZmZlZmZmIFJESTogMDAwMDAwMDAw
MDAwMDAwMQo+IFJCUDogZmZmZmM5MDAwMjY5N2UxOCBSMDg6IDAwMDAwMDAwMDAwMDRmZmIgUjA5
OiAwMDAwMDAwMGZmZmZlZmZmCj4gUjEwOiBmZmZmZmZmZjgyNjRlYTIwIFIxMTogZmZmZmZmZmY4
MjY0ZWEyMCBSMTI6IDAwMDAwMDAwMDAwMDAwMDAKPiBSMTM6IGZmZmZmZmZmYzAwODcwZTAgUjE0
OiBmZmZmODg4MDAzMDhjZDIwIFIxNTogZmZmZjg4ODAwNDZhMDAyMAo+IEZTOiAgMDAwMDdmZWM1
YWEzMzAwMCgwMDAwKSBHUzpmZmZmODg4MDdjYzAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAw
MDAwMDAKPiBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMz
Cj4gQ1IyOiAwMDAwMDAwMDAwOWFmNGQ4IENSMzogMDAwMDAwMDAwNzQ5MDAwMCBDUjQ6IDAwMDAw
MDAwMDAwMDA2YjAKPiBDYWxsIFRyYWNlOgo+ICA8VEFTSz4KPiAgdjlmc19ldmljdF9pbm9kZSsw
eDc4LzB4OTAgWzlwXQo+ICBldmljdCsweGMwLzB4MTYwCj4gIGlwdXQrMHgxNzEvMHgyMjAKPiAg
ZG9fdW5saW5rYXQrMHgxOTcvMHgyODAKPiAgX194NjRfc3lzX3VubGlua2F0KzB4MzcvMHg2MAo+
ICBkb19zeXNjYWxsXzY0KzB4M2MvMHg4MAo+ICBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJh
bWUrMHg2My8weGNkCj4gUklQOiAwMDMzOjB4N2ZlYzVhYjMzZmRiCj4gQ29kZTogNzMgMDEgYzMg
NDggOGIgMGQgNTUgOWUgMGYgMDAgZjcgZDggNjQgODkgMDEgNDggODMgYzggZmYgYzMgNjYgMmUg
MGYgMWYgODQgMDAgMDAgMDAgMDAgMDAgOTAgZjMgMGYgMWUgZmEgYjggMDcgMDEgMDAgMDAgMGYg
MDUgPDQ4PiAzZCAwMSBmMCBmZiBmZiA3MyAwMSBjMyA0OCA4YiAwOAo+IFJTUDogMDAyYjowMDAw
N2ZmZDQ2MGIxODU4IEVGTEFHUzogMDAwMDAyNDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAxMDcK
PiBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwMDAwMDAwOWFmODMwIFJDWDogMDAwMDdm
ZWM1YWIzM2ZkYgo+IFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDA5YWUzZDAg
UkRJOiAwMDAwMDAwMGZmZmZmZjljCj4gUkJQOiAwMDAwMDAwMDAwOWFlMzQwIFIwODogMDAwMDAw
MDAwMDAwMDAwMyBSMDk6IDAwMDAwMDAwMDAwMDAwMDAKPiBSMTA6IDAwMDAwMDAwMDAwMDAwMDAg
UjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjogMDAwMDAwMDAwMDAwMDAwMAo+IFIxMzogMDAwMDdm
ZmQ0NjBiMWE0MCBSMTQ6IDAwMDAwMDAwMDAwMDAwMDAgUjE1OiAwMDAwMDAwMDAwOWFmODMwCj4g
IDwvVEFTSz4KPiBNb2R1bGVzIGxpbmtlZCBpbjogOXBuZXRfdmlydGlvIDlwIDlwbmV0IHNpdyBp
Yl9jb3JlCj4gLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tCj4gUklQOiAwMDEw
Ol9fZnNjYWNoZV9yZWxpbnF1aXNoX2Nvb2tpZS5jb2xkKzB4NWEvMHg4Zgo+IENvZGU6IDQ4IGM3
IGM3IDIxIDVlIGI4IDgxIGU4IDM0IDg3IGZmIGZmIDQ4IGM3IGM3IDJmIDVlIGI4IDgxIGU4IDI4
IDg3IGZmIGZmIDQ4IDYzIDczIDA0IDMxIGQyIDQ4IGM3IGM3IDAwIDYxIGI4IDgxIGU4IDE2IDg3
IGZmIGZmIDwwZj4gMGIgNDQgOGIgNDcgMDQgOGIgNGYgMGMgNDUgMGYgYjgKPiBSU1A6IDAwMTg6
ZmZmZmM5MDAwMjIzN2UwOCBFRkxBR1M6IDAwMDEwMjg2Cj4gUkFYOiAwMDAwMDAwMDAwMDAwMDE5
IFJCWDogZmZmZjg4ODAwNzdkZTlhMCBSQ1g6IDAwMDAwMDAwZmZmZmVmZmYKPiBSRFg6IDAwMDAw
MDAwZmZmZmZmZWEgUlNJOiAwMDAwMDAwMGZmZmZlZmZmIFJESTogMDAwMDAwMDAwMDAwMDAwMQo+
IFJCUDogZmZmZmM5MDAwMjIzN2UxOCBSMDg6IDAwMDAwMDAwMDAwMDRmZmIgUjA5OiAwMDAwMDAw
MGZmZmZlZmZmCj4gUjEwOiBmZmZmZmZmZjgyNjRlYTIwIFIxMTogZmZmZmZmZmY4MjY0ZWEyMCBS
MTI6IDAwMDAwMDAwMDAwMDAwMDAKPiBSMTM6IGZmZmZmZmZmYzAwODcwZTAgUjE0OiBmZmZmODg4
MDAzYTZiNTAwIFIxNTogZmZmZjg4ODAwNDZhMDAyMAo+IEZTOiAgMDAwMDdmZWM1YWEzMzAwMCgw
MDAwKSBHUzpmZmZmODg4MDdjYzAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKPiBD
UzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4gQ1IyOiAw
MDAwMDAwMDAwOWFmNGQ4IENSMzogMDAwMDAwMDAwNzQ5MDAwMCBDUjQ6IDAwMDAwMDAwMDAwMDA2
YjAKPiAuL2NvbmZpZ3VyZTogbGluZSA4ODogIDk3MDcgU2VnbWVudGF0aW9uIGZhdWx0ICAgICAg
ZXhpdCAkMQo+IC0tLS0tLS0tLS0tCj4KPiBJIGRvbid0IGhhdmUgdGltZSB0byBpbnZlc3RpZ2F0
ZSBidXQgSSdtIGFmcmFpZCB0aGlzIG5lZWRzIGEgYml0IG1vcmUKPiB0aW1lIGFzIHdlbGwsIHNv
cnJ5IDovCj4KPgo+Cj4KPgo+Cj4KPgo+Cj4KPiBGb3IgcmVmZXJlbmNlLCBoZXJlJ3MgaG93IEkg
YWRkcmVzc2VkIG15IGNvbW1lbnRzLiBJIGRvbid0IHRoaW5rIHRoYXQncwo+IHJlbGF0ZWQgdG8g
dGhlIHByb2JsZW0gYXQgaGFuZCBidXQgY2FuIHJldHJ5IGxhdGVyIHdpdGhvdXQgaXQgaWYgeW91
Cj4gdGhpbmsgc29tZXRoaW5nJ3MgZmlzaHk6Cj4gLS0tLS0tLS0tCj4gZGlmZiAtLWdpdCBhL2Zz
LzlwL3Zmc19kaXIuYyBiL2ZzLzlwL3Zmc19kaXIuYwo+IGluZGV4IDQ0OTE4YzYwMzU3Zi4uYzE2
YzM5YmE1NWQ2IDEwMDY0NAo+IC0tLSBhL2ZzLzlwL3Zmc19kaXIuYwo+ICsrKyBiL2ZzLzlwL3Zm
c19kaXIuYwo+IEBAIC0yMTUsNyArMjE1LDcgQEAgaW50IHY5ZnNfZGlyX3JlbGVhc2Uoc3RydWN0
IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbHApCj4gICAgICAgICBwOV9kZWJ1ZyhQOV9E
RUJVR19WRlMsICJpbm9kZTogJXAgZmlscDogJXAgZmlkOiAlZFxuIiwKPiAgICAgICAgICAgICAg
ICAgIGlub2RlLCBmaWxwLCBmaWQgPyBmaWQtPmZpZCA6IC0xKTsKPiAgICAgICAgIGlmIChmaWQp
IHsKPiAtICAgICAgICAgICAgICAgaWYgKChmaWQtPnFpZC50eXBlID09IFA5X1FURklMRSkgJiYg
KGZpbHAtPmZfbW9kZSAmIEZNT0RFX1dSSVRFKSkKPiArICAgICAgICAgICAgICAgaWYgKChTX0lT
UkVHKGlub2RlLT5pX21vZGUpKSAmJiAoZmlscC0+Zl9tb2RlICYgRk1PREVfV1JJVEUpKQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIHY5ZnNfZmx1c2hfaW5vZGVfd3JpdGViYWNrKGlub2RlKTsK
Pgo+ICAgICAgICAgICAgICAgICBzcGluX2xvY2soJmlub2RlLT5pX2xvY2spOwo+IGRpZmYgLS1n
aXQgYS9mcy85cC92ZnNfZmlsZS5jIGIvZnMvOXAvdmZzX2ZpbGUuYwo+IGluZGV4IDkzNmRhZmY5
Zjk0OC4uZTMyMmQ0MTk2YmU2IDEwMDY0NAo+IC0tLSBhL2ZzLzlwL3Zmc19maWxlLmMKPiArKysg
Yi9mcy85cC92ZnNfZmlsZS5jCj4gQEAgLTYwLDcgKzYwLDcgQEAgaW50IHY5ZnNfZmlsZV9vcGVu
KHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiBQVFJfRVJSKGZpZCk7Cj4KPiAgICAgICAgICAgICAgICAgaWYgKCh2
OXNlcy0+Y2FjaGUgPj0gQ0FDSEVfV1JJVEVCQUNLKSAmJiAob21vZGUgJiBQOV9PV1JJVEUpKSB7
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgaW50IHdyaXRlYmFja19vbW9kZSA9IChvbW9kZSAm
ICFQOV9PV1JJVEUpIHwgUDlfT1JEV1I7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaW50IHdy
aXRlYmFja19vbW9kZSA9IChvbW9kZSAmIH5QOV9PV1JJVEUpIHwgUDlfT1JEV1I7Cj4KPiAgICAg
ICAgICAgICAgICAgICAgICAgICBwOV9kZWJ1ZyhQOV9ERUJVR19DQUNIRSwgIndyaXRlLW9ubHkg
ZmlsZSB3aXRoIHdyaXRlYmFjayBlbmFibGVkLCB0cnkgb3BlbmluZyBPX1JEV1JcbiIpOwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIGVyciA9IHA5X2NsaWVudF9vcGVuKGZpZCwgd3JpdGViYWNr
X29tb2RlKTsKPiBkaWZmIC0tZ2l0IGEvZnMvOXAvdmZzX2lub2RlLmMgYi9mcy85cC92ZnNfaW5v
ZGUuYwo+IGluZGV4IGQ1MzQ3NWUxYmEyNy4uMDYyYzM0NTI0YjFmIDEwMDY0NAo+IC0tLSBhL2Zz
LzlwL3Zmc19pbm9kZS5jCj4gKysrIGIvZnMvOXAvdmZzX2lub2RlLmMKPiBAQCAtMjMwLDIyICsy
MzAsNyBAQCB2OWZzX2JsYW5rX3dzdGF0KHN0cnVjdCBwOV93c3RhdCAqd3N0YXQpCj4KPiAgaW50
IHY5ZnNfZmx1c2hfaW5vZGVfd3JpdGViYWNrKHN0cnVjdCBpbm9kZSAqaW5vZGUpCj4gIHsKPiAt
ICAgICAgIHN0cnVjdCB3cml0ZWJhY2tfY29udHJvbCB3YmMgPSB7Cj4gLSAgICAgICAgICAgICAg
IC5ucl90b193cml0ZSA9IExPTkdfTUFYLAo+IC0gICAgICAgICAgICAgICAuc3luY19tb2RlID0g
V0JfU1lOQ19BTEwsCj4gLSAgICAgICAgICAgICAgIC5yYW5nZV9zdGFydCA9IDAsCj4gLSAgICAg
ICAgICAgICAgIC5yYW5nZV9lbmQgPSAtMSwKPiAtICAgICAgIH07Cj4gLQo+IC0gICAgICAgaW50
IHJldHZhbCA9IGZpbGVtYXBfZmRhdGF3cml0ZV93YmMoaW5vZGUtPmlfbWFwcGluZywgJndiYyk7
Cj4gLQo+IC0gICAgICAgaWYgKHJldHZhbCAhPSAwKSB7Cj4gLSAgICAgICAgICAgICAgIHA5X2Rl
YnVnKFA5X0RFQlVHX0VSUk9SLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICJ0cnlpbmcgdG8g
Zmx1c2ggaW5vZGUgJXAgZmFpbGVkIHdpdGggZXJyb3IgY29kZSAlZFxuIiwKPiAtICAgICAgICAg
ICAgICAgICAgICAgICBpbm9kZSwgcmV0dmFsKTsKPiAtICAgICAgIH0KPiAtCj4gLSAgICAgICBy
ZXR1cm4gcmV0dmFsOwo+ICsgICAgICAgcmV0dXJuIGZpbGVtYXBfd3JpdGVfYW5kX3dhaXQoaW5v
ZGUtPmlfbWFwcGluZyk7Cj4gIH0KPgo+ICAvKioKPiAtLS0tLS0KPiAtLQo+IERvbWluaXF1ZQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9w
ZXIK
