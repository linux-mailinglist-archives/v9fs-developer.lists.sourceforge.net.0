Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 367506A3A28
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Feb 2023 05:32:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pWVBE-0003Is-TA;
	Mon, 27 Feb 2023 04:32:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pWVBD-0003Im-5s
 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 04:32:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lpcLaPaZ4dDg31dL6v8pwhZCslig5RZw6VxKjLq2xDA=; b=VTpFwlXVRRL2TQVz3RaqudVYo+
 wuCgmgtf5OLBsdkZYtdT01NKhjLHZCt4LA9HOuAdeE21UBgIkkhvKy+nT6je4I3cI9FVi252usEL/
 c6+XoAJx3xzcyPO9Y0R/y0oy31q8u1KN8mze4iq9MgyQO+80RKtwoN5t7egq/+85uz7g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lpcLaPaZ4dDg31dL6v8pwhZCslig5RZw6VxKjLq2xDA=; b=AISHis/M9LRO37DOAkE1djqsAK
 0lZ5F3ID5mG3p2RxvBaNOYiugns6ljqSZzDG6of/gHtl72PYY+auE05W6ugDrFCNUtFHtSQHu129q
 V7V6HxTma69CM4ug1hj/5+N1Ot6bF3OdXA0/tOBLPmeNKhtEispcpyyxj/coiM5eUubE=;
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pWVB9-0002lM-64 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 04:32:03 +0000
Received: by mail-wr1-f48.google.com with SMTP id v16so2014026wrn.0
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 26 Feb 2023 20:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lpcLaPaZ4dDg31dL6v8pwhZCslig5RZw6VxKjLq2xDA=;
 b=L5kvkYH7BFo5zenFGbwirlxxJOAO/kEMZG3ZJE6OlUghfPIyhtaykFZ8UBeb8dcfgb
 8qjqIAKmEuxLMbdADMmuuv9mhGHxq96m9BApEy1ErRoa7Ci0ELdV1fSFxQXX6YEZIR+2
 PPxKLggXe2O+Kjt5yXht2+BWluGJd/eBvODeXyXGjBoKrcA3J+pXp1ym2qTSpnT5Hl4W
 yy7ck2Z3bLEqut00UQcwpANS9Rwiixxz0WJsA6kIwZ+dftMXLxZ5Y7S3YHwmluIBeLVn
 NN/0rleUDOy9Stzsn3kW+6/+0tBcTF6/9wu57DHZWnvMp9gCCIRGJ1KpP2pBDFEP0mqv
 U7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lpcLaPaZ4dDg31dL6v8pwhZCslig5RZw6VxKjLq2xDA=;
 b=8SFUack8Gk0I0cyQplGsFNTuRPsNRojpZDwTJ+xzsLdg4MbFV0/Y2jIIGQWKgsphL1
 hjrilMsbRBKimPozoaW77rndqKR0mt/gfaknbO7XNdSGbvdY9Pn5t/yp5pd6swSoWvVZ
 3lBQCfSym0XTQqnY+NalwH7/ojZeqdGbymqjpkgENX6ZjU7sapn7LoC7ZDJWKhwX4B+y
 lZqOMAjENd69lprN5qEfzGp0LiiejjnxqU4G6r/nGZ56YutWU8YPJx4PjC/3odI5bOlM
 2hElF0zyIc7p2Ylisg1haGOG5JBGRD7ZWWGzDZ8IoqWbPtCJJ0QoHnp46e8vbQAG+XtP
 7yqw==
X-Gm-Message-State: AO0yUKX8YnAM4IgrR+L1HAtj5uDcN4TUH4uomdT5t0etSg9o1+Ysqoch
 zGqhPPgvhB3brbvGTCat480ptf1ZMbwRT0x6HeA=
X-Google-Smtp-Source: AK7set83OiGW3iMjEbvPjF9Kyhj4pdhSsCeu6MhsCueC+tTArDpsJJIrUT0V62/RspSEDOLEJLaD+aEx3HgofD64Gu0=
X-Received: by 2002:adf:f152:0:b0:2c7:1d70:4ac0 with SMTP id
 y18-20020adff152000000b002c71d704ac0mr1264869wro.8.1677472313112; Sun, 26 Feb
 2023 20:31:53 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org> <Y/Ch8o/6HVS8Iyeh@codewreck.org>
