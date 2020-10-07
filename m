Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A332867B6
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Oct 2020 20:48:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQETt-0003Ew-V1; Wed, 07 Oct 2020 18:48:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQETs-0003Ek-58
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Oct 2020 18:48:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fd9c7NnGlZlQsPoX32Y7E0H7T+E2rrcfUhUeaY9NVV4=; b=DmB/XTrHhjnb+tRgrgUDkdW5OS
 3kUQhX1BeuH36/c6nM3yX4GwoU8Ks+dnn7voPhzxSTgVjMBJ9NuKsji2QS4hrURJzUoYR+OWsRHwB
 8ASR8qpF2pRQPdhd6jBvwYN59Kw+hazmjFP6IUElRMiU6+DLmmLpNw9I6SJFuVYJqZJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fd9c7NnGlZlQsPoX32Y7E0H7T+E2rrcfUhUeaY9NVV4=; b=RTrdbBVI6o6wSTWvxtkP7OiaMG
 IZdJE5uKMxmW16JA2L/7uVpv10or8A/rB3OQCKB0+HGkHDhxGUpA+OgW4WaZUuq4vthAD32VvaZth
 B9D6+t6wX9aNKbrBbwxyP1sd8Q34rK7v85WzeZabEVv17lS+0oIxIbOm2mAAff+wCvJU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQETl-002NRW-NE
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Oct 2020 18:48:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Fd9c7NnGlZlQsPoX32Y7E0H7T+E2rrcfUhUeaY9NVV4=; b=ZTQCinhxmjer2B4rWKjYH5Zt45
 jkp9CrbpI7giGfDFPrQO8yS1DANnlbqytLhjgJ6zCKxt4PPjzryYAjRdzaIjwIqteaaegdVmBd3rh
 7l2GniIcTZNK7ZOgUdn8kgeSejFLP89v0sDQhBWa0B+LyRp8CYVQzwzreuLIG8oa5X+HzvwVn+qaD
 NwkEw5W7uMFUQTWmuuNHkHtJjIyJWCRIET5Rf5PfhTb4wBbqN/64JntPZtIkBQ7TPsh4vfIUgqVsx
 7qdChRAM994JJ0YjxFO5EKOdi3LaeniRItdUqu9KH5Q0BRuHkEErw5JKLkv9RZ67yFfYET6J96ebw
 oesKFOSQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQETK-0004O9-Q8; Wed, 07 Oct 2020 18:47:30 +0000
Date: Wed, 7 Oct 2020 19:47:30 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20201007184730.GW20115@casper.infradead.org>
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-2-willy@infradead.org>
 <20201007054849.GA16556@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201007054849.GA16556@infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQETl-002NRW-NE
Subject: Re: [V9fs-developer] [PATCH 1/7] 9P: Cast to loff_t before
 multiplying
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
Cc: lucho@ionkov.net, clm@fb.com, ericvh@gmail.com, linux-btrfs@vger.kernel.org,
 mark@fasheh.com, jlayton@kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, josef@toxicpanda.com, joseph.qi@linux.alibaba.com,
 dsterba@suse.com, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Oct 07, 2020 at 06:48:49AM +0100, Christoph Hellwig wrote:
> > -		.range_start = vma->vm_pgoff * PAGE_SIZE,
> > +		.range_start = (loff_t)vma->vm_pgoff * PAGE_SIZE,
> 
> Given the may places where this issue shows up I think we really need
> a vma_offset or similar helper for it.  Much better than chasing missing
> casts everywhere.

Good point.  I think these patches need to go in to fix the bugs in
the various stable releases, but we should definitely have a helper
for the future.  Also, several of these patches are for non-VMA
pgoff_t.

vma_offset() is a bit weird for me -- vmas have all kinds of offsets.
vma_file_offset() would work or vma_fpos().  I tend to prefer the shorter
function name ;-)

A quick grep shows we probably want a vmf_fpos() too:

arch/powerpc/platforms/cell/spufs/file.c:       unsigned long area, offset = vmf->pgoff << PAGE_SHIFT;
arch/x86/entry/vdso/vma.c:      sym_offset = (long)(vmf->pgoff << PAGE_SHIFT) +
drivers/gpu/drm/gma500/framebuffer.c:   address = vmf->address - (vmf->pgoff << PAGE_SHIFT);
drivers/scsi/cxlflash/ocxl_hw.c:        offset = vmf->pgoff << PAGE_SHIFT;

I'm sure a lot of this will never run on a 32-bit kernel or with a 4GB
file, but it's not good to have bad code around for people to copy from.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
