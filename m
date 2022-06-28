Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4593755E547
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jun 2022 16:18:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o6C3C-0006vz-0G; Tue, 28 Jun 2022 14:18:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gustavoars@kernel.org>)
 id 1o6C33-0006v7-C1; Tue, 28 Jun 2022 14:18:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h9liMSSgApbUjsLt5jfOEZYU3mzJi6+bkb3BBQ9Dqgg=; b=aZo1eQLchozEI2uour3/k3KddG
 pT07Xb10Wbep2k9Oqb0jZF1HnbWTfPiYT6HGv0nP+wIYf3D4ybGMi7w8+lSA0N0zBUoxnEIgRYkdb
 0aebEVlF/w7mVzcDzRUvFp1hRJyo4tmVrPver2g2eYkcn9vxSvt85OFhUqMRWk57CQO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h9liMSSgApbUjsLt5jfOEZYU3mzJi6+bkb3BBQ9Dqgg=; b=CkfQQ9Q/RO5tEXeJ3MdLE1B+Yt
 /BZLTeTPtE/yVqkhsNULxys7qETvXBWOAVdN5l3pF6+S/9ByN5669YTUFV3fBRmn6XOgXQGcBxVnY
 L1ILF+Fg1d8i6Rwx3MTpBIMeYCG2iBxL5MbF6tJIG36eJJn6H5oGdxpsuEUmh5OalSTE=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o6C31-00H3k9-JD; Tue, 28 Jun 2022 14:18:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 48579B81E3B;
 Tue, 28 Jun 2022 14:18:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B5F2C341C6;
 Tue, 28 Jun 2022 14:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1656425908;
 bh=gNqsfpabtVurh3KrN/HDHkVIuq5HYEGkFj0dq9pxBp0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LKmDxdeiZbNhcfCtRCGKrWsyjlCMGrWNe6JPI6+0Ud4+CdurjXwUmrO+N85g9uStN
 ZMyX+h6jcWDShk2bKHv4I1CwjG76KgIokSJRaPNHE+tAExMRqCJhyYb+qk23PpSnt8
 UZagMIRlLLl0N2746CMcacDFBvR451lE95WpeBq0GW4QDuaouxlRRNIVOVHDclrQ6f
 3R9oBNaPqtGDm4Fzozu0TEhclsuvbNSWpoAarBMEoFPJEcd4AO2pVjb65zJgdF1PVp
 ef3Ggil+1czhmYD/i4aHezmCjBjk3ri61YXhTXJoT9Ami17Y24U2vq1uockAAm5n3K
 LL1PsE5NQ0Syg==
Date: Tue, 28 Jun 2022 16:18:23 +0200
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <20220628141823.GB25163@embeddedor>
References: <20220627180432.GA136081@embeddedor>
 <20220627125343.44e24c41@hermes.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220627125343.44e24c41@hermes.local>
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Jun 27, 2022 at 12:53:43PM -0700, Stephen Hemminger
    wrote: > Thanks this fixes warning with gcc-12 in iproute2. > In function
    ‘xfrm_algo_parse’, > inlined from ‘xfrm_state_modify.constpr [...] 
 
 Content analysis details:   (-5.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o6C31-00H3k9-JD
Subject: Re: [V9fs-developer] [PATCH][next] treewide: uapi: Replace
 zero-length arrays with flexible-array members
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
Cc: nvdimm@lists.linux.dev, alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, x86@kernel.org,
 kasan-dev@googlegroups.com, lvs-devel@vger.kernel.org, coreteam@netfilter.org,
 v9fs-developer@lists.sourceforge.net, Kees Cook <keescook@chromium.org>,
 intel-gfx@lists.freedesktop.org, linux-can@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 virtualization@lists.linux-foundation.org, io-uring@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-perf-users@vger.kernel.org,
 linux-sctp@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCBKdW4gMjcsIDIwMjIgYXQgMTI6NTM6NDNQTSAtMDcwMCwgU3RlcGhlbiBIZW1taW5n
ZXIgd3JvdGU6Cj4gVGhhbmtzIHRoaXMgZml4ZXMgd2FybmluZyB3aXRoIGdjYy0xMiBpbiBpcHJv
dXRlMi4KPiBJbiBmdW5jdGlvbiDigJh4ZnJtX2FsZ29fcGFyc2XigJksCj4gICAgIGlubGluZWQg
ZnJvbSDigJh4ZnJtX3N0YXRlX21vZGlmeS5jb25zdHByb3DigJkgYXQgeGZybV9zdGF0ZS5jOjU3
Mzo1Ogo+IHhmcm1fc3RhdGUuYzoxNjI6MzI6IHdhcm5pbmc6IHdyaXRpbmcgMSBieXRlIGludG8g
YSByZWdpb24gb2Ygc2l6ZSAwIFstV3N0cmluZ29wLW92ZXJmbG93PV0KPiAgIDE2MiB8ICAgICAg
ICAgICAgICAgICAgICAgICAgIGJ1ZltqXSA9IHZhbDsKPiAgICAgICB8ICAgICAgICAgICAgICAg
ICAgICAgICAgIH5+fn5+fn5efn5+fgoKR3JlYXQhIFRoaXMgZ2l2ZXMgbWUgaG9wZS4gOikKClRo
YW5rcwotLQpHdXN0YXZvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby92OWZzLWRldmVsb3Blcgo=