In-Reply-To: <Y/Ch8o/6HVS8Iyeh@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 26 Feb 2023 22:31:41 -0600
Message-ID: <CAFkjPTmTU7pu7yDPi+ic-5CTB=OtiyfDeYPZrtQnzrGsShPFvA@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, Feb 18, 2023 at 4:01 AM wrote: > > > @@ -323,16
   +327,17 @@ static int v9fs_write_inode_dotl(struct inode *inode, > > */ >
   > v9inode = V9FS_I(inode); > > p9_debug(P9_DEBUG_VFS, "%s: inode % [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ericvh[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.48 listed in list.dnswl.org]
X-Headers-End: 1pWVB9-0002lM-64
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gU2F0LCBGZWIgMTgsIDIwMjMgYXQgNDowMeKAr0FNIDxhc21hZGV1c0Bjb2Rld3JlY2sub3Jn
PiB3cm90ZToKPgo+ID4gQEAgLTMyMywxNiArMzI3LDE3IEBAIHN0YXRpYyBpbnQgdjlmc193cml0
ZV9pbm9kZV9kb3RsKHN0cnVjdCBpbm9kZSAqaW5vZGUsCj4gPiAgICAgICAgKi8KPiA+ICAgICAg
IHY5aW5vZGUgPSBWOUZTX0koaW5vZGUpOwo+ID4gICAgICAgcDlfZGVidWcoUDlfREVCVUdfVkZT
LCAiJXM6IGlub2RlICVwLCB3cml0ZWJhY2tfZmlkICVwXG4iLAo+ID4gLSAgICAgICAgICAgICAg
X19mdW5jX18sIGlub2RlLCB2OWlub2RlLT53cml0ZWJhY2tfZmlkKTsKPiA+IC0gICAgIGlmICgh
djlpbm9kZS0+d3JpdGViYWNrX2ZpZCkKPiA+IC0gICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiAr
ICAgICAgICAgICAgICBfX2Z1bmNfXywgaW5vZGUsIGZpZCk7Cj4gPiArICAgICBpZiAoIWZpZCkK
PiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4KPiBIbW0sIHdoYXQgaGFwcGVucyBp
ZiB3ZSByZXR1cm4gRUlOVkFMIGhlcmU/Cj4gTWlnaHQgd2FudCBhIFdBUk5fT05DRSBvciBzb21l
dGhpbmc/CgpJZiBJIGluc2VydCBhIFdBUk4gdGhpcyBnZXQgaGl0IGFsbCB0aGUgdGltZSAtLSBJ
IG5lZWQgdG8gZ28gYmFjayBhbmQKbG9vayBhdCB0aGUgdHJhY2VzIHRvIGxvb2sgYXQgdGhlIHBy
b2dyZXNzaW9uLApidXQgSSB0aGluayB3cml0ZV9pbm9kZSBnZXRzIGNhbGxlZCBiZWZvcmUgd2Ug
cmVsZWFzZSB0aGUgaW5vZGUsIGJ1dAp0aGlzIGhhcHBlbnMgd2VsbCBhZnRlciB3ZSBoYXZlIGFs
cmVhZHkKY2FsbGVkIHRoZSB2ZnNfZGlyX3JlbGVhc2Ugd2hpY2ggaGFzIHdyaXR0ZW4gb3V0IHRo
ZSB3cml0ZWJhY2sgYnVmZmVyCih3aGljaCB3ZSBkb24ndCBldmVuIGRvIGhlcmUpLgoKVGhlIG1v
cmUgSSB0aGluayBhYm91dCB0aGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBvZiB3cml0ZV9pbm9k
ZSAtLQp0aGUgbW9yZSBJIHRoaW5rIGl0IGlzIGFjdHVhbGx5IGp1c3QKd3JvbmcuICBXZSBlc3Nl
bnRpYWxseSBjYWxsIGFuIGZzeW5jIG9uIHRoZSBzZXJ2ZXIgdG8gbWFrZSBzdXJlCmV2ZXJ5dGhp
bmcgaXMgd3JpdHRlbiB0byBkaXNrIC0tIGFuZCB3ZSB3ZXJlbid0CmV2ZW4gZmx1c2hpbmcgdGhl
IHdyaXRlYnVmZmVyIGZpcnN0IC0tIHNvIGlmIHRoZXJlIHdhcyBzb21ldGhpbmcgdGhlcmUKaXQg
d291bGQgYnJlYWsgLS0gYnV0IHRoZXJlJ3Mgbm90aGluZyBpbiB0aGUKZGVzY3JpcHRpb24gb2Yg
d3JpdGVfaW5vZGUgdGhhdCBzYXlzIGFueXRoaW5nIG90aGVyIHRoYW4gaXQgZ2V0cwpjYWxsZWQg
d2hlbiB3ZSBuZWVkIHRvIHdyaXRlIHRoZSBpbm9kZSB0byBkaXNrLAp3aGljaCBzb3VuZHMgbW9y
ZSBsaWtlIGl0IHNob3VsZCBiZSBhIHNldGF0dHIgc3R5bGUgb3BlcmF0aW9uIChpZgphbnl0aGlu
ZyBhdCBhbGwpLgoKVW5mb3J0dW5hdGVseSwgaWYgSSBqdXN0IGlmZGVmIG91dCBpdHMgaW1wbGVt
ZW50YXRpb24sIGl0IHN0aWxsCmRvZXNuJ3Qgc29sdmUgdGhlIGZzY2FjaGUgZHVwbGljYXRpb24s
IGJ1dCBJIHRoaW5rIHdlCnByb2JhYmx5IG5lZWQgdG8gdGhpbmsgYWJvdXQgYWRkcmVzc2luZyB0
aGlzIC0tIGF0IGJlc3QgaXRzIGEKcGVyZm9ybWFuY2UgaXNzdWUgc2VuZGluZyB1bm5lY2Vzc2Fy
eSBmc3luY3MgLQphdCB3b3JzdCBpdHMgbm90IGRvaW5nIHdoYXRldmVyIGl0IHdhcyBzdXBwb3Nl
ZCB0byBkby4KClRob3VnaHRzPwoKICAgICAtZXJpYwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZz
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
