Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CC16CC20D
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 16:28:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phAJN-0005XU-67;
	Tue, 28 Mar 2023 14:28:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1phAJM-0005XO-GX
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 14:28:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lNC4U2pxIqw7OfhmEWv4yVLXtgeYnb8fzcDWECWbK5U=; b=UIuiH/JcgKxtP3bLsJVEFgU1ht
 KPobR9eQy5PwZnjsk8WZM6BWk5xDyekJ+ZAf8HPJoCl7xDXnMxvKR+w246jLK3yj5yD4KCp2G8lXJ
 0lVmzCltx7UEqUBjRtenMVRW+RM2aUIch3aeVI/YW45uqEvcXZ/Zz+xGBXfBpsUQB234=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lNC4U2pxIqw7OfhmEWv4yVLXtgeYnb8fzcDWECWbK5U=; b=E1BWEoSZnzMRPnl0uJNHYFyigr
 ZxafzX84pd1MoTrx0WC+wbTr7T/izCLjHluc5cfBGB9EctHsT5coo6LhKfXRQHCAhKgq7bXpB2WB7
 3rrgHf7e7EPxm7OUaHlz7YeSDqWwrT0s+/rlLoxNi4wXVYep99a+HwaoaZ8xhuotNUxM=;
Received: from mail-yb1-f169.google.com ([209.85.219.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1phAJL-0001ez-2P for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 14:28:31 +0000
Received: by mail-yb1-f169.google.com with SMTP id i6so15296613ybu.8
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Mar 2023 07:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680013705;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lNC4U2pxIqw7OfhmEWv4yVLXtgeYnb8fzcDWECWbK5U=;
 b=e9nOGlYe55ZGkGujdZS/lndA9CplzKkHCawpR0sMsfis72wuB33MDJS52AsbeRcxmF
 8pw84rI/Bt5ZfUOqcmw3ZSaPGBBf3YBWKrF4FoSibVlViabbvDJagFmNi7xms0Jee8AE
 LjRA65l2Qn33umlVU2Wkscdx6I0EyUvKdN5Ot5xMxwXWfXwfggb+EW6ZYPiCXlFSnoZe
 brEPEqGrvrFtVTb73gG/zAU+YVxsSm9xWpyIMvIuXMEl7G/7bVEWC2+2SrBcSBCXG0rT
 xjAFlJFcrX4eUcxZREx3elUxqQutuQoDe7MYh7LCIQmYOdqXLBfxm2DzDGqXREf27k0C
 cHow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680013705;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lNC4U2pxIqw7OfhmEWv4yVLXtgeYnb8fzcDWECWbK5U=;
 b=orcS+h/mpGsf9b+pqWmsJwTpee1+qnPdomnT+TsE3Of3IN7s0zT2vxGS/erxlrh/ch
 3GKv3ynlMiCELkiBebkLd5s2oj0dUu0h4qpOEMHg29dyOxmTvSB+KO5Ygbtghiv0MpNx
 aJcJipZDI6Rr76s7VxAOXLATcrGHD3/mLxtHYxaME2HSOhVaH/14+VLn9zLmJmtM0/cc
 7ZwNBlRWGcyAM8BK3y7L8W4UU+29gLi/tiuDajQxHoyn89mXVp7HgT12oZPoAk/tmnXW
 1I3B5KK0rMjwYGtTv7q0qoPuIq5708e1W4kUaHlizd+iJYyAMek1MT5sK3rUzY+HNN6T
 P+mg==
X-Gm-Message-State: AAQBX9cprbBlW+bLIRYgNaxU9izW1uQ4E8MNpeQodMrM534YcDSO/K8q
 D31pC/tF7cMJ+E026GRPr1i3zi48I9r9ZzqOoO4=
X-Google-Smtp-Source: AKy350Zwn8ANrGTAWtdBWtqKWGyBIlkvisE3ufoDT2x2/2BvAiiKHlEk0RL7cbzvvSymfdZb/jJXcBn+NeN+n8FKNls=
X-Received: by 2002:a05:6902:1501:b0:b6d:80ab:8bb6 with SMTP id
 q1-20020a056902150100b00b6d80ab8bb6mr10240285ybu.1.1680013705070; Tue, 28 Mar
 2023 07:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <ZCI+7Wg5OclSlE8c@bombadil.infradead.org>
 <ZCJGjuOYR6nGXiAw@codewreck.org>
 <ZCJxOgV92yPc3zu1@bombadil.infradead.org>
In-Reply-To: <ZCJxOgV92yPc3zu1@bombadil.infradead.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Tue, 28 Mar 2023 09:28:14 -0500
Message-ID: <CAFkjPTmM_hTstagB8sx6jEpz0fzh3AXfYT06FAoOjSF7bPTV-A@mail.gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  So,
 I'm still mucking about - but I actually have a threadripper
 and an Asahi-M1 here that I'm dedicating to regression testing but haven't
 quite finished setting it up. If you look in https://github. [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phAJL-0001ez-2P
Subject: Re: [V9fs-developer] 9p regression linux-next next-20230327
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
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 Josef Bacik <josef@toxicpanda.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

U28sIEknbSBzdGlsbCBtdWNraW5nIGFib3V0IC0gYnV0IEkgYWN0dWFsbHkgaGF2ZSBhIHRocmVh
ZHJpcHBlciBhbmQKYW4gQXNhaGktTTEgaGVyZSB0aGF0IEknbSBkZWRpY2F0aW5nIHRvIHJlZ3Jl
c3Npb24gdGVzdGluZyBidXQgaGF2ZW4ndApxdWl0ZSBmaW5pc2hlZCBzZXR0aW5nIGl0IHVwLiAg
SWYgeW91IGxvb2sgaW4KaHR0cHM6Ly9naXRodWIuY29tL3Y5ZnMvdGVzdCB5b3UgY2FuIHNlZSB0
aGUgc2ltcGxlIHRlc3RzIEknbSBydW5uaW5nCihkYmVuY2gsIGZzeCwgcG9zdG1hcmsgYmFzaWNh
bGx5KSB3aXRoIGRpZmZlcmVudCBjb25maWdzIHNwZWNpZmllZCBieQpmc3RhYnMgLS0gSSdtIHVz
aW5nIGNwdSBpbiBteSBhdXRvbWF0aW9uICh0aGUgZG9ja2VyIGNvbnRhaW5lciB3aGljaAppdCBp
cyBzdXBwb3NlZCB0byBydW4gaW4gaXMgaW4gaHR0cHM6Ly9naXRodWIuY29tL3Y5ZnMvZG9ja2Vy
KS4gIEkKc3RhcnRlZCBwbGF5aW5nIHdpdGggZ2l0aHViIGFjdGlvbnMsIGJ1dCBxdWlja2x5IHJl
YWxpemVkIGl0IHdhcyBnb2luZwp0byBiZSBhbiBuaWdodG1hcmUgdG8gbWFuYWdlIHRoZSAuZ2l0
aHViL3dvcmtmbG93IGVtYmVkZGVkIGluIGxpbnV4CnRyZWVzIHNvIGFtIHJldGhpbmtpbmcgdGhh
dCBzdHJhdGVneS4KCkJ1dCwgaW4gb3JkZXIgdG8gbW92ZSBwYXN0IHRoZSBzaW1wbGUgdmlydGlv
IHRlc3RzIGFuZCBpbmNvcnBvcmF0ZSB0aGUKbmV0d29yayBzZXJ2ZXJzLCBJJ20gZ29pbmcgdG8g
cHJvYmFibHkgcmV3b3JrIHRoZSBwZXJmb3JtYW5jZQpmcmFtZXdvcmsgSSBoYXZlIGluIGh0dHBz
Oi8vZ2l0aHViLmNvbS92OWZzL25vdGVib29rIHRvIGJlIGFibGUgdG8KY292ZXIgYWxsIHRoZSBk
aWZmZXJlbnQgY29uZmlncyBhbmQgb3B0aW9ucyBpbiB0aGUgdGVzdHMgYW5kIHRoZW4gaGF2ZQpz
b21lIHNob3J0Y3V0cyBmb3Igc21va2UgdGVzdCwgc2hvcnQgdGVzdHMsIGFuZCBsb25nIHJlZ3Jl
c3Npb24gdGVzdHMuClRoZW4gSSBjYW4gbG9vayBhdCBicm9hZGVuaW5nIHRoZSB0ZXN0IHByb2dy
YW1zIGFuZCBhbHNvIGxvb2sgYXQKYXV0b21hdGluZyBuaWdodGx5IHJlZ3Jlc3Npb25zIChpbmNs
dWRpbmcgcGVyZm9ybWFuY2UgdHJhY2tpbmcpCmFnYWluc3QgbGludXgtbmV4dCBhbmQgbWFpbmxp
bmUuCgpJdCBoYXMgdGFrZW4gbWUgbG9uZ2VyIHRoYW4gSSB3b3VsZCBoYXZlIGxpa2VkLCBidXQg
SSdtIGdldHRpbmcgY2xvc2VyCi0tIGFuZCBpIGhhdmUgdG8gbG9vayBhdCBrZGV2b3BzIGFzIHdl
bGwhCgogICAgICAgIC1lcmljCgpPbiBNb24sIE1hciAyNywgMjAyMyBhdCAxMTo0NuKAr1BNIEx1
aXMgQ2hhbWJlcmxhaW4gPG1jZ3JvZkBrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWFy
IDI4LCAyMDIzIGF0IDEwOjQ0OjQ2QU0gKzA5MDAsIGFzbWFkZXVzQGNvZGV3cmVjay5vcmcgd3Jv
dGU6Cj4gPiBJJ20gZ29pbmcgdG8gcmFudCBhIGJpdCBoZXJlLCBidXQgbXkgbWFpbiBwcm9ibGVt
IHdpdGggdGVzdGluZyBpcyB0aGF0Cj4gPiB0aGVyZSBhcmUgcGxlbnR5IG9mIHRvb2xzLCBidXQg
SSBoYXZlIHZlcnkgbGl0dGxlIGNvbXB1dGUgYXZhaWxhYmxlIGZvcgo+ID4gdGhpcyAoanVzdCBh
IHNtYWxsIG1hY2hpbmUgYXQgaG9tZSB0aGF0J3MgZ2V0dGluZyBjbG9zZSB0byAxMCB5ZWFycwo+
ID4gb2xkLi4uKSwgYXMgdGhpcyBpcyByZWFsbHkgYSBmcmVlIHRpbWUgYWN0aXZpdHkgd2hpY2gg
aXNuJ3QgZ2V0dGluZyBhbnkKPiA+IGZ1bmRpbmcuCj4gPiBbcmVhZDogaGFwcHkgdG8gc3BlbmQg
YSBiaXQgbW9yZSB0aW1lIG9uIDlwIGlmIGl0J3MgZ2V0dGluZyBwYWlkIDpQXQo+Cj4gSSB0aGlu
ayB3ZSBjYW4gbGlrZWx5IGhlbHAgd2l0aCBhdCBsZWFzdCBoYXJkd2FyZSBhY2Nlc3MgdG8gaGVs
cCB0ZXN0IDlwIHdlbGwuCj4gSWYgeW91J3JlIGludGVyZXN0ZWQgbGV0IG1lIGtub3chCj4KPiAg
IEx1aXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
