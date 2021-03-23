Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B930734602B
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Mar 2021 14:52:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lOhSN-0008GA-Fs; Tue, 23 Mar 2021 13:52:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lOhSK-0008G0-Sk
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 13:52:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BH51iSUzyg9KZ7syxnXQS3KRs906Uf9wJkKS6a1BsxQ=; b=Ha6tlj28Qup9loVgV7lcFonXuy
 v3YxhX9pm2H+9g82regZ1ngP/EqvgDuYNGYhThVeah0kK2Wn29faCeZhVuiGIScIotXOSgKjD/FTK
 AecXSVuyYPuvB5rIErS357HHqp7Ec1l1914ISTknbZYjoE9pXwas1+JZWKT09Ed8rPq8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BH51iSUzyg9KZ7syxnXQS3KRs906Uf9wJkKS6a1BsxQ=; b=Nhagjd2iYrC98A93v1iW+ZWt/X
 KOv+a7G0F7egCv/V5lSuvt/dEC9QposVrtifJ7ymkpoNtxyh6JSUdGamhXIfQw9dygexXw6hgui4E
 ajFvNAB8FCnu/46h6J4uSANEgyUF08Ge15C4gZdvbPFfFXGofNRR5ouuoJswuf6JrNH4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lOhSF-001FiH-MC
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 13:52:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BH51iSUzyg9KZ7syxnXQS3KRs906Uf9wJkKS6a1BsxQ=; b=angZPyAg1GkZnw395mQ1H2hSyZ
 8FOuwPttbyu8A1w79GjNbJ2Ieum4ZYQv23Oe3ZuJALNa7bX50chua3/7bvzuk2g4H8GOUuRC6/PQM
 Hq5J51thoR+VeXDXKg67FA4Pp9G5lzX1rTN9EnLPIxEtzEC9ankHhUyPM0E8SxgpjkNXcMH1Yz4Tt
 DDw3C28/GiSWV2VPdA5FotyoAThZeYb6ZrknqHo9PTiqk61ys+mhrvVoFqtF28H8htXQUl2cco69T
 loCYl4Ngxp2H7mit+LkiOZ0FHezZ4vUaS/YRmBAzfLodBDRcJm+pu8DFMhBrYUhI5bzW/qIwD/IRL
 XBhU3HsQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lOhRE-00A7tp-Gh; Tue, 23 Mar 2021 13:51:19 +0000
Date: Tue, 23 Mar 2021 13:51:16 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210323135116.GF1719932@casper.infradead.org>
References: <1885296.1616410586@warthog.procyon.org.uk>
 <20210321105309.GG3420@casper.infradead.org>
 <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
 <2499407.1616505440@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2499407.1616505440@warthog.procyon.org.uk>
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
X-Headers-End: 1lOhSF-001FiH-MC
Subject: Re: [V9fs-developer] [PATCH v4 02/28] mm: Add an unlock function
 for PG_private_2/PG_fscache
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Mar 23, 2021 at 01:17:20PM +0000, David Howells wrote:
> +++ b/fs/afs/write.c
> @@ -846,7 +846,7 @@ vm_fault_t afs_page_mkwrite(struct vm_fault *vmf)
>  	 */
>  #ifdef CONFIG_AFS_FSCACHE
>  	if (PageFsCache(page) &&
> -	    wait_on_page_bit_killable(page, PG_fscache) < 0)
> +	    wait_on_page_fscache_killable(page) < 0)
>  		return VM_FAULT_RETRY;
>  #endif
>  
> @@ -861,7 +861,8 @@ vm_fault_t afs_page_mkwrite(struct vm_fault *vmf)
>  	 * details the portion of the page we need to write back and we might
>  	 * need to redirty the page if there's a problem.
>  	 */
> -	wait_on_page_writeback(page);
> +	if (wait_on_page_writeback_killable(page) < 0)
> +		return VM_FAULT_RETRY | VM_FAULT_LOCKED;

You forgot to unlock the page.  Also, if you're waiting killably here,
do you need to wait before you get the page lock?  Ditto for waiting on
fscache -- do you want to do that before or after you get the page lock?

Also, I never quite understood why you needed to wait for fscache
writes to finish before allowing the page to be dirtied.  Is this a
wait_for_stable_page() kind of situation, where the cache might be
calculating a checksum on it?  Because as far as I can tell, once the
page is dirty in RAM, the contents of the on-disk cache are irrelevant ...
unless they're part of a RAID 5 checksum kind of situation.

I didn't spot any other problems ...


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
