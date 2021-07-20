Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A09F3CFCCD
	for <lists+v9fs-developer@lfdr.de>; Tue, 20 Jul 2021 16:59:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m5rDp-0003R1-Bx; Tue, 20 Jul 2021 14:59:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1m5rDn-0003QP-MX
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Jul 2021 14:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OQFqvu3mJCVYwxk6gSi7KBFD6PPeLLT34+n6NuOsbE0=; b=k4DihhH8OtTSMA4LCuEILGWxJw
 1pj/WWeGoAMiiSM7vK9d6EjEnREGgPtWtbnBK66wQJt5pRo7lttw/MQfZK8mITaUxhWnM1O03jJer
 O++q3WcRHpk1c/IZao/rBSCFta+IzpIAXdOD7Kcx2z5qhnTbu+uqhlQ5/H3Saty4Cb1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OQFqvu3mJCVYwxk6gSi7KBFD6PPeLLT34+n6NuOsbE0=; b=mi01ul0gkfy52t6IRFNho6W+Xq
 Rn0LYKeMfWJWqtJZTmFKBQ10tiUbS4Rg2jcb71VOTQ1emncZf5DX2HWYtr5+XpA88D2VGK4Q4rYmY
 vjRdKIcCcgo/oTRdgUrgrQVl4+hK4tQCJVV7tKXKFb8Ed2/jckJ47qMvrznlCtQfyMWI=;
