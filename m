Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C21F2D0EE7
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Dec 2020 12:24:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kmEdC-0001nO-Ar; Mon, 07 Dec 2020 11:24:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kmEdB-0001nH-6J
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Dec 2020 11:24:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7LUikZ39N6LqCKnKwHLHNUsdYXrS5aPD8YDkqwV/5yo=; b=ZZMdVzyCIM2YuxdbwlY2TxhIZ7
 KiwMVgyVm8fSffB9oizfJfjtmpSL1OHU/XVXemiv6xFEEHw0lrS5RgGGnI8angdBQAXGy1SVkm4H0
 0PTbXXC00NsGkD0pDLPRHsnMFXEXwV2Q8LSCm4aSY0CTYOSIntEhtAyfhObmCGWriMBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7LUikZ39N6LqCKnKwHLHNUsdYXrS5aPD8YDkqwV/5yo=; b=QQIxCZFUHH12QmySv3uJM8S3NY
 kB3vwPSFeEGgQonywwzI9JP1WPiWxYOp8cuppH6i0giJWHOMiRzyp/zIgzepZfGX5sNu5gOIa/dRw
 S3zJ2FhuPXtzBFjQYGp2MZYl8pUkzGidBTA/EGmhAkTtn729T7AJEXrq17DcdTOYFDmI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kmEd5-005G9z-Us
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Dec 2020 11:24:37 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 33D1FC009; Mon,  7 Dec 2020 12:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1607340265; bh=7LUikZ39N6LqCKnKwHLHNUsdYXrS5aPD8YDkqwV/5yo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xAns74XBbg3lA0hyCaUHKer79FiO+W0drHUGED0LfyDFk348Yrop0Pp8IQhTJB53x
 /x1nHm5FGYyDxkHwP7VshytZCs9HfhwFo/uUrNcrn1jlzvR0p3/uUPpW16wZ2bxo0r
 h8ql+uneMkPNnpNMZLcjGCkBvGnf12Eijtm1cPovvQrzeVPTGWiAeoV+xYLAxwHz8M
 PVQAHcQmFF2Ccc8b48ufDBqslAIaxkmfhDxa4OOMAf/4+fksJJY8GbkzObw5WpRFWa
 t3SgSLAE/KHiusCe0TWl6Fy02JEHHR8lOyKtPSFSPuyVg4Dz8lg+eQiIuwhZ6rph6h
 eo2+psgXL6blQ==
Date: Mon, 7 Dec 2020 12:24:10 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Chengguang Xu <cgxu519@mykernel.net>
Message-ID: <20201207112410.GA26628@nautica>
References: <20201205130904.518104-1-cgxu519@mykernel.net>
 <20201206091618.GA22629@nautica> <20201206205318.GA25257@nautica>
 <1763bcb5b8e.da1e98e51195.9022463261101254548@mykernel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1763bcb5b8e.da1e98e51195.9022463261101254548@mykernel.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kmEd5-005G9z-Us
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: create writeback fid on shared
 mmap
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
Cc: ericvh <ericvh@gmail.com>, lucho <lucho@ionkov.net>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 v9fs-developer <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Chengguang Xu wrote on Mon, Dec 07, 2020:
>  > , VM_MAYWRITE is set anytime we have a shared map where file has
>  > been opened read-write, which seems to be what you want with regards to
>  > protecting from mprotect calls.
>  > 
>  > How about simply changing check from WRITE to MAYWRITE?
> 
> It would be fine and based on the code in do_mmap(), it  seems we even don't
> need extra check here.  The condition (vma->vm_flags & VM_SHARED) will be enough.
> Am I missing something?

VM_MAYWRITE is unset if the file hasn't been open for writing (in which
case the mapping can't be mprotect()ed to writable map), so checking it
is a bit more efficient.

Anyway I'd like to obsolete the writeback fid uses now that fids have a
refcount (this usecase can be a simple refcount increase), in which case
efficiency is less of a problem, but we're not there yet...

Please resend with MAYWRITE if you want authorship and I'll try to take
some time to test incl. the mprotect usecase.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
