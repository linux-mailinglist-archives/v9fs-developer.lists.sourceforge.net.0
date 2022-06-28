Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F184255E521
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jun 2022 15:56:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o6Bhq-0004z7-Hl; Tue, 28 Jun 2022 13:56:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gustavoars@kernel.org>)
 id 1o6Bhp-0004yr-O3; Tue, 28 Jun 2022 13:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c/hsOFU8NZChn1cDgCBCh+5A62UGWSMcJpUCxlWJ8tk=; b=EFSnBzA6fkSIV+cd7gIJDXGDFk
 R3tawJg2I0803yDBL/Gf/D9gDRJ5HI2VmhrF9ZC+JWmGZs+nd02235u7BNrHpRG/hs7FMacc/MiXh
 lAI28sZyYB5iEvooJyc197AZDnFpSCGNd7cH6X/ccK7cdTuPqeWDu5HyQrs+hMAGOCFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c/hsOFU8NZChn1cDgCBCh+5A62UGWSMcJpUCxlWJ8tk=; b=gx/f62bNInuKlCKfIAMMRKLTIF
 WzJzTNvKm/YSo3nPd+L8tktmgEJr0jRquo8kfknYKVxRtUnYQA52bcItLsjq1+OONo72o3SWGunpy
 076IqfpmU3IYCqrzF6ZNG6svZq7Ftf+Ab3KJjzZEIZz3yEbixg+MKcvx43IrhswfMlxU=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o6Bhm-00H2Ty-NS; Tue, 28 Jun 2022 13:56:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0A731B81B97;
 Tue, 28 Jun 2022 13:56:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C80ADC341CA;
 Tue, 28 Jun 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1656424588;
 bh=b5FsKFMrP1+S6zwgUlKhr8WAIjk2qEr4j/i4jiXKeUI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ipH9xLLON/wfF1+doX0YwzWNurZbGyHCLx43ahE7WR8jLi1R48cI2m2yJAsZCWDQT
 Un4VNsnpjcqqdwdfvJBWhdCzCR6kAmILST6sGe+QmxtUWHpxGj2/l2NK930cX7S1Vb
 ck1tdm9dVL3hHqJ5pPK6X9u94v/kg7IeqTTrypuenoyOXdLstD1jm9a1r2/Mn+hjvK
 A5gIe8GNT4XoGXRtGng12sB0ehpNIhwjOmzNMxwSBDvTu3O5JPGVxOwJ5SG66up68M
 dTuMxAaqVKV5rVpkj9AWHYexDQNYp0rXQRl//EEgGVYdOgnC2OLlmpTSGeWpC665ae
 t2Abf09RRIvCQ==
Date: Tue, 28 Jun 2022 15:56:23 +0200
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20220628135623.GA25163@embeddedor>
References: <20220627180432.GA136081@embeddedor>
 <6bc1e94c-ce1d-a074-7d0c-8dbe6ce22637@iogearbox.net>
 <20220628004052.GM23621@ziepe.ca>
 <20220628005825.GA161566@embeddedor>
 <20220628022129.GA8452@embeddedor>
 <20220628133651.GO23621@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628133651.GO23621@ziepe.ca>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 28, 2022 at 10:36:51AM -0300, Jason Gunthorpe
 wrote: > On Tue, Jun 28, 2022 at 04:21:29AM +0200, Gustavo A. R. Silva wrote:
 > > > > > Though maybe we could just switch off -Wgnu-variable-s [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o6Bhm-00H2Ty-NS
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
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-s390@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 x86@kernel.org, kasan-dev@googlegroups.com, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, v9fs-developer@lists.sourceforge.net,
 Kees Cook <keescook@chromium.org>, intel-gfx@lists.freedesktop.org,
 linux-can@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, virtualization@lists.linux-foundation.org,
 io-uring@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-scsi@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, linux-sctp@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jun 28, 2022 at 10:36:51AM -0300, Jason Gunthorpe wrote:
> On Tue, Jun 28, 2022 at 04:21:29AM +0200, Gustavo A. R. Silva wrote:
> 
> > > > Though maybe we could just switch off -Wgnu-variable-sized-type-not-at-end  during configuration ?
> 
> > We need to think in a different strategy.
> 
> I think we will need to switch off the warning in userspace - this is
> doable for rdma-core.
> 
> On the other hand, if the goal is to enable the array size check
> compiler warning I would suggest focusing only on those structs that
> actually hit that warning in the kernel. IIRC infiniband doesn't
> trigger it because it just pointer casts the flex array to some other
> struct.

Yep; this is actually why I reverted those changes in rdma (before
sending out the patch) when 0-day reported the same problems you pointed
out[1].

Also, that's the strategy I'm following right now with the one-element
array into flex-array member transformations. I'm addressing those cases
in which the trailing array is actually being iterated over, first.

I just added the patch to my -next tree, so it can be build-tested by
other people, and let's see what else is reported this week. :)

--
Gustavo

[1] https://lore.kernel.org/lkml/620ca2a5.NkAEIDEfiYoxE9%2Fu%25lkp@intel.com/

> 
> It isn't actually an array it is a placeholder for a trailing
> structure, so it is never indexed.
> 
> This is also why we hit the warning because the convient way for
> userspace to compose the message is to squash the header and trailer
> structs together in a super struct on the stack, then invoke the
> ioctl.
> 
> Jason 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
