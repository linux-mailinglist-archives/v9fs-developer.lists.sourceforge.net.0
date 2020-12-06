Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BF22D072B
	for <lists+v9fs-developer@lfdr.de>; Sun,  6 Dec 2020 21:53:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1km12V-0006Hd-92; Sun, 06 Dec 2020 20:53:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1km12U-0006HW-BW
 for v9fs-developer@lists.sourceforge.net; Sun, 06 Dec 2020 20:53:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JjaOew6og4Ma3TgZ9+cKOV5nQwdt07PsMK9VaipXVXo=; b=lL4PVlMbKUnmsCpPOmfhw/F2TH
 jfrUwzu5+oQmJAaAPq1Ucq/79P4q3jP/zei8YsaakDdKcbereXXmpxZeVL/mgoakJfDl381/zGviT
 KWmcgDZd+k5xNg/5D6UbtEEBfn8J2zKJTu5FLuZEXN5vzPHQdhMuOf5fhz/Bmwcaqcss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JjaOew6og4Ma3TgZ9+cKOV5nQwdt07PsMK9VaipXVXo=; b=immLe1Gegz/WfDPT10OZ34BR0A
 mkma8H5uS75yvy4cbra4BtIUPel0WRvTgiJ7pa36Nn6J/lAv1XVpB7yqF72GpbZzMO8smyzp9Vpsg
 gxbEMW8ewfvzndMRbbrZLVynhFDhoRXILp2CZSV0K97scFZ8xby1/cOjNTnB0kk+na1s=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1km12N-001615-Gm
 for v9fs-developer@lists.sourceforge.net; Sun, 06 Dec 2020 20:53:50 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 8F6EAC009; Sun,  6 Dec 2020 21:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1607288013; bh=JjaOew6og4Ma3TgZ9+cKOV5nQwdt07PsMK9VaipXVXo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kw6fVZE2HDNIfSU4yQYDOZlyGHncJmSp4+Jf44efQ5j7AT+fE6r0aQVT1r2BhqUz6
 LZQ/u8PAEbDqZmCHgAspLQz3CpX0rk/MaK3/+/O9xGR18Mno8u9JUthL3u9hmA1uZZ
 p8JfHQ/U32MAbrXSv3lycm2ZVNDUwAtZ+zL1jepJJugl15k+idutduhvMHAzfgMbZT
 ihzPwkWRiJsLja4h9QVgG4Y8OIprN+oXUqqjTttowPdV0u+6Kps3dLKvsWhSkZ3hDt
 IMP+MG98XZtfupvzwulKtCCkw4eJhnbWgHKDuXoF7gXGZxXC/LwMfEsZ2oWoyWmVn9
 ryiZIMcKj6Wng==
Date: Sun, 6 Dec 2020 21:53:18 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Chengguang Xu <cgxu519@mykernel.net>
Message-ID: <20201206205318.GA25257@nautica>
References: <20201205130904.518104-1-cgxu519@mykernel.net>
 <20201206091618.GA22629@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201206091618.GA22629@nautica>
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
X-Headers-End: 1km12N-001615-Gm
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet wrote on Sun, Dec 06, 2020:
> Chengguang Xu wrote on Sat, Dec 05, 2020:
> > If vma is shared and the file was opened for writing,
> > we should also create writeback fid because vma may be
> > mprotected writable even if now readonly.
> 
> Hm, I guess it makes sense.

I had a second look, and generic_file_readonly_mmap uses vma's
`vma->vm_flags & VM_MAYWRITE` instead (together with VM_SHARED),
while mapping_writably_mapped ultimately basically only seems to
validate that the mapping is shared from a look at mapping_map_writable
callers? It's not very clear to me.

OTOH, VM_MAYWRITE is set anytime we have a shared map where file has
been opened read-write, which seems to be what you want with regards to
protecting from mprotect calls.

How about simply changing check from WRITE to MAYWRITE?

 	v9inode = V9FS_I(inode);
 	mutex_lock(&v9inode->v_mutex);
 	if (!v9inode->writeback_fid &&
 	    (vma->vm_flags & VM_SHARED) &&
-	    (vma->vm_flags & VM_WRITE)) {
+	    (vma->vm_flags & VM_MAYWRITE)) {
 		/*
 		 * clone a fid and add it to writeback_fid
 		 * we do it during mmap instead of
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