Received: from us-smtp-delivery-44.mimecast.com ([205.139.111.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m5rDa-0002Cm-BV
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Jul 2021 14:59:47 +0000
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-vnOWb9V4OI6WAPflNf9Ekw-1; Tue, 20 Jul 2021 10:58:08 -0400
X-MC-Unique: vnOWb9V4OI6WAPflNf9Ekw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ADD7B804143;
 Tue, 20 Jul 2021 14:58:06 +0000 (UTC)
Received: from bahia.lan (ovpn-112-38.ams2.redhat.com [10.36.112.38])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6190D19C44;
 Tue, 20 Jul 2021 14:58:05 +0000 (UTC)
Date: Tue, 20 Jul 2021 16:58:03 +0200
From: Greg Kurz <groug@kaod.org>
To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Message-ID: <20210720165803.19b85cc9@bahia.lan>
In-Reply-To: <20210720163701.78e68147@bahia.lan>
References: <2672527.YDO70zjxOC@silver>
 <cc5323fd-f4b2-5180-80f1-387ce712341e@cs.ucla.edu>
 <YPZs4YGVBy92zAtP@album.bayer.uni.cx> <2830932.JSSdzbctmW@silver>
 <20210720163701.78e68147@bahia.lan>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=groug@kaod.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: kaod.org
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1m5rDa-0002Cm-BV
Subject: Re: [V9fs-developer] tar does not support partial reads
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
Cc: v9fs-developer@lists.sourceforge.net, "Daniel P. =?UTF-8?B?QmVycmFu?=
 =?UTF-8?B?Z8Op?=" <berrange@redhat.com>, bug-tar@gnu.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 20 Jul 2021 16:37:01 +0200
Greg Kurz <groug@kaod.org> wrote:

> On Tue, 20 Jul 2021 13:26:50 +0200
> Christian Schoenebeck <qemu_oss@crudebyte.com> wrote:
> 
> > On Dienstag, 20. Juli 2021 08:27:45 CEST Petr Pisar wrote:
> > > V Mon, Jul 19, 2021 at 03:39:53PM -0500, Paul Eggert napsal(a):
> > > > On 7/19/21 7:54 AM, Christian Schoenebeck wrote:
> > > > > POSIX compliant applications must always expect that read() /
> > > > > write() functions might read/write less bytes than requested
> > > > 
> > > > Although that's true in general, it's not true for regular files. The
> > > > POSIX spec for 'read'
> > > > <https://pubs.opengroup.org/onlinepubs/9699919799/functions/pread.html>
> > > > says, "The value returned may be less than /nbyte/ if the number of
> > > > bytes left in the file is less than /nbyte/, if the /read/() request was
> > > > interrupted by a signal, or if the file is a pipe or FIFO or special
> > > > file and has fewer than /nbyte/ bytes immediately available for reading."
> > > > 
> > > > So, regular files shouldn't get short reads unless there's an EOF or a
> > > > signal.
> > > 
> > > What does gaurantee there is no signal sent to the process?
> > > 
> > > -- Petr
> > 
> > Well, that's one point, but I cannot deny that Paul has a valid argument there 
> > as well. 
> > 
> > However it is common practice to make applications capable to deal with short 
> > reads independent of any prerequisites like specific file types. And like I 
> > said in my previous email, as far as the Linux kernel is concerned, it clearly 
> > sais that applications must be capable of short reads at any time and 
> > independent of a specific file type. BSD is yet a another story though.
> > 
> > And BTW it is actually not QEMU responsible for this particular behaviour, but 
> > rather the stock Linux kernel's 9p client that exposes this behaviour to 
> > applications: https://github.com/torvalds/linux/tree/master/fs/9p
> > 
> 
> I agree that nothing can be done at the QEMU level to fix that : the virtio-9p
> device is simply filling the buffer sized by the client at mount time. It doesn't
> know anything about the count argument passed to read() by the application.
> 
> So I had a look at the 9p client code in linux and we have :
> 
> static ssize_t
> v9fs_file_read_iter(struct kiocb *iocb, struct iov_iter *to)
> {
> 	struct p9_fid *fid = iocb->ki_filp->private_data;
> 	int ret, err = 0;
> 
> 	p9_debug(P9_DEBUG_VFS, "count %zu offset %lld\n",
> 		 iov_iter_count(to), iocb->ki_pos);
> 
> 	if (iocb->ki_filp->f_flags & O_NONBLOCK)
> 		ret = p9_client_read_once(fid, iocb->ki_pos, to, &err);
> 	else
> 		ret = p9_client_read(fid, iocb->ki_pos, to, &err);
> 	if (!ret)
> 		return err;
> 
> 	iocb->ki_pos += ret;
> 	return ret;
> }
> 
> p9_client_read_once() sends a single request and propagates
> short reads to the caller, while p9_client_read() implements
> a full read, i.e. loops on p9_client_read_once() until all the
> requested data was read.
> 
> strace on tar shows that tar is setting the O_NONBLOCK flag:
> 
> openat(AT_FDCWD, "register.h", O_RDONLY|O_NOCTTY|O_NONBLOCK|O_NOFOLLOW|O_CLOEXEC) = 4
> ...
> read(4, "/*\n * Copyright 2006-2018  Thoma"..., 9728) = 4096
> 
> This explains why tag is getting short reads.
> 
> Looking more closely at what POSIX says about O_NONBLOCK:
> 
> When attempting to read a file (other than a pipe or FIFO) that supports non-blocking reads and has no data currently available:
> 
>     - If O_NONBLOCK is set, read() shall return -1 and set errno to [EAGAIN].
> 
>     - If O_NONBLOCK is clear, read() shall block the calling thread until some data becomes available.
> 
>     - The use of the O_NONBLOCK flag has no effect if there is some data available.
> 
> and
> 
> [EAGAIN]
>     The file is neither a pipe, nor a FIFO, nor a socket, the O_NONBLOCK flag is set for the file descriptor, and the thread would be delayed in the read operation.
> 
> The case of the reported issue is thus "O_NONBLOCK is set and some data
> is available", which should lead O_NONBLOCK to be ignored, i.e. switch
> to a full read instead of propagating the short read IIUC.
> 
> Makes sense ?
> 

I was thinking to something like that (not tested yet):

--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -389,8 +389,22 @@ v9fs_file_read_iter(struct kiocb *iocb, struct iov_iter *t>
        p9_debug(P9_DEBUG_VFS, "count %zu offset %lld\n",
                 iov_iter_count(to), iocb->ki_pos);
 
-       if (iocb->ki_filp->f_flags & O_NONBLOCK)
+       if (iocb->ki_filp->f_flags & O_NONBLOCK) {
+               size_t count = iov_iter_count(to);
+
                ret = p9_client_read_once(fid, iocb->ki_pos, to, &err);
+               if (!ret)
+                       return err;
+
+               /*
+                * POSIX requires to ignore O_NONBLOCK if some data is
+                * already available.
+                */
+               if (ret != count) {
+                       iocb->ki_pos += ret;
+                       ret = p9_client_read(fid, iocb->ki_pos, to, &err);
+               }
+       }
        else
                ret = p9_client_read(fid, iocb->ki_pos, to, &err);
        if (!ret)


> Cc'ing Dominique and v9fs-developer for greater audience.
> 
> > Independent of 9p, you may encounter short reads with network mounted file 
> > systems in general as well.
> > 
> > The rationale behind this exposed behaviour is to allow each application to 
> > decide whether they want to consume the partial data currently available and 
> > (potentially) reduce the app's overall execution time, or rather to wait for 
> > the full amount of data to become available by calling read() again.
> > 
> > Was there a specific reason in the past for tar to switch from gnulib's 
> > (short-read capable) full_read() to safe_read() in 1999?
> > 
> > Best regards,
> > Christian Schoenebeck
> > 
> > 
> 
> 
> 
> _______________________________________________
> V9fs-developer mailing list
> V9fs-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/v9fs-developer



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
