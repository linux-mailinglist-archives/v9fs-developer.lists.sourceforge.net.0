Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D544726E869
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Sep 2020 00:31:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kJ2RV-0005tW-5l; Thu, 17 Sep 2020 22:31:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kJ2RT-0005tH-8a
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 22:31:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ubJtVk08jzU3J8YPE2lJLRaYSsnYYHZKYdrpjiW6yU4=; b=XMcIucagRINZ4iSqB13/xl+2sf
 FWirg/J/LT96YBwmzsZc3EtGQY9c3d3HRdxU3yPXLUzX8gPi2Gz6WhKWPckye5rWzSrSwlK5LYy19
 scMSAy6i+uea0AqhZEQfXbmHMJTvtRjQ74Bdhs3SjI/DdD7f2jqiMZPyK2IyAbG7Q9+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ubJtVk08jzU3J8YPE2lJLRaYSsnYYHZKYdrpjiW6yU4=; b=QNLCh3CJZrkFP9SbIKn/6j8Rli
 FAeYXxWg04BFKadOkoUUO8TnkdaMYy85y8my+8ecftlpAXpIPurH67M4e3J268c4y2YNMbKUTKdYr
 d7h5qICA8ieEkCXlB64eeHYiDo2PsgFmBCTEfvSZQuddTLCqdy+8fOBdHEvK8LnNXAaA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ2RJ-00DYNl-P9
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 22:31:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ubJtVk08jzU3J8YPE2lJLRaYSsnYYHZKYdrpjiW6yU4=; b=ICDUnkL72CW96WATA+3jxM5vWb
 6oYT1enLOn3O4Ag28G+e5sc4FqNNUy2Ikgxnpx/LhvjaiBKvrZWAbYzkaYIkc/NjzWtAUaMsW8kTk
 Yue6qkZhlQb9iYXfoXv9v9sKs+He0hXzIgOzvhGW01abuVdlCsLu5ep5X71lnTxbrbq9ljbXhS2jN
 fZS2WZ9OlwwNROzSqPlT2fhEu7ifLnDLSIWkeEha9ouk+MkogWQ6Zy5o5FAh5nDVbZ7+o9C1tZcrW
 sIbCrABL5nerc0GAMK3sNquTExIDELUO/f3nddMDsbHnosACnqilx6WvwEtmQbtPzdCn8oS1kPCcM
 eCOrz5Qw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kJ1zf-0003eq-8d; Thu, 17 Sep 2020 22:03:07 +0000
Date: Thu, 17 Sep 2020 23:03:07 +0100
From: Matthew Wilcox <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Message-ID: <20200917220307.GX5449@casper.infradead.org>
References: <20200917151050.5363-1-willy@infradead.org>
 <20200917151050.5363-2-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917151050.5363-2-willy@infradead.org>
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
X-Headers-End: 1kJ2RJ-00DYNl-P9
Subject: Re: [V9fs-developer] [PATCH 01/13] mm: Add AOP_UPDATED_PAGE return
 value
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
Cc: linux-cifs@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 17, 2020 at 04:10:38PM +0100, Matthew Wilcox (Oracle) wrote:
> +++ b/mm/filemap.c
> @@ -2254,8 +2254,10 @@ ssize_t generic_file_buffered_read(struct kiocb *iocb,
>  		 * PG_error will be set again if readpage fails.
>  		 */
>  		ClearPageError(page);
> -		/* Start the actual read. The read will unlock the page. */
> +		/* Start the actual read. The read may unlock the page. */
>  		error = mapping->a_ops->readpage(filp, page);
> +		if (error == AOP_UPDATED_PAGE)
> +			goto page_ok;
>  
>  		if (unlikely(error)) {
>  			if (error == AOP_TRUNCATED_PAGE) {

If anybody wants to actually test this, this hunk is wrong.

+++ b/mm/filemap.c
@@ -2256,8 +2256,11 @@ ssize_t generic_file_buffered_read(struct kiocb *iocb,
                ClearPageError(page);
                /* Start the actual read. The read may unlock the page. */
                error = mapping->a_ops->readpage(filp, page);
-               if (error == AOP_UPDATED_PAGE)
+               if (error == AOP_UPDATED_PAGE) {
+                       unlock_page(page);
+                       error = 0;
                        goto page_ok;
+               }
 
                if (unlikely(error)) {
                        if (error == AOP_TRUNCATED_PAGE) {

> @@ -2619,7 +2621,7 @@ vm_fault_t filemap_fault(struct vm_fault *vmf)
>  	 */
>  	if (unlikely(!PageUptodate(page)))
>  		goto page_not_uptodate;
> -
> +page_ok:
>  	/*
>  	 * We've made it this far and we had to drop our mmap_lock, now is the
>  	 * time to return to the upper layer and have it re-find the vma and
> @@ -2654,6 +2656,8 @@ vm_fault_t filemap_fault(struct vm_fault *vmf)
>  	ClearPageError(page);
>  	fpin = maybe_unlock_mmap_for_io(vmf, fpin);
>  	error = mapping->a_ops->readpage(file, page);
> +	if (error == AOP_UPDATED_PAGE)
> +		goto page_ok;
>  	if (!error) {
>  		wait_on_page_locked(page);
>  		if (!PageUptodate(page))
> @@ -2867,6 +2871,10 @@ static struct page *do_read_cache_page(struct address_space *mapping,
>  			err = filler(data, page);
>  		else
>  			err = mapping->a_ops->readpage(data, page);
> +		if (err == AOP_UPDATED_PAGE) {
> +			unlock_page(page);
> +			goto out;
> +		}
>  
>  		if (err < 0) {
>  			put_page(page);
> -- 
> 2.28.0
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
