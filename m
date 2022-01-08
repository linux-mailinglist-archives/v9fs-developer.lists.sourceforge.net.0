Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A403A488217
	for <lists+v9fs-developer@lfdr.de>; Sat,  8 Jan 2022 08:18:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n65zY-0004UI-6T; Sat, 08 Jan 2022 07:18:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1n65zV-0004UB-Ib
 for v9fs-developer@lists.sourceforge.net; Sat, 08 Jan 2022 07:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KSMh/bpBH4Uy4k4tKFX+8O00P4Uf43q6ePBN9GKywck=; b=UrkF6sqwf3NmnQmm0ci0NhDPBE
 pIsYP6BRH/S3j1aQHVRiIH8h394u1xTSCJ6Gjcc/0C34J97ONAtcT8VOvjP7D/YPCnGYoxnrLchkA
 J/0w834UefWXv0Bkt+a298a+fBohTlOaSpMSpr2WDKo9tV47J5UXrZitNg+xFoEJWwbY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KSMh/bpBH4Uy4k4tKFX+8O00P4Uf43q6ePBN9GKywck=; b=MLRpMSfHnVe3MYYTRwlFSjdd0v
 bratESMiOn68qDepQfmutKRsG1FdX8GazvgWGWr8qnKLX58hRapuM8dt/uAY4BxqUeKFmbEOkBpeA
 gZiTMlXtZVhzoe2mS+9f1gBI2L8Pi6whH4bIw0OuP9ulZZ45MkZyqCu+TMLCf9/qPg+U=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n65zQ-0002NE-Gs
 for v9fs-developer@lists.sourceforge.net; Sat, 08 Jan 2022 07:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=KSMh/bpBH4Uy4k4tKFX+8O00P4Uf43q6ePBN9GKywck=; b=WiPnWas5oTaP9guznINp2fF7Mn
 xzeGATWy/kuuFgSPlHg0Z8p5TIkf0mgvMeVP/tuV5jx+0s7gV9k4Z6oSwJi3CV16ub/PpWYkJdZYX
 q4MlD2+tI2XgKSLzq22nOThJEogSiORw9rPQJ+jkYM2tUxoHCrOJ2YGItwntGNPqhSv48p6l3l814
 dsFW43m+yQ8TTq1QC27ZoJZ3Jna/BRJNtdsQCUlGXQvrqcSMm6K6JZz10DYCatuBjNOg0u5fY4VuN
 Y5Pex2G5YuW3GH6T0rTtO9g6DtAvcx8KdFRcNJjZfO5NnnTZ3Wo34SXMHqK/Kc2zDv56IQgvzE3PB
 LgjbtHfw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1n65yn-000Uuc-Lb; Sat, 08 Jan 2022 07:17:33 +0000
Date: Sat, 8 Jan 2022 07:17:33 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Amir Goldstein <amir73il@gmail.com>
Message-ID: <Ydk6jWmFH6TZLPZq@casper.infradead.org>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021541207.640689.564689725898537127.stgit@warthog.procyon.org.uk>
 <CAOQ4uxjEcvffv=rNXS-r+NLz+=6yk4abRuX_AMq9v-M4nf_PtA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOQ4uxjEcvffv=rNXS-r+NLz+=6yk4abRuX_AMq9v-M4nf_PtA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jan 08, 2022 at 09:08:57AM +0200,
 Amir Goldstein wrote:
 > > +#define S_KERNEL_FILE (1 << 17) /* File is in use by the kernel (eg.
 fs/cachefiles) */ > > Trying to brand this flag as a generic " [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n65zQ-0002NE-Gs
Subject: Re: [V9fs-developer] [PATCH v4 38/68] vfs,
 cachefiles: Mark a backing file in use with an inode flag
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
Cc: Steve French <sfrench@samba.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-afs@lists.infradead.org, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel <ceph-devel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jan 08, 2022 at 09:08:57AM +0200, Amir Goldstein wrote:
> > +#define S_KERNEL_FILE  (1 << 17) /* File is in use by the kernel (eg. fs/cachefiles) */
> 
> Trying to brand this flag as a generic "in use by kernel" is misleading.
> Modules other than cachefiles cannot set/clear this flag, because then
> cachefiles won't know that it is allowed to set/clear the flag.

Huh?  If some other kernel module sets it, cachefiles will try to set it,
see it's already set, and fail.  Presumably cachefiles does not go round
randomly "unusing" files that it has not previously started using.

I mean, yes, obviously, it's a kernel module, it can set and clear
whatever flags it likes on any inode in the system, but conceptually,
it's an advisory whole-file lock.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
