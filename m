Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A83E96501D2
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 17:36:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6weQ-00032E-Ad;
	Sun, 18 Dec 2022 16:36:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rminnich@gmail.com>) id 1p6weP-000328-8O
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=szKm7GEqdKTaMlHGUyU++QPPAQZMv8dubwch++cAJII=; b=ltyKrz5OEkpAWlXUmSEQvbNcbh
 pmtsnyaATVStIqjyoJdGNLX/8VjerPt7GoSX2pZHZBtxCn1+XqbbNBeTtiDuzfwL2XoWSIp59RPYe
 UeXVFmsOiWQzYzi5lpEy3bgsEH090frDcCWkVHd17LCmijn5r9uoH4NLefGpt1ydqahk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=szKm7GEqdKTaMlHGUyU++QPPAQZMv8dubwch++cAJII=; b=cgeRh+BnSYAa1aoL/PH/i3lFS/
 h05/M+YrQ8F59xx0OgbBLvUrJtJqDwgySURZtZUcvFqBV6JUIlc31TvrOJcmBufYKzc855aIkdedG
 9XxSL+8kSR/jBb1eW6qfupD+vJeyxSFV8hoZBbd8r4jb+cBOqv6fVI/Et57P23MfYMAU=;
Received: from mail-qt1-f174.google.com ([209.85.160.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p6weN-0001Gg-4g for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:36:33 +0000
Received: by mail-qt1-f174.google.com with SMTP id i20so6601104qtw.9
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 18 Dec 2022 08:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=szKm7GEqdKTaMlHGUyU++QPPAQZMv8dubwch++cAJII=;
 b=O6ZdfErW36LkLw0Zwzigb7KFRow+BolbiH77xnZzPYCjCawUZINT12mdYV4jqAOJMj
 eDrW38Jea+U30ZWluJECocnu0u3Uqc3MipahfSKygueEpL2Ph90iJ4fYTsyN1eVmYF3j
 JhoYiVvxvoxribKgh3ac9fAaN6jr7+Y6LF16R0EriWR1w7aoJj7d5g3kjBLz4CT7rxK5
 RKPbgUIViSwL7v1H6s4fD2oCwteoGl7S7opQhmA9JryvYdVUh35CeiqIfnVuvXPqrbhM
 i9GqRrRi0c19aVStYouVSK4ojQvMUmng1XRol820cdnwtOd13L5aCous9fkuDcrq5ykd
 7Jbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=szKm7GEqdKTaMlHGUyU++QPPAQZMv8dubwch++cAJII=;
 b=hBM/gv4ediswvI0SgJ2OoDuqLwS8uWWy9gswx3Hkk2JKTH8/arYge4vT80lTFXScw6
 rPAlj/2QDy/70KlpBidxmr0njJhInk8q4/3pmmckKsuaBO/PhJKzMcnZRdeLne2uazsD
 Ws6a4lI93zwx4LRjbmbGYUUKKm9lzUf/A2cqJk3ak68cqQYo6cq6xDTnjslBR9M2I9t2
 62biQ2m+WR2b4ZR4Ptqep/HVd6Z28yaa4xMCH7x1fdN7U9YuYQeumVoPIltVTIeKCFGe
 w0HSMh+Y+5Ka1wSAY9IARhJjpPdcY9njjgxRWRn3kA4cp4B/0yNEq1iCGBHjPm35a8i7
 OKlg==
X-Gm-Message-State: ANoB5pnetTQ8IqzEv5l400u3ILbPPcsKI4e6ffFEDqF7hqzophYEvzyH
 yLGHMHkXIe0wEmwfpZlUBua7J5svhx+bSWTDTk8=
X-Google-Smtp-Source: AA0mqf57XM8bTPfAv5WwT+OnY/nCyy9XS2SF5m6bxyQEiOlTTZVxHYpJgw2xtPhRCh9fRiqz9LJsDrcAnz2WE5WOhg4=
X-Received: by 2002:ac8:7087:0:b0:3a7:f5e5:66a7 with SMTP id
 y7-20020ac87087000000b003a7f5e566a7mr5168225qto.371.1671381385204; Sun, 18
 Dec 2022 08:36:25 -0800 (PST)
MIME-Version: 1.0
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-3-evanhensbergen@icloud.com>
 <Y55Z2DwZgRG+9zW3@codewreck.org>
 <3343B7A9-2D1D-4A41-859E-B04AF90152FA@icloud.com>
 <864E1007-CBCF-40C7-B438-A76C3065AFC9@icloud.com>
In-Reply-To: <864E1007-CBCF-40C7-B438-A76C3065AFC9@icloud.com>
From: ron minnich <rminnich@gmail.com>
Date: Sun, 18 Dec 2022 08:36:14 -0800
Message-ID: <CAP6exYJ1eX1TOJ8k5Y_MYp1huE7ugga=sWg-LJ7_d0qSyPSguQ@mail.gmail.com>
To: evanhensbergen@icloud.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  sounds like a plan. It's very important that we be able to
    run servers as not root. On Sun, Dec 18, 2022 at 8:33 AM wrote: > Okay, reproduced
    the error you suspected on the patch. It’s kind of a > pain because the
    code as is won’t work unless I’m running the file server > as root and
    changing all the servers to igno [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.174 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rminnich[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.174 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p6weN-0001Gg-4g
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH 2/6] Don't assume UID 0 attach
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

c291bmRzIGxpa2UgYSBwbGFuLiBJdCdzIHZlcnkgaW1wb3J0YW50IHRoYXQgd2UgYmUgYWJsZSB0
byBydW4gc2VydmVycyBhcwpub3Qgcm9vdC4KCk9uIFN1biwgRGVjIDE4LCAyMDIyIGF0IDg6MzMg
QU0gPGV2YW5oZW5zYmVyZ2VuQGljbG91ZC5jb20+IHdyb3RlOgoKPiBPa2F5LCByZXByb2R1Y2Vk
IHRoZSBlcnJvciB5b3Ugc3VzcGVjdGVkIG9uIHRoZSBwYXRjaC4gIEl04oCZcyBraW5kIG9mIGEK
PiBwYWluIGJlY2F1c2UgdGhlIGNvZGUgYXMgaXMgd29u4oCZdCB3b3JrIHVubGVzcyBJ4oCZbSBy
dW5uaW5nIHRoZSBmaWxlIHNlcnZlcgo+IGFzIHJvb3QgYW5kIGNoYW5naW5nIGFsbCB0aGUgc2Vy
dmVycyB0byBpZ25vcmUgcmVxdWVzdHMgc2VlbXMgb2ZmLiAgSXQgYWxzbwo+IG9jY3VycmVkIHRv
IG1lIHRoYXQgaGF2aW5nIGEgcm9vdCBSL1cgd3JpdGUgYmFjayBjb3VsZCBiZSBhIHNlY3VyaXR5
Cj4gdnVsbmVyYWJpbGl0eS4gIEkgdHJpZWQgcGF0Y2hpbmcgaXQgd2l0aCBkZmx0dWlkL2RmbHRn
aWQsIGJ1dCBvbmx5IHJvb3QgY2FuCj4gb3ZlcnJpZGUgdGhlIG1vZGVzIHNvIHRoYXQgZG9lc27i
gJl0IHdvcmsuCj4KPiBTaW5jZSBJIGhhdmUgdGhlIGJldHRlciB3cml0ZSBiYWNrIGZpeCB0ZXN0
aW5nIG9rYXksIHdlIGNvdWxkIGRyb3AgdGhpcwo+IHBhdGNoIGZyb20gdGhlIHNlcmllcyBhbmQg
SSBjb3VsZCBqdXN0IGZvY3VzIG9uIGdldHRpbmcgdGhhdCBwYXRjaCByZWFkeQo+ICh3aGljaCBJ
IHNob3VsZCBiZSBhYmxlIHRvIGRvIHRvZGF5KS4gIEl0IGRvZXMgc2VlbSB0byB3b3JrIHdpdGgg
dGhlIHB5dGhvbgo+IHRlc3QgY2FzZSB5b3UgZ2F2ZSwgc28gaXQgZG9lc27igJl0IGhhdmUgdGhl
IHNhbWUgaXNzdWVzLgo+Cj4gVGhvdWdodHM/Cj4KPiAgICAgICAgLUVyaWMKPgo+Cj4gT24gRGVj
IDE3LCAyMDIyLCBhdCA3OjA1IFBNLCBldmFuaGVuc2Jlcmdlbi0tLSB2aWEgVjlmcy1kZXZlbG9w
ZXIgPAo+IHY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD4gd3JvdGU6Cj4KPgo+
Cj4gT24gRGVjIDE3LCAyMDIyLCBhdCA2OjA3IFBNLCBhc21hZGV1c0Bjb2Rld3JlY2sub3JnIHdy
b3RlOgo+Cj4gRXJpYyBWYW4gSGVuc2JlcmdlbiB3cm90ZSBvbiBTYXQsIERlYyAxNywgMjAyMiBh
dCAwNjo1MjowNlBNICswMDAwOgo+Cj4gVGhlIHdyaXRlYmFja19maWQgZmFsbGJhY2sgY29kZSBh
c3N1bWVzIGEgcm9vdCB1aWQgZmFsbGJhY2sgd2hpY2gKPiBicmVha3MgbWFueSBzZXJ2ZXIgY29u
ZmlndXJhdGlvbnMgKHdoaWNoIGRvbid0IHJ1biBhcyByb290KS4gIFRoaXMKPiBwYXRjaCBzd2l0
Y2hlcyB0byBnZW5lcmljIGxvb2t1cCB3aGljaCB3aWxsIGZvbGxvdyBhcmd1bWVudAo+IGd1aWRl
bmNlIG9uIGFjY2VzcyBtb2RlcyBhbmQgZGVmYXVsdCBpZHMgdG8gdXNlIG9uIGZhaWx1cmUuCj4K
Pgo+IFVuZm9ydHVuYXRlbHkgdGhpcyBvbmUgd2lsbCBicmVhayB3cml0ZXMgdG8gYSBmaWxlIGNy
ZWF0ZWQgYXMgNDAwIEkKPiB0aGluawo+IFRoYXQncyB0aGUgbWFpbiByZWFzb24gd2UgaGF2ZSB0
aGlzIHdyaXRlYmFjayBmaWQgYWZhaWsgLS0gdGhlcmUgYXJlCj4gY2FzZXMgd2hlcmUgdGhlIHVz
ZXIgc2hvdWxkIGJlIGFibGUgdG8gd3JpdGUgdG8gdGhlIGZpbGUsIGJ1dCBhIHBsYWluCj4gb3Bl
bi93cml0ZSB3b24ndCB3b3JrLi4uIEkgY2FuJ3QgdGhpbmsgb2YgYW55dGhpbmcgZWxzZSB0aGFu
IG9wZW4gNDAwCj4gcmlnaHQgbm93IHRob3VnaAo+Cj4KPiBJ4oCZbGwgdHJ5IGFuZCBjcmFmdCBh
IHRlc3QgY2FzZSBmb3IgdGhpcywgYnV0IEkgdGhpbmsgaXQgd29ya3M/Cj4gVGhhdCBiZWluZyBz
YWlkLCBJIGhhdmVu4oCZdCBiZWVuIHRyeWluZyB0aGUgeGZzdGVzdHMsIGp1c3QgZnN4IGFuZCBi
ZW5jaC4KPgo+IEknbSBzdXJlIHRoZXJlJ3MgYW4geGZzX2lvIGNvbW1hbmQgYW5kIHhmc3Rlc3Qg
Zm9yIHRoYXQsIGJ1dCBmb3Igbm93Ogo+IHB5dGhvbjMgLWMgJ2ltcG9ydCBvczsgZiA9IG9zLm9w
ZW4oInRlc3RmaWxlIiwgb3MuT19DUkVBVCArIG9zLk9fUkRXUiwKPiAwbzQwMCk7IG9zLndyaXRl
KGYsIGIib2tcbiIpJwo+Cj4gaWlyYyBnYW5lc2hhIHJ1bm5pbmcgYXMgbm9uLXJvb3QganVzdCBp
Z25vcmVzIHJvb3QgcmVxdWVzdHMgYW5kIG9wZW5zIGFzCj4gY3VycmVudCB1c2VyLS0gdGhpcyB3
b24ndCB3b3JrIGZvciB0aGlzIHBhcnRpY3VsYXIgY2FzZSwgYnV0IG1pZ2h0IGJlCj4gZ29vZCBl
bm91Z2ggZm9yIHlvdS4uLiBXaXRoIHRoYXQgc2FpZDoKPgo+Cj4gWWVhaCwgdGhlIHJlYWwgcHJv
YmxlbSBJIHJhbiBpbnRvIHRoaXMgd2FzIGlmIHRoZSBzZXJ2ZXIgaXMgcnVubmluZyBhcwo+IG5v
bi1yb290IHRoaXMgY2F1c2VzIGlzc3VlcyBhbmQgSSB3YXMgdGVzdGluZyBhZ2FpbnN0IGNwdSAo
d2hpY2ggZG9lc27igJl0Cj4gcnVuIGFzIHJvb3QpLiAgSSBuZWVkIHRvIGdvIGJhY2sgYW5kIGNo
ZWNrLCBidXQgaWYgeW91IGFyZSBydW5uaW5nIGFzIHJvb3QKPiBhbmQgZGZ0dWlkPTAgdGhlbiB0
aGUgYmVoYXZpb3Igc2hvdWxkIGJlIHRoZSBzYW1lIGFzIGJlZm9yZT8KPiBJbiBhbnkgY2FzZSwg
SeKAmWxsIHRyeSB0byBnbyBiYWNrIGFuZCBtYWtlIHRoaXMgd29yayDigJQgbXkgYmlnIGlzc3Vl
IHdhcwo+IGFsd2F5cyB1c2luZyB1aWQgMCByZWdhcmRsZXNzIG9mIHdoYXQgbW91bnQgb3B0aW9u
cyBzYWlkIGlzIFdvbmcuCj4KPgo+IFRoZXJlIGlzIGEgZGVlcGVyIHVuZGVybHlpbmcgcHJvYmxl
bSB3aXRoIHdyaXRlYmFja19maWRzIGluIHRoYXQKPiB0aGlzIGZhbGxiYWNrIGlzIHRvbyBzdGFu
ZGFyZCBhbmQgbm90IGFuIGV4Y2VwdGlvbiBkdWUgdG8gdGhlIHdheQo+IHdyaXRlYmFjayBtb2Rl
IHdvcmtzIGluIHRoZSBjdXJyZW50IGltcGxlbWVudGF0aW9uLiAgU3Vic2VxdWVudAo+IHBhdGNo
ZXMgd2lsbCB0cnkgdG8gYXNzb2NpYXRlIHdyaXRlYmFjayBmaWRzIGZyb20gdGhlIG9yaWdpbmFs
IHVzZXIKPiBlaXRoZXIgYnkgZmx1c2hpbmcgb24gY2xvc2Ugb3IgYnkgaG9sZGluZyBvbnRvIGZp
ZCB1bnRpbCB3cml0ZWJhY2sKPiBjb21wbGV0ZXMuCj4KPgo+IElmIHdlIGNhbiBhZGRyZXNzIHRo
aXMgcHJvYmxlbSB0aG91Z2ggSSBhZ3JlZSB3ZSBzaG91bGQgc3RvcCB1c2luZwo+IHdyaWViYWNr
IGZpZHMgYXMgbXVjaCBhcyB3ZSBkby4KPiBOb3cgZmlkcyBhcmUgcmVmY291bnRlZCwgSSB0aGlu
ayB3ZSBjb3VsZCBqdXN0IHVzZSB0aGUgbm9ybWFsIGZpZCBhcwo+IHdyaXRlYmFjayBmaWQgKGdl
dHRpbmcgYSByZWYpLCBhbmQgdGhlIHJlZ3VsYXIgY2xvc2Ugd2lsbCBub3QgY2x1bmsgaXQKPiBz
byBkZWxheWVkIElPcyB3aWxsIHBhc3MuCj4KPiBXb3J0aCBhIHRyeT8KPgo+Cj4gWWVhaCwgdGhh
dCAodXNpbmcgcmVndWxhciBmaWRzKSBpcyBleGFjdGx5IHdoYXQgSSBhbSBkb2luZyBpbiBteSB3
cml0ZQo+IGJhY2stZml4IHBhdGNoIHdoaWNoIGlzbuKAmXQgcGFydCBvZiB0aGlzIHNlcmllcy4g
IEkgd2FzIHN0aWxsIGh1bnRpbmcgYSBmZXcKPiBidWdzLCBidXQgSSB0aGluayBJIG5haWxlZCB0
aGVtIHRvZGF5LiAgSSBoYXZlIHRvIGRvIGEgbW9yZSBleHRlbnNpdmUgdGVzdAo+IHN3ZWVwIG9m
IHRoZSBkaWZmZXJlbnQgY29uZmlncywgYnV0IHVuaXQgdGVzdHMgc2VlbSBnb29kIHRvIGdvIG5v
dyBzbyBpZiBJCj4gZW5kIHVwIHJld29ya2luZyB0aGUgcGF0Y2ggc2V0IHRvIGFkZHJlc3MgeW91
ciBjb21tZW50IGFib3ZlLCBJIG1heSBqdXN0IGdvCj4gYWhlYWQgYW5kIGFkZCBpdCB0byB0aGUg
cmVzdWJtaXQgc2V0LiAgSG93ZXZlciwgSSBhbHNvIGdvIGFoZWFkIGFuZCBmbHVzaAo+IG9uIGNs
b3NlL2NsdW5rIOKAlCBhbmQgdGhhdCBnZXRzIHJpZCBvZiB0aGUgZGVsYXllZCB3cml0ZSBiYWNr
IHdoaWNoIEkgdGhpbmsKPiBpcyBhY3R1YWxseSBwcmVmZXJhYmxlIGFueXdheXMuICBJIG1heSBy
ZS1pbnRyb2R1Y2UgaXQgd2l0aCB0ZW1wb3JhbAo+IGNhY2hpbmcsIGJ1dCBpdHMganVzdCBzbyBw
cm9ibGVtYXRpY+KApi4uCj4KPiAgICAgICAgIC1FcmljCj4KPgo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdAo+IFY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IGh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCj4KPgo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxv
cGVyCg==
