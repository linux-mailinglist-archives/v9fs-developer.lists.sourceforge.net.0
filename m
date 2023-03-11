Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3562A6B5ED1
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 18:30:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pb33L-000102-F2;
	Sat, 11 Mar 2023 17:30:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <k.kahurani@gmail.com>) id 1pb33J-0000zu-Qm
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 17:30:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uU6dGrt2rIzrhCnJXbaQHOas3xv+F1JDdAfTJ+oW/RQ=; b=HAVXk9rqAWEd3sflBGPyTBWbfd
 8vipDn7tcTozFR3466Kz8qtdsIG0ttpQh0X1AbDwXTy28EfjxIShSynCxbl3C+rHUoTU7KGgOyIj6
 FREoZz3gVf1D+Y/ch/OIR6PbvB7ehAbde5ViL2Z4F7YsUIYLKF5WbnTjWiLYD9jAnjaI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uU6dGrt2rIzrhCnJXbaQHOas3xv+F1JDdAfTJ+oW/RQ=; b=aiKLMEgSwEg2kBBtdWPWFOuEdX
 ou64+u8tfujLjMy0S2cfyrB/hCj5xpKgvSSIQzTqa3/aRkZnaHJtYNVCKkLdvCR17oNZmjJ7BpATT
 7sgSX5Alg+yGZO52M2iSkYbaO9qxlTq898YTs8do2cciMUzSTrvBGnoC404SwywtQ6r4=;
Received: from mail-qk1-f182.google.com ([209.85.222.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pb33K-0003Rj-FX for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 17:30:42 +0000
Received: by mail-qk1-f182.google.com with SMTP id bl39so2999073qkb.10
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Mar 2023 09:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678555836;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uU6dGrt2rIzrhCnJXbaQHOas3xv+F1JDdAfTJ+oW/RQ=;
 b=bvh9trzBAS2l2m1h0HCxqnySScFOuROTEyTiIMTBeF8PQP2OWZqPqWC3cGECLhcwAH
 6anXClkJjl9COgnOAanr4FE3271F1yJqo/9lpTUV6ep6IJQpkiwRWfoU0uoZJCZEqVHi
 ysV2zp6JFgFx+r4XQbRJ435KksJeyyF2JlgJGhe0G5J6XH2E6xs4sYHAMW8XVCqOdMBS
 bW4h09gR02iQfeF+bjjP8LPJqMFDEcHEMWLjSmMSfw+zpO/54/GLaN/qWhXk54lvwbmj
 09Shs0n/oW3/dUfuLdTCzHBKhkqIZZals5Rj5dpXybe/FvZTGTWh3skuEE2aFRyBW20j
 vkxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678555836;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uU6dGrt2rIzrhCnJXbaQHOas3xv+F1JDdAfTJ+oW/RQ=;
 b=2M0Bpe1c+o9k7eEVr9NQp2biIFtLlVX3LSOb8+u7oKuYbbVx+ywE0+YoCSvH+ls1++
 xjz13ivobqAaRysMOdbIZ5Q2dK1M08wbQOBLkEceTPUClOYnuDQQD9D5vVdyMiU+K/E/
 osLTYtustvFmcEaoAaY+Kvp0wtFhbn1B2dcY8F3mlidhPb8h6+gHtBMt9J/B3+Baj/IE
 vDa7b815Y3H9poaR+Xo//ScstfnVCecxGxIArR43LS1U23CX1Osf2wNKVa2RxQrwRdYn
 ldbj5PPAhD669v6Tc5UC4SCMVnHecznCR3gl5jzaJmLuAy4n5bgJ/QJgCI+ZQwitmr9J
 NJMQ==
X-Gm-Message-State: AO0yUKUYwlKbQyGO1TQRfNeqsBWYV7kGxsidNGj1E4UizB/q8Ok4WTX0
 V6OuC7cgVjo3wFAeHpinFqO9xoXwH7hObLr8AKg=
X-Google-Smtp-Source: AK7set+cugWP5zKt6KMIC6m8i+hg8Ut3Qze/upRlJFEFI+Q72RtsBkvvN4MVyja5eqWo2xLoK7aPOAxioOApHIXudEQ=
X-Received: by 2002:a37:64c1:0:b0:72d:4b50:f156 with SMTP id
 y184-20020a3764c1000000b0072d4b50f156mr1491924qkb.14.1678555835734; Sat, 11
 Mar 2023 09:30:35 -0800 (PST)
MIME-Version: 1.0
References: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
In-Reply-To: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
From: David Kahurani <k.kahurani@gmail.com>
Date: Sat, 11 Mar 2023 20:30:24 +0300
Message-ID: <CAAZOf27oFt=+DndvUxFLoRM8u_+oUs-Bdtca=yoBT0e-ych3Lw@mail.gmail.com>
To: Ivan Orlov <ivan.orlov0322@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, Mar 10, 2023 at 11:28 PM Ivan Orlov wrote: > > KASAN
    reported the following issue: > [ 36.825817][ T5923] BUG: KASAN: wild-memory-access
    in v9fs_get_acl+0x1a4/0x390 > [ 36.827479][ T5923] [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [k.kahurani[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1pb33K-0003Rj-FX
Subject: Re: [V9fs-developer] [PATCH] 9P FS: Fix wild-memory-access write in
 v9fs_get_acl
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org,
 syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gRnJpLCBNYXIgMTAsIDIwMjMgYXQgMTE6MjjigK9QTSBJdmFuIE9ybG92IDxpdmFuLm9ybG92
MDMyMkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gS0FTQU4gcmVwb3J0ZWQgdGhlIGZvbGxvd2luZyBp
c3N1ZToKPiBbICAgMzYuODI1ODE3XVsgVDU5MjNdIEJVRzogS0FTQU46IHdpbGQtbWVtb3J5LWFj
Y2VzcyBpbiB2OWZzX2dldF9hY2wrMHgxYTQvMHgzOTAKPiBbICAgMzYuODI3NDc5XVsgVDU5MjNd
IFdyaXRlIG9mIHNpemUgNCBhdCBhZGRyIDlmZmZlYjM3Zjk3ZjFjMDAgYnkgdGFzayBzeXotZXhl
Y3V0b3I3OTgvNTkyMwo+IFsgICAzNi44MjkzMDNdWyBUNTkyM10KPiBbICAgMzYuODI5ODQ2XVsg
VDU5MjNdIENQVTogMCBQSUQ6IDU5MjMgQ29tbTogc3l6LWV4ZWN1dG9yNzk4IE5vdCB0YWludGVk
IDYuMi4wLXN5emthbGxlci0xODMwMi1nNTk2YjZiNzA5NjMyICMwCj4gWyAgIDM2LjgzMjExMF1b
IFQ1OTIzXSBIYXJkd2FyZSBuYW1lOiBHb29nbGUgR29vZ2xlIENvbXB1dGUgRW5naW5lL0dvb2ds
ZSBDb21wdXRlIEVuZ2luZSwgQklPUyBHb29nbGUgMDEvMjEvMjAyMwo+IFsgICAzNi44MzQ0NjRd
WyBUNTkyM10gQ2FsbCB0cmFjZToKPiBbICAgMzYuODM1MTk2XVsgVDU5MjNdICBkdW1wX2JhY2t0
cmFjZSsweDFjOC8weDFmNAo+IFsgICAzNi44MzYyMjldWyBUNTkyM10gIHNob3dfc3RhY2srMHgy
Yy8weDNjCj4gWyAgIDM2LjgzNzEwMF1bIFQ1OTIzXSAgZHVtcF9zdGFja19sdmwrMHhkMC8weDEy
NAo+IFsgICAzNi44MzgxMDNdWyBUNTkyM10gIHByaW50X3JlcG9ydCsweGU0LzB4NGMwCj4gWyAg
IDM2LjgzOTA2OF1bIFQ1OTIzXSAga2FzYW5fcmVwb3J0KzB4ZDQvMHgxMzAKPiBbICAgMzYuODQw
MDUyXVsgVDU5MjNdICBrYXNhbl9jaGVja19yYW5nZSsweDI2NC8weDJhNAo+IFsgICAzNi44NDEx
OTldWyBUNTkyM10gIF9fa2FzYW5fY2hlY2tfd3JpdGUrMHgyYy8weDNjCj4gWyAgIDM2Ljg0MjIx
Nl1bIFQ1OTIzXSAgdjlmc19nZXRfYWNsKzB4MWE0LzB4MzkwCj4gWyAgIDM2Ljg0MzIzMl1bIFQ1
OTIzXSAgdjlmc19tb3VudCsweDc3Yy8weGE1Ywo+IFsgICAzNi44NDQxNjNdWyBUNTkyM10gIGxl
Z2FjeV9nZXRfdHJlZSsweGQ0LzB4MTZjCj4gWyAgIDM2Ljg0NTE3M11bIFQ1OTIzXSAgdmZzX2dl
dF90cmVlKzB4OTAvMHgyNzQKPiBbICAgMzYuODQ2MTM3XVsgVDU5MjNdICBkb19uZXdfbW91bnQr
MHgyNWMvMHg4YzgKPiBbICAgMzYuODQ3MDY2XVsgVDU5MjNdICBwYXRoX21vdW50KzB4NTkwLzB4
ZTU4Cj4gWyAgIDM2Ljg0ODE0N11bIFQ1OTIzXSAgX19hcm02NF9zeXNfbW91bnQrMHg0NWMvMHg1
OTQKPiBbICAgMzYuODQ5MjczXVsgVDU5MjNdICBpbnZva2Vfc3lzY2FsbCsweDk4LzB4MmMwCj4g
WyAgIDM2Ljg1MDQyMV1bIFQ1OTIzXSAgZWwwX3N2Y19jb21tb24rMHgxMzgvMHgyNTgKPiBbICAg
MzYuODUxMzk3XVsgVDU5MjNdICBkb19lbDBfc3ZjKzB4NjQvMHgxOTgKPiBbICAgMzYuODUyMzk4
XVsgVDU5MjNdICBlbDBfc3ZjKzB4NTgvMHgxNjgKPiBbICAgMzYuODUzMjI0XVsgVDU5MjNdICBl
bDB0XzY0X3N5bmNfaGFuZGxlcisweDg0LzB4ZjAKPiBbICAgMzYuODU0MjkzXVsgVDU5MjNdICBl
bDB0XzY0X3N5bmMrMHgxOTAvMHgxOTQKPgo+IENhbGxpbmcgJ19fdjlmc19nZXRfYWNsJyBtZXRo
b2QgaW4gJ3Y5ZnNfZ2V0X2FjbCcgY3JlYXRlcyB0aGUKPiBmb2xsb3dpbmcgY2hhaW4gb2YgZnVu
Y3Rpb24gY2FsbHM6Cj4KPiBfX3Y5ZnNfZ2V0X2FjbAo+ICAgICAgICAgdjlmc19maWRfZ2V0X2Fj
bAo+ICAgICAgICAgICAgICAgICB2OWZzX2ZpZF94YXR0cl9nZXQKPiAgICAgICAgICAgICAgICAg
ICAgICAgICBwOV9jbGllbnRfeGF0dHJ3YWxrCj4KPiBGdW5jdGlvbiBwOV9jbGllbnRfeGF0dHJ3
YWxrIGFjY2VwdHMgYSBwb2ludGVyIHRvIHU2NC10eXBlZAo+IHZhcmlhYmxlIGF0dHJfc2l6ZSBh
bmQgcHV0cyBzb21lIHU2NCB2YWx1ZSBpbnRvIGl0LiBIb3dldmVyLAo+IGFmdGVyIHRoZSBleGVj
dXRpbmcgdGhlIHA5X2NsaWVudF94YXR0cndhbGssIGluIHNvbWUgY2lyY3Vtc3RhbmNlcwo+IHdl
IGFzc2lnbiB0aGUgdmFsdWUgb2YgdTY0LXR5cGVkIHZhcmlhYmxlICdhdHRyX3NpemUnIHRvIHRo
ZQo+IHZhcmlhYmxlICdyZXR2YWwnLCB3aGljaCB3ZSB3aWxsIHJldHVybi4gSG93ZXZlciwgdGhl
IHR5cGUgb2YKPiAncmV0dmFsJyBpcyBzc2l6ZV90LCBhbmQgaWYgdGhlIHZhbHVlIG9mIGF0dHJf
c2l6ZSBpcyBsYXJnZXIKPiB0aGFuIFNTSVpFX01BWCwgd2Ugd2lsbCBmYWNlIHRoZSBzaWduZWQg
dHlwZSBvdmVyZmxvdy4gSWYgdGhlCj4gb3ZlcmZsb3cgb2NjdXJzLCB0aGUgcmVzdWx0IG9mIHY5
ZnNfZmlkX3hhdHRyX2dldCBtYXkgYmUKPiBuZWdhdGl2ZSwgYnV0IG5vdCBjbGFzc2lmaWVkIGFz
IGFuIGVycm9yLiBXaGVuIHdlIHRyeSB0byBhbGxvY2F0ZQo+IGFuIGFjbCB3aXRoICdicm9rZW4n
IHNpemUgd2UgcmVjZWl2ZSBhbiBlcnJvciwgYnV0IGRvbid0IHByb2Nlc3MKPiBpdC4gV2hlbiB3
ZSB0cnkgdG8gZnJlZSB0aGlzIGFjbCwgd2UgZmFjZSB0aGUgJ3dpbGQtbWVtb3J5LWFjY2VzcycK
PiBlcnJvciAoYmVjYXVzZSBpdCB3YXNuJ3QgYWxsb2NhdGVkKS4KPgo+IFRoaXMgcGF0Y2ggd2ls
bCBtb2RpZnkgdGhlIGNvbmRpdGlvbiBpbiB0aGUgJ3Y5ZnNfZmlkX3hhdHRyX2dldCcKPiBmdW5j
dGlvbiwgc28gaXQgd2lsbCByZXR1cm4gYW4gZXJyb3IgaWYgdGhlICdhdHRyX3NpemUnIGlzIGxh
cmdlcgo+IHRoYW4gU1NJWkVfTUFYLgo+Cj4gUmVwb3J0ZWQtYnk6IHN5emJvdCtjYjFkMTZmYWNi
M2NjOTBkZTVmYkBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCj4gTGluazogaHR0cHM6Ly9zeXpr
YWxsZXIuYXBwc3BvdC5jb20vYnVnP2lkPWZiYmVmNjZkOWU0ZDA5NjI0MmYzNjE3ZGU1ZDE0ZDEy
NzA1YjQ2NTkKPiBTaWduZWQtb2ZmLWJ5OiBJdmFuIE9ybG92IDxpdmFuLm9ybG92MDMyMkBnbWFp
bC5jb20+Cj4gLS0tCj4gIGZzLzlwL3hhdHRyLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2ZzLzlwL3hhdHRy
LmMgYi9mcy85cC94YXR0ci5jCj4gaW5kZXggNTBmN2YzZjZiNTVlLi5kNmY3NDUwMTA3YTggMTAw
NjQ0Cj4gLS0tIGEvZnMvOXAveGF0dHIuYwo+ICsrKyBiL2ZzLzlwL3hhdHRyLmMKPiBAQCAtMzUs
NyArMzUsNyBAQCBzc2l6ZV90IHY5ZnNfZmlkX3hhdHRyX2dldChzdHJ1Y3QgcDlfZmlkICpmaWQs
IGNvbnN0IGNoYXIgKm5hbWUsCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXR2YWw7Cj4gICAg
ICAgICB9Cj4gICAgICAgICBpZiAoYXR0cl9zaXplID4gYnVmZmVyX3NpemUpIHsKPiAtICAgICAg
ICAgICAgICAgaWYgKCFidWZmZXJfc2l6ZSkgLyogcmVxdWVzdCB0byBnZXQgdGhlIGF0dHJfc2l6
ZSAqLwo+ICsgICAgICAgICAgICAgICBpZiAoIWJ1ZmZlcl9zaXplICYmIGF0dHJfc2l6ZSA8PSAo
dTY0KSBTU0laRV9NQVgpIC8qIHJlcXVlc3QgdG8gZ2V0IHRoZSBhdHRyX3NpemUgKi8KCkknbSBu
b3Qgc3VyZSB3aGF0IGFyZSB0aGUgcnVsZXMgYXJvdW5kIGhlcmUgYnV0IEkgcHJlZmVyIHRvIHVz
ZQpicmFja2V0cyBtb3JlIGdlbmVyb3VzbHkuCgo+Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
cmV0dmFsID0gYXR0cl9zaXplOwo+ICAgICAgICAgICAgICAgICBlbHNlCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgcmV0dmFsID0gLUVSQU5HRTsKPiAtLQo+IDIuMzQuMQo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1rZXJuZWwtbWVu
dGVlcyBtYWlsaW5nIGxpc3QKPiBMaW51eC1rZXJuZWwtbWVudGVlc0BsaXN0cy5saW51eGZvdW5k
YXRpb24ub3JnCj4gaHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgta2VybmVsLW1lbnRlZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
